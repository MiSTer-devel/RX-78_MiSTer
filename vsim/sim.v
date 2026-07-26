//============================================================================
//  RX-78 Verilator simulation wrapper
//
//  Stands in for RX78.sv (the MiSTer top level) without the sys/ framework:
//  no hps_io, no PLL, no video_mixer. sim_main.cpp drives clk_sys directly and
//  everything else is derived here exactly as RX78.sv derives it, so the core
//  sees the same clocks and the same ioctl/joystick/ps2 wiring as on hardware.
//
//  Deliberate differences from RX78.sv, all of them noted below:
//    - clk_vid and main_clk are counted down from clk_sys instead of coming
//      from the PLL. 56 / 7 = 8 exactly, and the real PLL locks both outputs to
//      the same VCO, so this is phase-equivalent, not an approximation.
//    - VGA_* are the raw core outputs. No scandoubler or gamma: the sim
//      captures what the core generates, which is what we want to inspect.
//============================================================================

`timescale 1ns / 1ps

module emu
(
	input         clk_sys,          // 56 MHz, driven by sim_main
	input         reset,

	// core options, mirroring the OSD status bits in RX78.sv
	input         ext_ram,          // status[11] "EXT RAM"
	input         pause,            // status[12] "Pause"
	input         swap_joysticks,   // status[10]

	input  [31:0] joystick_0,
	input  [31:0] joystick_1,

	// [7:0] scancode, [8] extended, [9] pressed, [10] toggles per event
	input  [10:0] ps2_key,

	// HPS ioctl download (cartridge upload). index 1 == "F1,BIN" in CONF_STR.
	input         ioctl_download,
	input         ioctl_wr,
	input  [24:0] ioctl_addr,
	input   [7:0] ioctl_dout,
	input   [7:0] ioctl_index,
	output        ioctl_wait,

	output  [7:0] VGA_R,
	output  [7:0] VGA_G,
	output  [7:0] VGA_B,
	output        VGA_HS,
	output        VGA_VS,
	output        VGA_HB,
	output        VGA_VB,
	output        VGA_DE,
	output        CE_PIXEL,

	output [15:0] AUDIO_L,
	output [15:0] AUDIO_R,

	// observation points for the sim UI / assertions
	output  [8:0] h_count,
	output  [8:0] v_count,

	// ---- debug taps ----------------------------------------------------
	// Hierarchical reads into the core. Nothing here drives the core, and
	// none of it exists in RX78.sv -- it is purely so sim_main can show and
	// log internal state without needing --public-flat-rw or edits to rtl/.
	output  [7:0] dbg_p1, dbg_p2, dbg_p3, dbg_p4, dbg_p5, dbg_p6,
	output  [7:0] dbg_mask,      // $fe plane display mask
	output  [7:0] dbg_cmask,     // $fb  (see TODO T9 -- disputed function)
	output  [7:0] dbg_bgcolor,   // $fc
	output  [7:0] dbg_rd_bank,   // $f1
	output  [7:0] dbg_wr_bank,   // $f2
	output  [5:0] dbg_irq_slow,  // derived from $f3 (see TODO T10)
	output        dbg_irq_dis,   // $f4 bit 4
	output        dbg_int,       // Z80 INT line
	output  [7:0] dbg_kb_cols,   // last $f4 column write
	output  [7:0] dbg_kb_rows,   // keyboard matrix readback for that column
	output  [7:0] dbg_keys_or,   // OR of all 15 matrix rows (any key/joy down)
	output        dbg_halt,      // CPU HALT_n (low = halted)
	output        dbg_intack,    // Z80 interrupt acknowledge (~IORQ_n & ~M1_n)
	output [15:0] dbg_cpu_addr,

	// I/O access strobes, for --trace-io
	output        dbg_io_wr,
	output        dbg_io_rd,
	output  [7:0] dbg_io_port,
	output [15:0] dbg_io_addr,   // full bus: {A,port} or {B,C}
	output  [7:0] dbg_io_data
);

assign ioctl_wait = 1'b0;   // the core accepts writes every cycle

//////////////////////////////////////////////////////////////////
// Clocks
//
// RX78.sv: pll outclk_0 = 56 MHz (clk_sys), outclk_1 = 7 MHz (clk_vid),
// and main_clk = clk_vid / 2 (~3.5 MHz), gated by the Pause option.
//
// 56 / 7 = 8, so clk_vid toggles every 4 clk_sys cycles.
//////////////////////////////////////////////////////////////////

reg [1:0] vid_div = 2'd0;
reg       clk_vid = 1'b0;

always @(posedge clk_sys) begin
	vid_div <= vid_div + 2'd1;
	if (vid_div == 2'd3) begin
		vid_div <= 2'd0;
		clk_vid <= ~clk_vid;
	end
end

// CPU clock = clk_sys/14, sound enable = 1-in-16, exactly as RX78.sv derives
// them. Hardware ratios: Z80 master/7, SN76489 master/8, pixel master/4, and
// clk_sys is 8x pixel. See TODO.md T2.
reg [2:0] cpu_div = 3'd0;
reg       main_clk = 1'b0;
always @(posedge clk_sys) begin
	if (~pause) begin
		if (cpu_div == 3'd6) begin
			cpu_div  <= 3'd0;
			main_clk <= ~main_clk;
		end
		else cpu_div <= cpu_div + 3'd1;
	end
end

reg [3:0] snd_div = 4'd0;
reg       snd_cen = 1'b0;
always @(posedge clk_sys) begin
	snd_div <= snd_div + 4'd1;
	snd_cen <= (snd_div == 4'd0) & ~pause;
end

// One CE_PIXEL per clk_vid rising edge, so sim_main samples exactly one pixel
// per video clock. (RX78.sv feeds the raw clk_vid pixel rate into video_mixer.)
reg clk_vid_d = 1'b0;
always @(posedge clk_sys) clk_vid_d <= clk_vid;
assign CE_PIXEL = clk_vid & ~clk_vid_d;

//////////////////////////////////////////////////////////////////
// Core
//////////////////////////////////////////////////////////////////

wire  [7:0] r, g, b;
wire        hs, vs, hb, vb;
wire [10:0] sound;

wire [31:0] rx78_joy1 = swap_joysticks ? joystick_1 : joystick_0;
wire [31:0] rx78_joy2 = swap_joysticks ? joystick_0 : joystick_1;

rx78 rx78
(
	.reset     ( reset          ),
	.clk       ( clk_sys        ),
	.main_clk  ( main_clk       ),
	.snd_cen   ( snd_cen        ),
	.vclk      ( clk_vid        ),
	.cen       ( 1'b1           ),

	.h         ( h_count        ),
	.v         ( v_count        ),
	.hs        ( hs             ),
	.vs        ( vs             ),
	.hb        ( hb             ),
	.vb        ( vb             ),
	.px        (                ),
	.red       ( r              ),
	.green     ( g              ),
	.blue      ( b              ),

	.sound     ( sound          ),

	.ps2_key   ( ps2_key        ),
	.joy1      ( rx78_joy1      ),
	.joy2      ( rx78_joy2      ),

	.upload_index ( ioctl_index ),
	.upload_addr  ( ioctl_addr  ),
	.upload_data  ( ioctl_dout  ),
	.upload       ( ioctl_wr & ioctl_download ),

	.ext       ( ext_ram        )
);

assign VGA_R  = r;
assign VGA_G  = g;
assign VGA_B  = b;
assign VGA_HS = hs;
assign VGA_VS = vs;
assign VGA_HB = hb;
assign VGA_VB = vb;
assign VGA_DE = ~(hb | vb);

// RX78.sv: AUDIO_L/R = { sound, 5'd0 }, AUDIO_S = 1 (signed)
assign AUDIO_L = { sound, 5'd0 };
assign AUDIO_R = { sound, 5'd0 };

//////////////////////////////////////////////////////////////////
// Debug taps (hierarchical reads -- observation only)
//////////////////////////////////////////////////////////////////

assign dbg_p1       = rx78.p1;
assign dbg_p2       = rx78.p2;
assign dbg_p3       = rx78.p3;
assign dbg_p4       = rx78.p4;
assign dbg_p5       = rx78.p5;
assign dbg_p6       = rx78.p6;
assign dbg_mask     = rx78.mask;
assign dbg_cmask    = rx78.cmask;
assign dbg_bgcolor  = rx78.bgcolor;
assign dbg_rd_bank  = rx78.vram_rd_bank;
assign dbg_wr_bank  = rx78.vram_wr_bank;
assign dbg_irq_slow = rx78.irq_slow;
assign dbg_irq_dis  = rx78.vblank_irq_disabled;
assign dbg_int      = rx78.zint;
assign dbg_kb_cols  = rx78.kb_cols;
assign dbg_kb_rows  = rx78.kb_rows;

// OR of the whole matrix, so "did any key register" is observable regardless of
// which column the CPU happens to have selected.
assign dbg_keys_or  = rx78.kb.keys[0]  | rx78.kb.keys[1]  | rx78.kb.keys[2]  |
                      rx78.kb.keys[3]  | rx78.kb.keys[4]  | rx78.kb.keys[5]  |
                      rx78.kb.keys[6]  | rx78.kb.keys[7]  | rx78.kb.keys[8]  |
                      rx78.kb.keys[9]  | rx78.kb.keys[10] | rx78.kb.keys[11] |
                      rx78.kb.keys[12] | rx78.kb.keys[13] | rx78.kb.keys[14];
assign dbg_halt     = rx78.cpu.halt_n;
// rx78.v clears zint on this exact condition, so counting it tells us whether
// the CPU is accepting interrupts at all (IFF) vs the core failing to assert.
assign dbg_intack   = ~rx78.ziorq & ~rx78.zm1;
assign dbg_cpu_addr = rx78.zaddr;

// rx78.v decodes I/O as io_en = ~IORQ_n & M1_n. WR_n gives an unambiguous
// write strobe, but rx78.v leaves RD_n unconnected, so read direction cannot
// be derived from the core's own signals -- `io_en & WR_n` is also true during
// the first T-state of a *write* cycle. Tap RD_n from the CPU instead.
//
// This reaches into the `ifdef VERILATOR` branch of rx78.v (instance `cpu` =
// tv80s). That branch is always the one the sim builds, so it is safe here,
// but it does not exist in the T80 synthesis path.
assign dbg_io_wr    = rx78.io_en & ~rx78.zwr;
assign dbg_io_rd    = rx78.io_en & ~rx78.cpu.rd_n;

// The Z80 puts the full I/O address on the bus: {A, port} for `OUT (n),A` /
// `IN A,(n)`, or {B, C} for the `(C)` forms. The high byte is therefore either
// the accumulator or B -- useful context, but never a program counter.
assign dbg_io_port  = rx78.zaddr[7:0];
assign dbg_io_addr  = rx78.zaddr;
assign dbg_io_data  = rx78.zdo;

endmodule
