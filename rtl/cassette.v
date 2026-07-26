// cassette.v - RX-78 tape playback
//
// The RX-78 has no FSK demodulator. Port $f0 bit 0 is a plain comparator on the
// cassette input -- Takeda's document calls it "signal input/output", and both
// MAME and eRX-78 model it as a threshold on the raw audio. The monitor ROM does
// the demodulation in software: it polls $f0 in a tight loop and times the
// zero-crossings, roughly 55,000 reads per second of tape.
//
// So this module streams the *waveform*, one bit per sample. That is the whole
// difference from a machine like the Basic Master Jr., whose hardware
// demodulates and whose core can therefore store a few KB of demodulated bytes
// and shift out a serial line. Here the tape image is the audio, which is why it
// lives in SDRAM: the preserved dumps are 2.3-3.6 MB each.
//
// The image is a plain RIFF/WAVE file, mounted as-is with no conversion step.
// Rate is read from the header rather than assumed, because it is not constant
// across the archive: Yellow Cab is 44100 Hz but Graphics Mathematics is 22050.
// 8- and 16-bit PCM and any channel count are handled; the first channel's most
// significant byte is what gets thresholded.
//
// There is no motor control port on this machine. eRX-78 solves that by
// inferring the transport from port activity, and that is what happens here:
// any $f0 access starts the tape, and a second with no access stops it. The
// position is kept across stops, so the ROM's inter-block pauses resume where
// they left off.

module cassette (
  input             clk_sys,
  input             reset,
  // clk_sys in Hz. Used as the phase-accumulator modulus for sample timing and
  // as the one-second motor timeout, so it must be the real frequency.
  input      [31:0] clk_rate,

  input             tape_access,   // pulses on any $f0 access
  input             tape_rewind,   // new image mounted, or OSD rewind
  input      [24:0] image_size,    // bytes in SDRAM; 0 = nothing mounted

  // SDRAM, byte addressed. dout[7:0] is the byte at addr.
  output reg [24:0] sdram_addr,
  input      [15:0] sdram_data,
  output reg        sdram_rd,
  input             sdram_ready,

  output reg        tape_bit,      // 1 = above threshold -> rx78 tape_in
  output reg        motor,
  output      [3:0] status,
  output reg [31:0] play_pos,      // samples played, for the OSD
  output reg [31:0] play_len
);

  localparam
    S_IDLE   = 4'd0,   // nothing mounted
    S_HDR    = 4'd1,   // read a header byte
    S_HDR_W  = 4'd2,
    S_HDR_R  = 4'd3,
    S_PARSE  = 4'd4,   // consume that byte
    S_READY  = 4'd5,   // header understood, waiting for the motor
    S_FETCH  = 4'd6,   // request the next sample byte
    S_WAIT   = 4'd7,
    S_RECV   = 4'd8,
    S_PLAY   = 4'd9,   // hold the sample for one sample period
    S_END    = 4'd10,  // past the end of the data chunk
    S_BAD    = 4'd11;  // not a WAV we can play

  reg [3:0]  state;
  assign status = state;

  // ---- header parser -------------------------------------------------------
  // Walks the chunk list rather than assuming a 44-byte header. Only `fmt ` and
  // `data` are interesting; everything else is skipped by its length.
  localparam
    P_RIFF = 3'd0,     // "RIFF" + size + "WAVE"
    P_CKID = 3'd1,     // chunk id + size
    P_FMT  = 3'd2,     // inside fmt
    P_SKIP = 3'd3,     // skipping an uninteresting chunk
    P_DONE = 3'd4;

  reg  [2:0]  pstate;
  reg  [5:0]  pcount;        // byte index within the current field
  reg [31:0]  chunk_size;
  reg [31:0]  scratch;
  reg [31:0]  wav_rate;
  reg [15:0]  wav_channels;
  reg [15:0]  wav_bits;
  reg [24:0]  data_start;
  reg [31:0]  data_bytes;
  reg [24:0]  hdr_addr;

  wire [7:0] byte_in = sdram_data[7:0];

  // Bytes per sample frame, and which byte inside the frame to threshold.
  // 8-bit PCM is unsigned (mid = 0x80); 16-bit is signed little-endian, so the
  // high byte carries the sign and "above threshold" is the inverse of it.
  wire [7:0]  frame_stride = (wav_bits[15:0] >> 3) * wav_channels[7:0];
  wire        is16         = (wav_bits == 16'd16);
  wire [24:0] sample_off   = is16 ? 25'd1 : 25'd0;

  // ---- sample clock --------------------------------------------------------
  // Phase accumulator instead of a divider: advance one sample whenever the
  // accumulated rate crosses clk_rate. Avoids a non-constant division and lands
  // on the exact average rate.
  reg [31:0] phase;
  wire       sample_tick = (phase >= clk_rate);

  // ---- motor ---------------------------------------------------------------
  reg [31:0] idle_count;
  reg        rewind_d, access_d;

  always @(posedge clk_sys) begin
    rewind_d <= tape_rewind;
    access_d <= tape_access;
    sdram_rd <= 1'b0;

    if (reset) begin
      state      <= S_IDLE;
      motor      <= 1'b0;
      tape_bit   <= 1'b0;
      sdram_addr <= 25'd0;
      play_pos   <= 32'd0;
      play_len   <= 32'd0;
      idle_count <= 32'd0;
      phase      <= 32'd0;
    end
    else begin
      // A new image, or an explicit rewind, restarts the header parse.
      if (tape_rewind & ~rewind_d) begin
        state      <= (image_size == 25'd0) ? S_IDLE : S_HDR;
        pstate     <= P_RIFF;
        pcount     <= 6'd0;
        hdr_addr   <= 25'd0;
        wav_rate   <= 32'd0;
        wav_bits   <= 16'd8;
        wav_channels <= 16'd1;
        data_start <= 25'd0;
        data_bytes <= 32'd0;
        play_pos   <= 32'd0;
        play_len   <= 32'd0;
        motor      <= 1'b0;
        tape_bit   <= 1'b0;
        phase      <= 32'd0;
        idle_count <= 32'd0;
      end
      else begin
        // ---- motor: start on access, stop after a second of silence --------
        if (tape_access & ~access_d) begin
          motor      <= 1'b1;
          idle_count <= 32'd0;
        end
        else if (motor) begin
          if (idle_count >= clk_rate) begin
            motor      <= 1'b0;
            idle_count <= 32'd0;
          end
          else idle_count <= idle_count + 32'd1;
        end

        case (state)
          S_IDLE: if (image_size != 25'd0) begin
                    state <= S_HDR; pstate <= P_RIFF; pcount <= 6'd0;
                    hdr_addr <= 25'd0;
                  end

          // ---- header: one byte at a time --------------------------------
          S_HDR: begin
            sdram_addr <= hdr_addr;
            sdram_rd   <= 1'b1;
            pcount     <= pcount;
            state      <= S_HDR_W;
          end
          // Give the controller time to drop `ready` before believing it;
          // sampling in the same cycle as `rd` returns the previous word.
          S_HDR_W: state <= S_HDR_R;
          S_HDR_R: if (sdram_ready) state <= S_PARSE;

          S_PARSE: begin
            hdr_addr <= hdr_addr + 25'd1;
            state    <= S_HDR;
            case (pstate)
              // "RIFF" xxxx "WAVE" -- 12 bytes, only the tags are checked.
              P_RIFF: begin
                if ((pcount == 6'd0  && byte_in != "R") ||
                    (pcount == 6'd1  && byte_in != "I") ||
                    (pcount == 6'd2  && byte_in != "F") ||
                    (pcount == 6'd3  && byte_in != "F") ||
                    (pcount == 6'd8  && byte_in != "W") ||
                    (pcount == 6'd9  && byte_in != "A") ||
                    (pcount == 6'd10 && byte_in != "V") ||
                    (pcount == 6'd11 && byte_in != "E")) state <= S_BAD;
                if (pcount == 6'd11) begin pstate <= P_CKID; pcount <= 6'd0; end
                else pcount <= pcount + 6'd1;
              end

              // 4-byte id then 4-byte little-endian size.
              P_CKID: begin
                // IDs are ASCII, first byte first -> first byte ends up in the
                // MSB, matching a Verilog string literal like "fmt ".
                if (pcount < 6'd4) scratch <= {scratch[23:0], byte_in};
                else chunk_size <= {byte_in, chunk_size[31:8]};
                if (pcount == 6'd7) begin
                  pcount <= 6'd0;
                  // scratch now holds the id with the first byte in [7:0].
                  if      (scratch == "fmt ") pstate <= P_FMT;
                  else if (scratch == "data") begin
                    data_start <= hdr_addr + 25'd1;
                    data_bytes <= {byte_in, chunk_size[31:8]};
                    pstate     <= P_DONE;
                  end
                  else pstate <= P_SKIP;
                end
                else pcount <= pcount + 6'd1;
              end

              // Only the fields we need: channels at 2, rate at 4, bits at 14.
              P_FMT: begin
                case (pcount)
                  6'd2:  wav_channels[7:0]   <= byte_in;
                  6'd3:  wav_channels[15:8]  <= byte_in;
                  6'd4:  wav_rate[7:0]       <= byte_in;
                  6'd5:  wav_rate[15:8]      <= byte_in;
                  6'd6:  wav_rate[23:16]     <= byte_in;
                  6'd7:  wav_rate[31:24]     <= byte_in;
                  6'd14: wav_bits[7:0]       <= byte_in;
                  6'd15: wav_bits[15:8]      <= byte_in;
                  default: ;
                endcase
                // Chunks can be longer than 16 bytes; skip the remainder.
                if (pcount + 6'd1 >= chunk_size[5:0] || pcount == 6'd15) begin
                  hdr_addr <= hdr_addr + 25'd1 +
                              ((chunk_size > 32'd16) ? (chunk_size[24:0] - 25'd16) : 25'd0)
                              + (chunk_size[0] ? 25'd1 : 25'd0);
                  pstate <= P_CKID;
                  pcount <= 6'd0;
                end
                else pcount <= pcount + 6'd1;
              end

              P_SKIP: begin
                // hdr_addr already advanced past the header; jump the payload.
                hdr_addr <= hdr_addr + 25'd1 + chunk_size[24:0] + (chunk_size[0] ? 25'd1 : 25'd0);
                pstate   <= P_CKID;
                pcount   <= 6'd0;
              end

              default: ;
            endcase

            if (pstate == P_CKID && hdr_addr > 25'd4096) state <= S_BAD;
          end

          default: ;
        endcase

        // Leaving the parser: work out the length and arm playback.
        if (state == S_PARSE && pstate == P_DONE) begin
          state <= (wav_rate == 32'd0) ? S_BAD : S_READY;
          // Clamp the data chunk to what actually got loaded.
          play_len <= ((data_start + data_bytes[24:0]) > image_size)
                        ? ((image_size - data_start) / frame_stride)
                        : (data_bytes / frame_stride);
          play_pos <= 32'd0;
          phase    <= 32'd0;
        end

        // ---- playback -----------------------------------------------------
        if (state == S_READY && motor)      state <= S_FETCH;
        if (state == S_PLAY  && !motor)     state <= S_READY;  // hold position

        case (state)
          S_FETCH: begin
            if (play_pos >= play_len) state <= S_END;
            else begin
              sdram_addr <= data_start + (play_pos[24:0] * frame_stride) + sample_off;
              sdram_rd   <= 1'b1;
              state      <= S_WAIT;
            end
          end
          S_WAIT: state <= S_RECV;
          S_RECV: if (sdram_ready) begin
                    // 8-bit PCM is unsigned; 16-bit is signed, so invert.
                    tape_bit <= is16 ? ~byte_in[7] : (byte_in >= 8'h80);
                    phase    <= 32'd0;
                    state    <= S_PLAY;
                  end
          S_PLAY: begin
            if (sample_tick) begin
              phase    <= phase - clk_rate + wav_rate;
              play_pos <= play_pos + 32'd1;
              state    <= S_FETCH;
            end
            else phase <= phase + wav_rate;
          end
          S_END: begin
            tape_bit <= 1'b0;
            motor    <= 1'b0;
          end
          S_BAD: begin
            tape_bit <= 1'b0;
            motor    <= 1'b0;
          end
          default: ;
        endcase
      end
    end
  end

endmodule
