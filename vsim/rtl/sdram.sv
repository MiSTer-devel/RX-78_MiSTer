// Behavioural stand-in for rtl/sdram.sv, for Verilator.
//
// Same client-side interface (addr/din/dout/we/rd/wtbt/ready) and the same
// byte semantics, but backed by a plain array instead of a real SDRAM chip:
//   * addr is a BYTE address; dout[7:0] is the byte at addr
//   * dout[15:8] is the other byte of the containing 16-bit word
//   * wtbt == 2'b00 means "byte write of din[7:0] at addr" (what the tape
//     download path uses); wtbt != 0 writes the 16-bit word
//   * ready drops on a new request and comes back READ_LATENCY cycles later
//   * a read of a word that is already latched is answered immediately,
//     mirroring the real controller's same-row shortcut
//
// The latency is what makes this useful: cassette.v currently samples
// sdram_ready in the same cycle it raises sdram_rd, so it can capture the
// PREVIOUS word. Keep READ_LATENCY >= 2 so that bug stays visible in sim.

module sdram #(
	parameter ADDR_BITS     = 23,   // 8 MB of model memory -- plenty for tapes
	parameter READ_LATENCY  = 3
) (
	input             init,
	input             clk,

	input       [1:0] wtbt,
	input      [24:0] addr,
	output     [15:0] dout,
	input      [15:0] din,
	input             we,
	input             rd,
	output reg        ready
);

localparam MEM_WORDS = (1 << (ADDR_BITS - 1));

reg [15:0] mem [0:MEM_WORDS-1];
reg [15:0] data;
reg [24:0] save_addr;
reg        save_we;
reg  [3:0] latency;
reg        busy;

wire [ADDR_BITS-2:0] word_addr = addr[ADDR_BITS-1:1];

integer i;
initial begin
	for (i = 0; i < MEM_WORDS; i = i + 1) mem[i] = 16'h0000;
	data      = 16'h0000;
	save_addr = 25'd0;
	save_we   = 1'b0;
	ready     = 1'b1;
	busy      = 1'b0;
	latency   = 4'd0;
end

// dout mirrors the real controller: the byte at `addr` lands in dout[7:0].
assign dout = save_addr[0] ? {data[7:0], data[15:8]} : {data[15:8], data[7:0]};

// Mirror the real controller: `init` forces the state machine back to startup
// and nothing completes until it has finished, and requests are EDGE detected
// (`we & ~old_we`), not level. Both matter -- holding init high through an
// ioctl download silently discards every byte, which is exactly the bug this
// model needs to be able to reproduce.
reg old_we, old_rd, is_read;
reg [7:0] startup;

always @(posedge clk) begin
	old_we <= we;
	old_rd <= rd;

	if (init) begin
		ready   <= 1'b0;
		busy    <= 1'b0;
		latency <= 4'd0;
		startup <= 8'd32;
	end
	else if (startup != 8'd0) begin
		startup <= startup - 8'd1;
		if (startup == 8'd1) ready <= 1'b1;
	end
	else begin
		if (busy) begin
			if (latency > 4'd1) latency <= latency - 4'd1;
			else begin
				if (is_read) data <= mem[save_addr[ADDR_BITS-1:1]];
				busy  <= 1'b0;
				ready <= 1'b1;
			end
		end
		else if (we & ~old_we) begin
			save_addr <= addr;
			save_we   <= 1'b1;
			// The real controller drops `ready` on a write edge too. Returning
			// ready=1 here means a client throttling on it (the ioctl download
			// path drives ioctl_wait from it) never sees back-pressure, never
			// re-strobes `wr`, and only the first byte of a transfer lands.
			ready   <= 1'b0;
			busy    <= 1'b1;
			is_read <= 1'b0;
			latency <= READ_LATENCY[3:0];
			if (wtbt == 2'b00) begin
				if (addr[0]) mem[word_addr][15:8] <= din[7:0];
				else         mem[word_addr][7:0]  <= din[7:0];
			end
			else begin
				if (wtbt[0]) mem[word_addr][7:0]  <= din[7:0];
				if (wtbt[1]) mem[word_addr][15:8] <= din[15:8];
			end
		end
		else if (rd & ~old_rd) begin
			save_addr <= addr;
			save_we   <= 1'b0;
			// Same-word read hits the already-latched data, like the real
			// controller's `save_addr[24:1] == addr[24:1]` shortcut.
			if (!(ready && !save_we && (save_addr[24:1] == addr[24:1]))) begin
				ready   <= 1'b0;
				busy    <= 1'b1;
				is_read <= 1'b1;
				latency <= READ_LATENCY[3:0];
			end
		end
	end
end

endmodule
