//============================================================================
//
//  This program is free software; you can redistribute it and/or modify it
//  under the terms of the GNU General Public License as published by the Free
//  Software Foundation; either version 2 of the License, or (at your option)
//  any later version.
//
//  This program is distributed in the hope that it will be useful, but WITHOUT
//  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
//  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
//  more details.
//
//  You should have received a copy of the GNU General Public License along
//  with this program; if not, write to the Free Software Foundation, Inc.,
//  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
//
//============================================================================
module emu
(
	//Master input clock
	input         CLK_50M,

	//Async reset from top-level module.
	//Can be used as initial reset.
	input         RESET,

	//Must be passed to hps_io module
	inout  [48:0] HPS_BUS,

	//Base video clock. Usually equals to CLK_SYS.
	output        CLK_VIDEO,

	//Multiple resolutions are supported using different CE_PIXEL rates.
	//Must be based on CLK_VIDEO
	output        CE_PIXEL,

	//Video aspect ratio for HDMI. Most retro systems have ratio 4:3.
	//if VIDEO_ARX[12] or VIDEO_ARY[12] is set then [11:0] contains scaled size instead of aspect ratio.
	output [12:0] VIDEO_ARX,
	output [12:0] VIDEO_ARY,

	output  [7:0] VGA_R,
	output  [7:0] VGA_G,
	output  [7:0] VGA_B,
	output        VGA_HS,
	output        VGA_VS,
	output        VGA_DE,    // = ~(VBlank | HBlank)
	output        VGA_F1,
	output [1:0]  VGA_SL,
	output        VGA_SCALER, // Force VGA scaler
	output        VGA_DISABLE, // analog out is off

	input  [11:0] HDMI_WIDTH,
	input  [11:0] HDMI_HEIGHT,
	output        HDMI_FREEZE,
	output        HDMI_BLACKOUT,
	output        HDMI_BOB_DEINT,

`ifdef MISTER_FB
	// Use framebuffer in DDRAM
	// FB_FORMAT:
	//    [2:0] : 011=8bpp(palette) 100=16bpp 101=24bpp 110=32bpp
	//    [3]   : 0=16bits 565 1=16bits 1555
	//    [4]   : 0=RGB  1=BGR (for 16/24/32 modes)
	//
	// FB_STRIDE either 0 (rounded to 256 bytes) or multiple of pixel size (in bytes)
	output        FB_EN,
	output  [4:0] FB_FORMAT,
	output [11:0] FB_WIDTH,
	output [11:0] FB_HEIGHT,
	output [31:0] FB_BASE,
	output [13:0] FB_STRIDE,
	input         FB_VBL,
	input         FB_LL,
	output        FB_FORCE_BLANK,

`ifdef MISTER_FB_PALETTE
	// Palette control for 8bit modes.
	// Ignored for other video modes.
	output        FB_PAL_CLK,
	output  [7:0] FB_PAL_ADDR,
	output [23:0] FB_PAL_DOUT,
	input  [23:0] FB_PAL_DIN,
	output        FB_PAL_WR,
`endif
`endif

	output        LED_USER,  // 1 - ON, 0 - OFF.

	// b[1]: 0 - LED status is system status OR'd with b[0]
	//       1 - LED status is controled solely by b[0]
	// hint: supply 2'b00 to let the system control the LED.
	output  [1:0] LED_POWER,
	output  [1:0] LED_DISK,

	// I/O board button press simulation (active high)
	// b[1]: user button
	// b[0]: osd button
	output  [1:0] BUTTONS,

	input         CLK_AUDIO, // 24.576 MHz
	output [15:0] AUDIO_L,
	output [15:0] AUDIO_R,
	output        AUDIO_S,   // 1 - signed audio samples, 0 - unsigned
	output  [1:0] AUDIO_MIX, // 0 - no mix, 1 - 25%, 2 - 50%, 3 - 100% (mono)

	//ADC
	inout   [3:0] ADC_BUS,

	//SD-SPI
	output        SD_SCK,
	output        SD_MOSI,
	input         SD_MISO,
	output        SD_CS,
	input         SD_CD,

	//High latency DDR3 RAM interface
	//Use for non-critical time purposes
	output        DDRAM_CLK,
	input         DDRAM_BUSY,
	output  [7:0] DDRAM_BURSTCNT,
	output [28:0] DDRAM_ADDR,
	input  [63:0] DDRAM_DOUT,
	input         DDRAM_DOUT_READY,
	output        DDRAM_RD,
	output [63:0] DDRAM_DIN,
	output  [7:0] DDRAM_BE,
	output        DDRAM_WE,

	//SDRAM interface with lower latency
	output        SDRAM_CLK,
	output        SDRAM_CKE,
	output [12:0] SDRAM_A,
	output  [1:0] SDRAM_BA,
	inout  [15:0] SDRAM_DQ,
	output        SDRAM_DQML,
	output        SDRAM_DQMH,
	output        SDRAM_nCS,
	output        SDRAM_nCAS,
	output        SDRAM_nRAS,
	output        SDRAM_nWE,

`ifdef MISTER_DUAL_SDRAM
	//Secondary SDRAM
	//Set all output SDRAM_* signals to Z ASAP if SDRAM2_EN is 0
	input         SDRAM2_EN,
	output        SDRAM2_CLK,
	output [12:0] SDRAM2_A,
	output  [1:0] SDRAM2_BA,
	inout  [15:0] SDRAM2_DQ,
	output        SDRAM2_nCS,
	output        SDRAM2_nCAS,
	output        SDRAM2_nRAS,
	output        SDRAM2_nWE,
`endif

	input         UART_CTS,
	output        UART_RTS,
	input         UART_RXD,
	output        UART_TXD,
	output        UART_DTR,
	input         UART_DSR,

	// Open-drain User port.
	// 0 - D+/RX
	// 1 - D-/TX
	// 2..6 - USR2..USR6
	// Set USER_OUT to 1 to read from USER_IN.
	input   [6:0] USER_IN,
	output  [6:0] USER_OUT,

	input         OSD_STATUS
);

///////// Default values for ports not used in this core /////////

assign ADC_BUS  = 'Z;
assign USER_OUT = '1;
assign {UART_RTS, UART_TXD, UART_DTR} = 0;
assign {SD_SCK, SD_MOSI, SD_CS} = 'Z;
assign {DDRAM_CLK, DDRAM_BURSTCNT, DDRAM_ADDR, DDRAM_DIN, DDRAM_BE, DDRAM_RD, DDRAM_WE} = '0;  

assign VGA_F1 = 0;
assign VGA_SCALER = 0;
assign HDMI_FREEZE = 0;
assign VGA_DISABLE = 0;
assign HDMI_BLACKOUT = 0;
assign HDMI_BOB_DEINT = 0;

assign LED_DISK = 0;
assign LED_POWER = 0;
assign LED_USER = 0;
assign BUTTONS = 0;

//////////////////////////////////////////////////////////////////

wire [1:0] ar = status[9:8];

assign VIDEO_ARX = (!ar) ? 12'd4 : (ar - 1'd1);
assign VIDEO_ARY = (!ar) ? 12'd3 : 12'd0;

`include "build_id.v" 
localparam CONF_STR = {
	"RX78;;",
	"-;",
	"F1,BIN,Load Cartridge;",
	"F2,WAV,Load Tape;",
	"-;",
	"OG,Tape Sound,Off,On;",
	"RH,Tape Rewind;",
	"-;",
	"OA,Swap Joysticks,Off,On;",
	"OB,EXT RAM,Off,On;",
	"OC,Pause,Off,On;",
	"-;",
	"O89,Aspect ratio,Original,Full Screen,[ARC1],[ARC2];",
	"ODF,Scandoubler Fx,None,HQ2x,CRT 25%,CRT 50%,CRT 75%;", 
	"-;",
	"R0,Reset;",
	"J,Fire1,Fire2,Start;",
	"jn,A,B,Start;",
	"V,v",`BUILD_DATE 
};

wire forced_scandoubler;
wire  [1:0] buttons;
wire [31:0] status;
wire [10:0] ps2_key;

wire [31:0] joy1, joy2;

wire [21:0] gamma_bus;

wire        ioctl_download;
wire  [7:0] ioctl_index;
wire        ioctl_wr;
wire [24:0] ioctl_addr;
wire  [7:0] ioctl_dout;
wire        ioctl_wait;


hps_io #(.CONF_STR(CONF_STR)) hps_io
(
	.clk_sys(clk_sys),
	.HPS_BUS(HPS_BUS),
	.gamma_bus(gamma_bus),

	.forced_scandoubler(forced_scandoubler),

	.ioctl_download(ioctl_download),
	.ioctl_wr(ioctl_wr),
	.ioctl_addr(ioctl_addr),
	.ioctl_dout(ioctl_dout),
	.ioctl_index(ioctl_index),
	.ioctl_wait(ioctl_wait),
	
	.joystick_0(joy1),
	.joystick_1(joy2),
	
	
	.buttons(buttons),
	.status(status),
	.status_menumask({status[5]}),
	
	.ps2_key(ps2_key)
);

///////////////////////   CLOCKS   ///////////////////////////////

wire clk_sys, clk_vid;//, cpu_clk;
pll pll
(
	.refclk(CLK_50M),
	.rst(0),
	.outclk_0(clk_sys),
	.outclk_1(clk_vid)
);



// A cartridge download resets the machine; mounting a tape must not, or the
// monitor loses whatever it was doing. The SDRAM controller likewise must not be
// re-initialised while an image is streaming into it.
wire cart_download = ioctl_download && (ioctl_index == 8'd1);
wire tape_download = ioctl_download && (ioctl_index == 8'd2);
wire reset = RESET | status[0] | buttons[1] | cart_download;
wire sdram_init = RESET | status[0] | buttons[1];

//////////////////////////////////////////////////////////////////


wire HBlank;
wire HSync;
wire VBlank;
wire VSync;
wire [7:0] video;

wire [10:0] sound;
assign AUDIO_S = 1;
// Tape monitoring, so a load is audible. MAME mixes the cassette in at 0.05;
// a few LSBs of a signed 16-bit output is the same order of magnitude.
wire signed [15:0] psg_out  = { sound, 5'd0 };
wire signed [15:0] tape_mon = (status[16] && tape_motor) ? (tape_bit ? 16'sd700 : -16'sd700) : 16'sd0;
assign AUDIO_L = psg_out + tape_mon;
assign AUDIO_R = psg_out + tape_mon;
assign AUDIO_MIX = 3;

wire [31:0] rx78_joy1 = status[10] ? joy2 : joy1;
wire [31:0] rx78_joy2 = status[10] ? joy1 : joy2;


//////////////////////////   CASSETTE   //////////////////////////
//
// A tape is a plain WAV mounted over ioctl index 2 and streamed out of SDRAM by
// rtl/cassette.v. See that file for why this streams audio rather than a
// demodulated byte stream. TODO.md T1.

wire [24:0] sdram_addr;
wire [15:0] sdram_data;
wire        sdram_rd;
wire        sdram_ready;

// The SDRAM controller detects requests on an EDGE. hps_io holds ioctl_wr high
// for a whole transfer unless the core pushes back, so without this the
// controller would see one write and only the first byte would land.
assign ioctl_wait = tape_download & ~sdram_ready;

sdram sdram_inst(
	.init(sdram_init),
	.clk(clk_sys),
	.wtbt(2'b00),
	.addr(tape_download ? ioctl_addr : sdram_addr),
	.dout(sdram_data),
	.din({8'd0, ioctl_dout}),
	.we(tape_download & ioctl_wr),
	.rd(sdram_rd),
	.ready(sdram_ready),
	.SDRAM_DQ(SDRAM_DQ),
	.SDRAM_A(SDRAM_A),
	.SDRAM_DQML(SDRAM_DQML),
	.SDRAM_DQMH(SDRAM_DQMH),
	.SDRAM_BA(SDRAM_BA),
	.SDRAM_nCS(SDRAM_nCS),
	.SDRAM_nWE(SDRAM_nWE),
	.SDRAM_nRAS(SDRAM_nRAS),
	.SDRAM_nCAS(SDRAM_nCAS),
	.SDRAM_CKE(SDRAM_CKE),
	.SDRAM_CLK(SDRAM_CLK)
);

// Latch the image size so the player knows where the tape ends, and rewind when
// a new image finishes loading or the OSD asks.
reg  [24:0] tape_size = 25'd0;
reg         tape_rewind;
reg         tape_dl_d;
always @(posedge clk_sys) begin
	tape_rewind <= 1'b0;
	tape_dl_d   <= tape_download;
	if (tape_download & ioctl_wr)    tape_size <= ioctl_addr + 25'd1;
	if (tape_dl_d & ~tape_download)  tape_rewind <= 1'b1;   // download finished
	if (status[17])                  tape_rewind <= 1'b1;   // "Tape Rewind"
end

wire tape_bit, tape_access, tape_out, tape_motor;

cassette cassette(
	.clk_sys(clk_sys),
	.reset(RESET | status[0] | buttons[1]),
	.clk_rate(32'd56000000),
	.tape_access(tape_access),
	.tape_rewind(tape_rewind),
	.image_size(tape_size),
	.sdram_addr(sdram_addr),
	.sdram_data(sdram_data),
	.sdram_rd(sdram_rd),
	.sdram_ready(sdram_ready),
	.tape_bit(tape_bit),
	.motor(tape_motor),
	.status(),
	.play_pos(),
	.play_len()
);

rx78 rx78(
	.reset(reset),
	.clk(clk_sys),
	.main_clk(main_clk),
	.snd_cen(snd_cen),
	.vclk(clk_vid),
	.cen(1),
	.h(),
	.v(),
	.hs(HSync),
	.vs(VSync),
	.hb(HBlank),
	.vb(VBlank),
	.px(),
	.red(R),
	.green(G),
	.blue(B),
	
	.sound(sound),
	
	.ps2_key(ps2_key),
	.joy1(rx78_joy1),
	.joy2(rx78_joy2),

	.tape_in(tape_bit),
	.tape_out(tape_out),
	.tape_access(tape_access),
	
	
	.upload_index(ioctl_index),
	.upload_addr(ioctl_addr),
	.upload_data(ioctl_dout),
	.upload(ioctl_wr & ioctl_download),
	
	.ext(status[11])


);

//////////////////////////////////////////////////////////////////
// CPU and sound clocking
//
// The RX-78 runs a 28.63636 MHz master and divides it three ways:
//   Z80      master / 7 = 4.090909 MHz   (Bandai's manual: "Z-80A' (4.1MHz)")
//   SN76489  master / 8 = 3.579545 MHz
//   pixel    master / 4 = 7.159091 MHz
//
// clk_sys is 8x the pixel clock, so relative to it: CPU = /14, sound = /16.
// Those ratios are what matter and they are now exact. The core used to run
// the CPU *and* the PSG from one clk_vid/2 clock, which made the CPU ~14% slow
// and welded its speed to the audio pitch. See TODO.md T2.
//
// The absolute frequencies are still 2.2% low because the PLL produces 56 MHz
// rather than 57.272727 MHz (= 2 x master). Correcting that also moves the
// refresh from 60.08 Hz to 61.45 Hz, which is a display-compatibility decision
// for the core authors -- see TODO.md T12. Change both PLL output frequencies
// in rtl/pll/pll_0002.v together if you want it.
//////////////////////////////////////////////////////////////////

// CPU clock: clk_sys / 14, i.e. toggle every 7 cycles. status[12] is Pause.
reg [2:0] cpu_div = 3'd0;
reg       main_clk = 1'b0;
always @(posedge clk_sys) begin
	if (~status[12]) begin
		if (cpu_div == 3'd6) begin
			cpu_div  <= 3'd0;
			main_clk <= ~main_clk;
		end
		else cpu_div <= cpu_div + 3'd1;
	end
end

// Sound: one clock enable every 16 clk_sys cycles. jt89 latches register
// writes at the full clk rate and only advances its synthesis on clk_en, so
// it wants an enable rather than its own clock.
reg [3:0] snd_div = 4'd0;
reg       snd_cen = 1'b0;
always @(posedge clk_sys) begin
	snd_div <= snd_div + 4'd1;
	snd_cen <= (snd_div == 4'd0) & ~status[12];
end

reg ce_pix;
always @(posedge CLK_VIDEO) begin
	reg [2:0] div = 0;

	div <= div + 1'd1;
	ce_pix <=  &div ;
end


assign CLK_VIDEO = clk_sys;


wire [2:0] scale = status[15:13];
wire [2:0] sl = scale ? scale - 1'd1 : 3'd0;
wire       scandoubler = (scale || forced_scandoubler);
assign VGA_SL = sl[1:0];

wire [7:0] R;
wire [7:0] G;
wire [7:0] B;

video_mixer #( .GAMMA(1)) video_mixer
(
	.*,

	.hq2x(scale==1),
	.freeze_sync()


);


endmodule
