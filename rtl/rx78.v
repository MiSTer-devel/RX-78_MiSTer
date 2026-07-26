//
// RX-78 Main Core file
//
// Memory map:
// 0000 - 1FFF : 8K ROM
// 2000 - 5FFF : Cartridges
// 6000 - AFFF : ext RAM 32k
// B000 - EBFF : RAM 16k
// EC00 - FFFF : VRAM 8k bank
//
// - is full RAM accessible when bank=0?
// - is NMI used?
// - what are the ports $23, $EF?
//

module rx78(
  input reset,
  input clk,      // clk_sys
  input main_clk, // Z80 clock, clk_sys/14 (see RX78.sv)
  input snd_cen,  // SN76489 clock enable, one clk_sys cycle in 16
  input vclk,
  input cen,

  input [7:0] upload_index,
  input upload,
  input [24:0] upload_addr,
  input [7:0] upload_data,

  // keyboard
  input [10:0] ps2_key,

  // joystick input
  input [31:0] joy1,
  input [31:0] joy2,

  // Cassette ("data recorder"), port $f0 bit 0. Physically this interface lives
  // on the BS-BASIC cartridge rather than in the main unit, which is why every
  // cassette title requires that cart. See TODO.md T1.
  //
  // Polarity follows MAME, which is the only behaviour in this whole comparison
  // validated against real media: commit 06b26a0f55a, "fixed loading of real
  // tapes", inverted both directions to make the preserved WAV dumps load.
  //   tape_in  - 1 when the incoming waveform is above the threshold
  //   tape_out - level to record; 1 = positive
  input  tape_in,
  output reg tape_out,
  // Pulses for one clk on any $f0 access. There is no motor control port on
  // this machine, so the top level uses this to drive the tape transport the
  // way eRX-78 does: start on first access, stop after ~1s of silence.
  output tape_access,

  output [8:0] h,
  output [8:0] v,
  output hs,
  output vs,
  output hb,
  output vb,
  output px,
  output [7:0] red,
  output [7:0] green,
  output [7:0] blue,
  output [10:0] sound,

  input ext
);

wire zwr, ziorq, zm1;
wire [15:0] zaddr;
wire [7:0] zdo;
wire [7:0] rom_q, ext_q, ram_q, cart_q1, cart_q2, cart_q3, cart_q4;
reg [7:0] vram_rd_bank, vram_wr_bank;
reg [7:0] io_q;
wire [12:0] vdp_addr;
reg [7:0] mask, cmask, bgcolor;

assign px = vclk;

wire rom_en = ~io_en && zaddr < 16'h2000;
wire cart_en = ~io_en && zaddr >= 16'h2000 && zaddr < 16'h6000;
wire cart_1_en = cart_en && ~zaddr[14];
wire cart_2_en = cart_en && zaddr[14];

// A cartridge larger than 16K continues into the $6000-$9fff window, which is
// otherwise expansion RAM. MAME maps the whole thing $2000-$9fff as a *read*
// handler and lets RAM keep the writes, so cart reads always return ROM.
// See TODO.md T3/T18.
wire cart_hi_en = ~io_en && cart_big && zaddr >= 16'h6000 && zaddr < 16'ha000;
wire cart_3_en  = cart_hi_en && ~zaddr[15];   // $6000-$7fff
wire cart_4_en  = cart_hi_en &&  zaddr[15];   // $8000-$9fff

wire ext_en = ~io_en && zaddr >= 16'h6000 && zaddr < 16'hb000;
wire ram_en = ~io_en && zaddr >= 16'hb000 && zaddr < 16'hec00;
wire vram_en = ~io_en && zaddr >= 16'hec00;
wire io_en = ~ziorq & zm1;

reg [7:0] p1, p2, p3, p4, p5, p6;

// Cartridge ROM outranks expansion RAM for reads, so a game cannot corrupt its
// own code by writing into the window it is executing from.
wire [7:0] zdi =
  io_en     ? io_q    :
  rom_en    ? rom_q   :
  cart_1_en ? cart_q1 :
  cart_2_en ? cart_q2 :
  cart_3_en ? cart_q3 :
  cart_4_en ? cart_q4 :
  (ext && ext_en )   ? ext_q   :
  ram_en    ? ram_q   :
  vram_en   ? vram_q  : 8'hff;


wire [7:0] kb_rows;
reg [7:0] kb_cols;
reg vblank_irq_disabled;

// I/O
always @(posedge clk) begin
  io_q <= 8'hff;
  if (io_en) begin
    case (zaddr[7:0])
      //8'h23: ?
      //8'hef: ?
      8'hf0:
        // MAME: cass_w outputs -1.0 when bit0 is set, and cass_r returns 0 when
        // the input is above the threshold -- inverted in both directions.
        // Both emulators read back 0 in bits 7:1.
        if (~zwr) tape_out <= ~zdo[0];
        else      io_q <= {7'd0, ~tape_in};
      8'hf1: if (~zwr) vram_rd_bank <= zdo;
      8'hf2: if (~zwr) vram_wr_bank <= zdo;
      8'hf3:
        if (~zwr)
          case (zdo[1:0])
            2'd0: irq_slow <= 6'd0;
            2'd1: irq_slow <= 6'd0;
            2'd2: irq_slow <= 6'd7;
            2'd3: irq_slow <= 6'd63;
          endcase
      8'hf4:
        if (~zwr) begin
          kb_cols <= zdo;
          vblank_irq_disabled <= zdo[4];
        end
        else begin
          io_q <= kb_rows;
        end
      8'hf5: if (~zwr) p1 <= zdo;
      8'hf6: if (~zwr) p2 <= zdo;
      8'hf7: if (~zwr) p3 <= zdo;
      8'hf8: if (~zwr) p4 <= zdo;
      8'hf9: if (~zwr) p5 <= zdo;
      8'hfa: if (~zwr) p6 <= zdo;
      8'hfb: if (~zwr) cmask <= zdo;
      8'hfc: if (~zwr) bgcolor <= zdo;
      8'hfe: if (~zwr) mask <= zdo;
    endcase
  end
  if (reset) begin
    bgcolor <= 8'd0;
    mask <= 8'd0;
    cmask <= 8'd0;
    irq_slow <= 6'd0;
    tape_out <= 1'b0;
  end
end

// One-shot on any $f0 access, for the motor heuristic in the top level.
wire tape_io = io_en && (zaddr[7:0] == 8'hf0);
reg  tape_io_d;
always @(posedge clk) tape_io_d <= tape_io;
assign tape_access = tape_io & ~tape_io_d;

// 8k rom
rom rom(
  .clk(clk),
  .ce_n(~rom_en),
  .addr(zaddr[12:0]),
  .q(rom_q)
);

// 16k cartride (2x8k)
cart cart1(
  .clk(clk),
  .ce_n(~cart_en | zaddr[14]),
  .addr(zaddr[12:0]),
  .q(cart_q1),

  .upload((upload_index==1) && upload && upload_addr < 25'h2000),
  .upload_addr(upload_addr[12:0]),
  .upload_data(upload_data)
);

cart cart2(
  .clk(clk),
  .ce_n(~cart_en | ~zaddr[14]),
  .addr(zaddr[12:0]),
  .q(cart_q2),

  .upload((upload_index==1) && upload && upload_addr >= 25'h2000 && upload_addr < 25'h4000),
  .upload_addr(upload_addr[12:0]),
  .upload_data(upload_data)
);

// Upper half of a >16K cartridge: two more 8K blocks at $6000 and $8000.
// These are ROM. Previously the upper 16K was copied into ext_ram, which is
// writable, so a game writing anywhere in $6000-$9fff overwrote its own code.
cart cart3(
  .clk(clk),
  .ce_n(~cart_3_en),
  .addr(zaddr[12:0]),
  .q(cart_q3),

  .upload((upload_index==1) && upload && upload_addr >= 25'h4000 && upload_addr < 25'h6000),
  .upload_addr(upload_addr[12:0]),
  .upload_data(upload_data)
);

cart cart4(
  .clk(clk),
  .ce_n(~cart_4_en),
  .addr(zaddr[12:0]),
  .q(cart_q4),

  .upload((upload_index==1) && upload && upload_addr >= 25'h6000 && upload_addr < 25'h8000),
  .upload_addr(upload_addr[12:0]),
  .upload_data(upload_data)
);

// Cartridge size, learned during the ioctl download: upload_addr counts up
// monotonically from 0, so seeing an address past 16K means the image is
// bigger than 16K. This removes the need for the user to know to flip
// "EXT RAM" before loading a 32K cart. TODO.md T18.
wire cart_upload    = (upload_index == 8'd1) && upload;
wire cart_upload_lo = cart_upload && (upload_addr == 25'd0);       // new image
reg  cart_big = 1'b0;
always @(posedge clk) begin
  if      (cart_upload_lo)                    cart_big <= 1'b0;
  else if (cart_upload && upload_addr >= 25'h4000) cart_big <= 1'b1;
end

// 32k ext ram, todo: divide in sub-chips to avoid that ugly subtraction that
// does not exist in the original machine
dpram #(.addr_width(15), .data_width(8)) ext_ram(
  .clk(clk),
  .addr(zaddr[14:0] - 15'h6000),
  .din(zdo),
  .q(ext_q),
  .wr_n(zwr),
  .ce_n(~ext_en)
);

// 16k ram / todo: fix address without subtracting, two 8k chips?
dpram #(.addr_width(14), .data_width(8)) ram(
  .clk(clk),
  .addr(zaddr - 16'hb000),
  .din(zdo),
  .q(ram_q),
  .wr_n(zwr),
  .ce_n(~ram_en)
);

// vram layers

wire [7:0] v1, v2, v3, v4, v5, v6;
wire [5:0] vchip_en = vram_en ? (zwr ? read_bank : ~vram_wr_bank) : 6'b111111;

reg [5:0] read_bank;
always @*
  case (vram_rd_bank)
    8'd1: read_bank = 6'b111110;
    8'd2: read_bank = 6'b111101;
    8'd3: read_bank = 6'b111011;
    8'd4: read_bank = 6'b110111;
    8'd5: read_bank = 6'b101111;
    8'd6: read_bank = 6'b011111;
    default: read_bank = 6'b111111;
  endcase

wire [7:0] v1q, v2q, v3q, v4q, v5q, v6q;

// A read with $f1 outside 1..6 selects no plane and returns $ff, not 0.
// eRX-78 memory.cpp: "if(1 <= rpage && rpage <= 6) {...} return 0xff;"
// MAME vram_r: "if(bank == 0 || bank > 6) return 0xff;"   -- TODO.md T5
wire vram_bank_valid = (vram_rd_bank >= 8'd1) && (vram_rd_bank <= 8'd6);
wire [7:0] vram_q = !vram_en          ? 8'h00 :
                    !vram_bank_valid  ? 8'hff :
                    (v1q | v2q | v3q | v4q | v5q | v6q);

// empty VRAMs during cart load
wire [12:0] vram_addr = upload ? upload_addr[12:0] : zaddr[12:0];
wire [7:0] vram_din = upload ? 8'd0 : zdo;
wire vram_wr = upload ? 1'b0 : zwr;
wire [5:0] vr_en = upload ? 6'd0 : vchip_en;

// vram
dpram #(.addr_width(13), .data_width(8)) vram1(
  .clk(clk),
  .addr(vram_addr),
  .din(vram_din),
  .q(v1q),
  .wr_n(vram_wr),
  .ce_n(vr_en[0]),
  .vaddr(vdp_addr[12:0]),
  .vdata(v1)
);

dpram #(.addr_width(13), .data_width(8)) vram2(
  .clk(clk),
  .addr(vram_addr),
  .din(vram_din),
  .q(v2q),
  .wr_n(vram_wr),
  .ce_n(vr_en[1]),
  .vaddr(vdp_addr[12:0]),
  .vdata(v2)
);

dpram #(.addr_width(13), .data_width(8)) vram3(
  .clk(clk),
  .addr(vram_addr),
  .din(vram_din),
  .q(v3q),
  .wr_n(vram_wr),
  .ce_n(vr_en[2]),
  .vaddr(vdp_addr[12:0]),
  .vdata(v3)
);

dpram #(.addr_width(13), .data_width(8)) vram4(
  .clk(clk),
  .addr(vram_addr),
  .din(vram_din),
  .q(v4q),
  .wr_n(vram_wr),
  .ce_n(vr_en[3]),
  .vaddr(vdp_addr[12:0]),
  .vdata(v4)
);

dpram #(.addr_width(13), .data_width(8)) vram5(
  .clk(clk),
  .addr(vram_addr),
  .din(vram_din),
  .q(v5q),
  .wr_n(vram_wr),
  .ce_n(vr_en[4]),
  .vaddr(vdp_addr[12:0]),
  .vdata(v5)
);

dpram #(.addr_width(13), .data_width(8)) vram6(
  .clk(clk),
  .addr(vram_addr),
  .din(vram_din),
  .q(v6q),
  .wr_n(vram_wr),
  .ce_n(vr_en[5]),
  .vaddr(vdp_addr[12:0]),
  .vdata(v6)
);


// The machine has two interrupt sources. Bandai's spec sheet lists them as
// "key and timer interrupts" (see TODO.md Sources, [MANUAL]):
//
//   timer - vblank, optionally divided down by $f3. Masked by $f4 bit 4.
//   key   - while the vblank interrupt is masked, a key held in the currently
//           selected column still interrupts at vblank.
//
// The key source is what wakes gundam and exbaseb: they set $f4 bit 4 and then
// have nothing else to wake them. Without it they hang forever. See TODO.md T6.
reg [5:0] irq_slow, irq_cnt;
reg vb_latch, zint;
always @(posedge clk) begin
  vb_latch <= vb;
  if (~vb_latch & vb) begin
    if (~vblank_irq_disabled) begin
      irq_cnt <= irq_cnt + 6'd1;
      if (irq_cnt == irq_slow) begin
        zint <= 1'b1;
        irq_cnt <= 6'd0;
      end
    end
    else if (kb_rows != 8'd0) begin
      zint <= 1'b1;
    end
  end
  // A write to $f4 drops the interrupt line. MAME does this in key_w with the
  // comment "fixes exbaseb opening screen", and that game is the proof here
  // too: without it Excite Baseball takes 2 interrupts in 420 frames, with it
  // 222. Ultraman and Space Enemy are unaffected. TODO.md T7.
  if (io_en && (zaddr[7:0] == 8'hf4) && ~zwr) zint <= 1'b0;
  if (~ziorq & ~zm1) zint <= 1'b0;
end



// Which Z80 core. Synthesis always uses T80 (VHDL). Verilator normally uses
// tv80 (Verilog) because ghdl is not in the build path -- but the two cores are
// not interchangeable in practice, so USE_T80 lets a Verilator build run T80
// instead, via ghdl-converted Verilog. See TODO.md T25.
`ifdef VERILATOR
 `ifndef USE_T80
  `define USE_TV80
 `endif
`endif

`ifdef USE_TV80

tv80s cpu(
  .reset_n(~reset),
  .clk(main_clk),
  .wait_n(1'b1),
  .int_n(~zint),
  .nmi_n(1'b1),
  .busrq_n(1'b1),
  .m1_n(zm1),
  .mreq_n(),
  .iorq_n(ziorq),
  .rd_n(),
  .wr_n(zwr),
  .rfsh_n(),
  .halt_n(),
  .busak_n(),
  .A(zaddr),
  .di(zdi),
  .dout(zdo)
);

`else

T80s T80s (
	.RESET_n  ( ~reset   ),
	.CLK      ( main_clk ),
	// CEN and OUT0 have VHDL defaults ('1' and '0'), so leaving them
	// unconnected works under Quartus -- but a Verilog translation of this core
	// has no defaults and reads them as 0, which stops the CPU dead. Explicit.
	.CEN      ( 1'b1     ),
	.OUT0     ( 1'b0     ),
	.WAIT_n   ( 1'b1     ),
	.INT_n    ( ~zint    ),
	.NMI_n    ( 1'b1     ),
	.BUSRQ_n  ( 1'b1     ),
	.M1_n     ( zm1      ),
	.MREQ_n   (          ),
	.IORQ_n   ( ziorq    ),
	.RD_n     (          ),
	.WR_n     ( zwr      ),
	.RFSH_n   (          ),
	.HALT_n   (          ),
	.BUSAK_n  (          ),
	.A        ( zaddr    ),
	.DI       ( zdi      ),
	.DO       ( zdo      )
);

`endif


video video(
  .clk(vclk),
  .hs(hs),
  .vs(vs),
  .hb(hb),
  .vb(vb),
  .hcount(h),
  .vcount(v)
);

vdp vdp(
  .clk(clk),
  .vclk(vclk),
  .h(h),
  .v(v),
  .vdp_addr(vdp_addr),
  .v1(v1), .v2(v2), .v3(v3),
  .v4(v4), .v5(v5), .v6(v6),
  .p1(p1), .p2(p2), .p3(p3),
  .p4(p4), .p5(p5), .p6(p6),
  .mask(mask),
  .cmask(cmask),
  .bgc(bgcolor),
  .red(red),
  .green(green),
  .blue(blue)
);

keyboard kb(
  .clk_sys(clk),
  .reset(reset),
  .ps2_key(ps2_key),
  .addr(kb_cols),
  .kb_rows(kb_rows),
  .Fn(),
  .modif(),
  .joy1(joy1),
  .joy2(joy2)
);

// $ff -> SN76489.
//
// jt89 latches a register write on the falling edge of wr_n at the full clk
// rate; only its tone/noise synthesis is gated by clk_en. So the PSG runs on
// clk_sys with a /16 enable, and the write strobe is just a one-shot in the
// same domain -- no clock crossing, and the CPU clock no longer sets the
// audio pitch. See TODO.md T2.
wire jt89_rdy;
wire snd_wr_cond = io_en && (zaddr[7:0] == 8'hff) && ~zwr;
reg  snd_wr_cond_d;
reg  snd_wr;
reg  [7:0] snd_din;

always @(posedge clk) begin
  snd_wr_cond_d <= snd_wr_cond;
  snd_wr        <= snd_wr_cond & ~snd_wr_cond_d;
  if (snd_wr_cond & ~snd_wr_cond_d) snd_din <= zdo;
  if (reset) begin
    snd_wr        <= 1'b0;
    snd_wr_cond_d <= 1'b0;
  end
end

jt89 jt89(
  .clk(clk),
  .clk_en(snd_cen),
  .rst(reset),
  .wr_n(~snd_wr),
  .din(snd_din),
  .sound(sound),
  .ready(jt89_rdy)
);

endmodule
