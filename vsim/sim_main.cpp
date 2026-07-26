//============================================================================
//  RX-78 Verilator simulation
//
//  Two modes:
//    windowed  - ImGui/SDL front end with the video output, a VDP/IO register
//                inspector, and a console. For poking at things by hand.
//    headless  - no SDL at all. Runs a fixed number of frames, optionally
//                injecting keys/joystick at given frames and writing PNGs.
//                This is what the regression script drives.
//
//  Everything that is timing-sensitive is expressed in *frames*, because that
//  is the only unit that is stable across changes to the clocking (and TODO T2
//  is going to change the clocking).
//============================================================================

#include <verilated.h>
#include "Vemu.h"

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cstdint>
#include <string>
#include <vector>
#include <map>
#include <set>
#include <algorithm>

#include "sim_console.h"
#include "sim_bus.h"
#include "sim_video.h"
#include "sim_input.h"
#include "sim_audio.h"

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

#ifndef _MSC_VER
#include <SDL.h>
#include <SDL_opengl.h>
#endif

//----------------------------------------------------------------------------
// Machine constants
//----------------------------------------------------------------------------

// rtl/video.v: hblank clears at hcount 0 and sets at 256; vblank sets at
// vcount 224 and clears at 262. So the active raster the sim captures is:
static const int RX78_WIDTH  = 256;
static const int RX78_HEIGHT = 224;

// RX78.sv PLL outclk_0. See TODO T2 -- this is not the hardware value
// (should be derived from 28.63636 MHz), but it is what the core builds with
// today, so the sim reproduces it exactly rather than silently "fixing" it.
static const long CLK_SYS_HZ = 56000000;

//----------------------------------------------------------------------------
// Globals
//----------------------------------------------------------------------------

static Vemu*        top = nullptr;
static vluint64_t   main_time = 0;
double sc_time_stamp() { return main_time; }

static DebugConsole console;
static SimBus       bus(console);
static SimVideo     video(RX78_WIDTH, RX78_HEIGHT, 0);
static SimInput     input(0, console);
static SimAudio     audio(CLK_SYS_HZ, false);

// Not static: sim_video.cpp and sim_input.cpp reference this as an extern to
// skip all GL/SDL work. Same contract as the Apple-IIgs sim.
bool headless = false;
static bool run_enable    = true;
static int  stop_at_frame = -1;
static int  reset_at_frame = -1;

static std::vector<int> screenshot_frames;
static std::string      screenshot_name_override;
static std::string      screenshot_prefix = "screenshot";
static std::set<int>    screenshots_taken;

static std::string cart_path;
static bool  opt_ext_ram = false;
static bool  opt_pause   = false;
static bool  opt_swap    = false;

static bool  trace_io       = false;
static bool  trace_io_unknown_only = false;
static FILE* trace_io_file  = nullptr;

//----------------------------------------------------------------------------
// Cassette
//
// Plays a WAV straight into the core's tape_in at the file's own sample rate.
// This deliberately bypasses whatever buffering the FPGA build ends up using:
// the point is to validate the $f0 port and its polarity against the real
// preserved dumps first, with nothing else in the way.
//
// The RX-78 has no motor control port, so the transport follows eRX-78's
// heuristic: start on the first $f0 access, stop after a second with none.
//----------------------------------------------------------------------------

struct Tape {
	std::vector<uint8_t> bits;      // 1 = waveform above threshold
	long    rate      = 0;
	double  pos       = 0.0;        // fractional sample index
	bool    motor     = false;
	bool    autostart = true;
	long    idle      = 0;          // clk_sys cycles since last $f0 access
	long    accesses  = 0;
	bool    loaded() const { return !bits.empty(); }
};
static Tape tape;
static std::string tape_path;
static bool tape_manual_play = false;   // --tape-play: ignore the heuristic
static bool tape_direct = false;        // --tape-direct: bypass SDRAM/cassette.v

// Decimation applied when loading. This exists to size the FPGA buffer: storing
// 1 bit per sample at 44.1 kHz costs 452 KB of BRAM for an 82-second tape, which
// is more than is comfortably available. Decimating trades edge-timing
// resolution for space -- at 2400 Hz (the higher FSK tone) a half-cycle is 208
// us, which is 9.2 samples at 44.1 kHz, 4.6 at /2 and 2.3 at /4. Use
// --tape-decimate to find the coarsest rate that still loads.
static int tape_decimate = 1;

// Minimal RIFF/WAVE reader. Handles 8-bit unsigned and 16-bit signed PCM, and
// finds the data chunk rather than assuming a 44-byte header.
static bool load_tape_wav(const std::string& path) {
	FILE* f = fopen(path.c_str(), "rb");
	if (!f) { printf("tape: cannot open %s\n", path.c_str()); return false; }
	uint8_t hdr[12];
	if (fread(hdr, 1, 12, f) != 12 || memcmp(hdr, "RIFF", 4) || memcmp(hdr + 8, "WAVE", 4)) {
		printf("tape: %s is not a RIFF/WAVE file\n", path.c_str());
		fclose(f); return false;
	}
	int channels = 1, bits_per_sample = 8;
	long rate = 0;
	while (true) {
		uint8_t ch[8];
		if (fread(ch, 1, 8, f) != 8) break;
		uint32_t sz = ch[4] | (ch[5] << 8) | (ch[6] << 16) | ((uint32_t)ch[7] << 24);
		if (!memcmp(ch, "fmt ", 4)) {
			std::vector<uint8_t> fmt(sz);
			if (fread(fmt.data(), 1, sz, f) != sz) break;
			if (sz >= 16) {
				channels        = fmt[2] | (fmt[3] << 8);
				rate            = fmt[4] | (fmt[5] << 8) | (fmt[6] << 16) | ((long)fmt[7] << 24);
				bits_per_sample = fmt[14] | (fmt[15] << 8);
			}
		}
		else if (!memcmp(ch, "data", 4)) {
			std::vector<uint8_t> d(sz);
			size_t got = fread(d.data(), 1, sz, f);
			d.resize(got);
			const int stride = (bits_per_sample / 8) * channels;
			if (stride <= 0) break;
			tape.bits.reserve(got / stride / tape_decimate);
			long n = 0;
			for (size_t i = 0; i + stride <= got; i += stride) {
				if (n++ % tape_decimate) continue;
				// Threshold at the midpoint. MAME uses 0.03 of full scale; the
				// difference does not matter for a signal this square.
				bool hi = (bits_per_sample == 8) ? (d[i] >= 0x80)
				                                 : ((int16_t)(d[i] | (d[i + 1] << 8)) >= 0);
				tape.bits.push_back(hi ? 1 : 0);
			}
			break;
		}
		else {
			if (fseek(f, (long)sz + (sz & 1), SEEK_CUR)) break;
		}
	}
	fclose(f);
	if (!rate || tape.bits.empty()) { printf("tape: no usable PCM in %s\n", path.c_str()); return false; }
	tape.rate = rate / tape_decimate;
	printf("tape: %s  %ld Hz  %d-bit  %d ch", path.c_str(), rate, bits_per_sample, channels);
	if (tape_decimate > 1) printf("  decimated /%d -> %ld Hz", tape_decimate, tape.rate);
	printf("  %zu samples  %.1f s  (%.0f KB at 1 bit/sample)\n",
	       tape.bits.size(), (double)tape.bits.size() / tape.rate,
	       tape.bits.size() / 8192.0);
	return true;
}

// Ports rx78.v actually decodes. Anything else is "unknown" for --trace-io-unknown.
static bool port_is_decoded(uint8_t p) {
	return p == 0xf0 || p == 0xf1 || p == 0xf2 || p == 0xf3 || p == 0xf4 ||
	       (p >= 0xf5 && p <= 0xfa) || p == 0xfb || p == 0xfc ||
	       p == 0xfe || p == 0xff;
}

//----------------------------------------------------------------------------
// Scheduled input injection
//----------------------------------------------------------------------------

struct KeyAction {
	int         frame;
	std::string text;   // literal text to type, or a single @NAME token
};
static std::vector<KeyAction> key_actions;

// How many frames a key is held down. This has to be expressed in frames, not
// clock cycles: the machine samples the keyboard at vblank (and, if TODO T6 is
// implemented, wakes on a key held *at* vblank), so anything shorter than a
// frame is free to fall between two samples and be missed entirely.
static int key_hold_frames = 6;

// Expanded press/release schedule, built at parse time.
struct PendingKey { int frame; uint8_t code; bool down; };
static std::vector<PendingKey> pending_keys;

struct JoyAction {
	int      frame;
	int      port;      // 0 or 1
	uint32_t mask;
};
static std::vector<JoyAction> joy_actions;

// PS/2 set-2 scancodes, matching what rtl/keyboard.sv decodes.
// keyboard.sv ignores the extended bit, so arrows are sent unextended.
struct KeyMap { uint8_t code; bool shift; };

static bool ascii_to_ps2(char c, KeyMap& out) {
	static const uint8_t letters[26] = {
		0x1c,0x32,0x21,0x23,0x24,0x2b,0x34,0x33,0x43,0x3b,0x42,0x4b,0x3a,
		0x31,0x44,0x4d,0x15,0x2d,0x1b,0x2c,0x3c,0x2a,0x1d,0x22,0x35,0x1a
	};
	static const uint8_t digits[10] = {
		0x45,0x16,0x1e,0x26,0x25,0x2e,0x36,0x3d,0x3e,0x46
	};
	out.shift = false;
	if (c >= 'a' && c <= 'z') { out.code = letters[c - 'a']; return true; }
	if (c >= 'A' && c <= 'Z') { out.code = letters[c - 'A']; return true; }
	if (c >= '0' && c <= '9') { out.code = digits[c - '0']; return true; }
	switch (c) {
		case ' ':  out.code = 0x29; return true;
		case '\n': case '\r': out.code = 0x5a; return true;
		case '-':  out.code = 0x4e; return true;
		case ',':  out.code = 0x41; return true;
		case '.':  out.code = 0x49; return true;
		case '/':  out.code = 0x4a; return true;
		case ';':  out.code = 0x4c; return true;
		case ':':  out.code = 0x52; return true;
		case '[':  out.code = 0x54; return true;
		case ']':  out.code = 0x5b; return true;
		case '\\': out.code = 0x5d; return true;
		case '@':  case '`': out.code = 0x0e; return true;
		default: return false;
	}
}

// Named keys, for the ones with no sensible ASCII form.
// Usage: --key 120:@SPACE  /  --key 120:@STOP
static bool name_to_ps2(const std::string& n, KeyMap& out) {
	static const std::map<std::string, uint8_t> names = {
		{"SPACE",0x29}, {"RETURN",0x5a}, {"ENTER",0x5a},
		{"UP",0x75}, {"DOWN",0x72}, {"LEFT",0x6b}, {"RIGHT",0x74},
		{"STOP",0x76}, {"ESC",0x76},          // ESC = STOP+SHIFT = BREAK
		{"HOME",0x0d}, {"CLR",0x0d},          // CLR/HOME is Tab's scancode
		{"DEL",0x66}, {"INS",0x66}, {"BACKSPACE",0x66},
		{"CTRL",0x14}, {"SHIFT",0x12}, {"CAPS",0x58},
		{"PGUP",0x7d}, {"PGDN",0x7a},
	};
	std::string u = n;
	std::transform(u.begin(), u.end(), u.begin(), ::toupper);
	auto it = names.find(u);
	if (it == names.end()) return false;
	out.code = it->second;
	out.shift = false;
	return true;
}

// Expand one --key action into frame-stamped press/release events.
static void schedule_key_action(const KeyAction& a) {
	std::vector<KeyMap> seq;
	if (a.text.size() > 1 && a.text[0] == '@') {
		KeyMap km;
		if (name_to_ps2(a.text.substr(1), km)) seq.push_back(km);
		else printf("Unknown key name: %s\n", a.text.c_str() + 1);
	} else {
		for (char c : a.text) {
			KeyMap km;
			if (ascii_to_ps2(c, km)) seq.push_back(km);
			else printf("No scancode for '%c' (0x%02x)\n", c, (unsigned char)c);
		}
	}
	int f = a.frame;
	for (const KeyMap& km : seq) {
		if (km.shift) pending_keys.push_back({f, 0x12, true});
		pending_keys.push_back({f, km.code, true});
		pending_keys.push_back({f + key_hold_frames, km.code, false});
		if (km.shift) pending_keys.push_back({f + key_hold_frames, 0x12, false});
		// Gap between characters so the machine sees a clean release.
		f += key_hold_frames * 2;
	}
}

//----------------------------------------------------------------------------
// Screenshots
//----------------------------------------------------------------------------

static void save_screenshot(int frame) {
	if (!output_ptr) {
		fprintf(stderr, "screenshot: no framebuffer\n");
		return;
	}
	char filename[512];
	if (!screenshot_name_override.empty())
		snprintf(filename, sizeof(filename), "%s", screenshot_name_override.c_str());
	else
		snprintf(filename, sizeof(filename), "%s_frame_%04d.png",
		         screenshot_prefix.c_str(), frame);

	const int w = video.output_width, h = video.output_height;
	uint8_t* rgb = (uint8_t*)malloc((size_t)w * h * 3);
	if (!rgb) { fprintf(stderr, "screenshot: out of memory\n"); return; }

	// sim_video packs pixels as 0xFF000000 | B<<16 | G<<8 | R
	for (int y = 0; y < h; y++) {
		for (int x = 0; x < w; x++) {
			uint32_t px = output_ptr[y * w + x];
			uint8_t* d = &rgb[((size_t)y * w + x) * 3];
			d[0] = (px >>  0) & 0xFF;
			d[1] = (px >>  8) & 0xFF;
			d[2] = (px >> 16) & 0xFF;
		}
	}
	int ok = stbi_write_png(filename, w, h, 3, rgb, w * 3);
	free(rgb);
	printf(ok ? "Screenshot saved: %s\n" : "Error: could not write %s\n", filename);
	fflush(stdout);
}

//----------------------------------------------------------------------------
// Colour helper for the register inspector
//----------------------------------------------------------------------------

// rtl/vdp.v: bit0+bit4 red, bit1+bit5 green, bit2+bit6 blue.
// "01" -> 0x7f, "11" -> 0xff, "10"/"00" -> 0. (See TODO T14.)
static void rx78_colour(uint8_t reg, uint8_t& r, uint8_t& g, uint8_t& b) {
	r = ((reg & 0x11) == 0x11) ? 0xff : ((reg & 0x11) == 0x01) ? 0x7f : 0;
	g = ((reg & 0x22) == 0x22) ? 0xff : ((reg & 0x22) == 0x02) ? 0x7f : 0;
	b = ((reg & 0x44) == 0x44) ? 0xff : ((reg & 0x44) == 0x04) ? 0x7f : 0;
}

//----------------------------------------------------------------------------
// CLI
//----------------------------------------------------------------------------

static void print_usage(const char* argv0) {
	printf("RX-78 Verilator simulation\n\n");
	printf("Usage: %s [options]\n\n", argv0);
	printf("Media:\n");
	printf("  --cart <file.bin>         Load a cartridge image (ioctl index 1)\n");
	printf("  --ext-ram                 Enable EXT RAM (16K vs 32K RAM machine)\n");
	printf("  --tape <file.wav>         Mount a cassette WAV (ioctl -> SDRAM ->\n");
	printf("                            rtl/cassette.v, the path that ships)\n");
	printf("  --tape-direct             Drive $f0 straight from the file instead,\n");
	printf("                            bypassing SDRAM and cassette.v. Use this to\n");
	printf("                            tell a port problem from a loader problem.\n");
	printf("  --tape-play               Run the tape continuously (ignore the motor\n");
	printf("                            heuristic). Useful when a load stalls.\n");
	printf("  --tape-no-auto            Do not auto-start the motor on $f0 access\n");
	printf("  --tape-decimate <n>       Keep 1 sample in n when loading. Used to size\n");
	printf("                            the FPGA buffer; see sim_main.cpp.\n");
	printf("  --swap-joysticks          Swap joystick 1 and 2\n");
	printf("\nRun control:\n");
	printf("  --headless, --no-gui      No SDL window. Implied by HEADLESS=1.\n");
	printf("  --stop-at-frame <n>       Exit after frame n\n");
	printf("  --reset-at-frame <n>      Pulse reset at frame n\n");
	printf("\nCapture:\n");
	printf("  --screenshot <n[,n...]>   Save a PNG at each listed frame\n");
	printf("  --screenshot-name <path>  Exact output path (single screenshot only)\n");
	printf("  --screenshot-prefix <s>   Filename prefix (default \"screenshot\")\n");
	printf("\nInput injection (frame-scheduled):\n");
	printf("  --key <frame>:<text>      Type text, or @NAME for a named key.\n");
	printf("  --key-hold <frames>       Frames to hold each key (default 6). Must be\n");
	printf("                            >=1 frame: the machine samples at vblank.\n");
	printf("                            Names: SPACE RETURN UP DOWN LEFT RIGHT STOP\n");
	printf("                                   HOME DEL CTRL SHIFT CAPS PGUP PGDN\n");
	printf("  --joy1 <frame>:<spec>     Set joystick 1. spec is a hex mask or names\n");
	printf("  --joy2 <frame>:<spec>     joined by '+': up down left right fire1 fire2\n");
	printf("                            start, or 'none' to release.\n");
	printf("\nTracing (see TODO.md T9/T10/T20):\n");
	printf("  --trace-io [file]         Log every I/O port read/write\n");
	printf("  --trace-io-unknown [file] Log only ports rx78.v does not decode\n");
	printf("\nExamples:\n");
	printf("  %s --cart ../software/HamburgerShop.bin --headless \\\n", argv0);
	printf("      --key 240:@SPACE --screenshot 300 --stop-at-frame 320\n");
	printf("  %s --cart ../software/SpaceEnemy.bin --ext-ram --trace-io io.log \\\n", argv0);
	printf("      --headless --stop-at-frame 400\n");
}

static bool split_frame_arg(const char* s, int& frame, std::string& rest) {
	const char* colon = strchr(s, ':');
	if (!colon) return false;
	frame = atoi(std::string(s, colon - s).c_str());
	rest = colon + 1;
	return true;
}

static uint32_t parse_joy_spec(const std::string& spec) {
	// MiSTer joystick bit order, matching rtl/keyboard.sv:
	// 0 right, 1 left, 2 down, 3 up, 4 fire1, 5 fire2, 6 start
	static const std::map<std::string, uint32_t> bits = {
		{"right",1<<0}, {"left",1<<1}, {"down",1<<2}, {"up",1<<3},
		{"fire1",1<<4}, {"b1",1<<4}, {"fire2",1<<5}, {"b2",1<<5},
		{"start",1<<6}, {"none",0}
	};
	if (spec.find_first_not_of("0123456789abcdefABCDEFxX") == std::string::npos &&
	    spec.find_first_of("0123456789") != std::string::npos &&
	    bits.find(spec) == bits.end()) {
		return (uint32_t)strtoul(spec.c_str(), nullptr, 0);
	}
	uint32_t m = 0;
	size_t pos = 0;
	while (pos <= spec.size()) {
		size_t plus = spec.find('+', pos);
		std::string tok = spec.substr(pos, plus == std::string::npos ? std::string::npos : plus - pos);
		std::transform(tok.begin(), tok.end(), tok.begin(), ::tolower);
		auto it = bits.find(tok);
		if (it != bits.end()) m |= it->second;
		else if (!tok.empty()) printf("Warning: unknown joystick token '%s'\n", tok.c_str());
		if (plus == std::string::npos) break;
		pos = plus + 1;
	}
	return m;
}

static int parse_args(int argc, char** argv) {
	const char* env = getenv("HEADLESS");
	if (env && env[0] && env[0] != '0') headless = true;

	for (int i = 1; i < argc; i++) {
		std::string a = argv[i];
		auto next = [&](void) -> const char* { return (i + 1 < argc) ? argv[++i] : nullptr; };

		if (a == "-h" || a == "--help") { print_usage(argv[0]); return 1; }
		else if (a == "--headless" || a == "--no-gui") headless = true;
		else if (a == "--cart")   { const char* v = next(); if (v) cart_path = v; }
		else if (a == "--ext-ram") opt_ext_ram = true;
		else if (a == "--tape")      { const char* v = next(); if (v) tape_path = v; }
		else if (a == "--tape-direct") tape_direct = true;
		else if (a == "--tape-play")   { tape_manual_play = true; tape.motor = true; }
		else if (a == "--tape-no-auto") tape.autostart = false;
		else if (a == "--tape-decimate") { const char* v = next(); if (v) tape_decimate = atoi(v); }
		else if (a == "--swap-joysticks") opt_swap = true;
		else if (a == "--key-hold")       { const char* v = next(); if (v) key_hold_frames = atoi(v); }
		else if (a == "--stop-at-frame")  { const char* v = next(); if (v) stop_at_frame = atoi(v); }
		else if (a == "--reset-at-frame") { const char* v = next(); if (v) reset_at_frame = atoi(v); }
		else if (a == "--screenshot-name")   { const char* v = next(); if (v) screenshot_name_override = v; }
		else if (a == "--screenshot-prefix") { const char* v = next(); if (v) screenshot_prefix = v; }
		else if (a == "--screenshot") {
			const char* v = next();
			if (v) {
				std::string list = v, tok;
				size_t pos = 0;
				while (pos <= list.size()) {
					size_t comma = list.find(',', pos);
					tok = list.substr(pos, comma == std::string::npos ? std::string::npos : comma - pos);
					if (!tok.empty()) screenshot_frames.push_back(atoi(tok.c_str()));
					if (comma == std::string::npos) break;
					pos = comma + 1;
				}
			}
		}
		else if (a == "--key") {
			const char* v = next();
			int f; std::string t;
			if (v && split_frame_arg(v, f, t)) key_actions.push_back({f, t});
			else printf("Error: --key needs <frame>:<text>\n");
		}
		else if (a == "--joy1" || a == "--joy2") {
			const char* v = next();
			int f; std::string t;
			if (v && split_frame_arg(v, f, t))
				joy_actions.push_back({f, a == "--joy1" ? 0 : 1, parse_joy_spec(t)});
			else printf("Error: %s needs <frame>:<spec>\n", a.c_str());
		}
		else if (a == "--trace-io" || a == "--trace-io-unknown") {
			trace_io = true;
			trace_io_unknown_only = (a == "--trace-io-unknown");
			if (i + 1 < argc && argv[i + 1][0] != '-') {
				const char* path = argv[++i];
				trace_io_file = fopen(path, "w");
				if (!trace_io_file) printf("Error: cannot open %s\n", path);
			}
		}
		else printf("Warning: unrecognised option '%s' (try --help)\n", a.c_str());
	}
	return 0;
}

//----------------------------------------------------------------------------
// Simulation step
//----------------------------------------------------------------------------

static int  reset_hold   = 0;      // clk_sys cycles left to hold reset
static uint32_t joy_state[2] = {0, 0};
static uint8_t  last_io_wr = 0, last_io_rd = 0;
static long     io_counts[256] = {0};

// Liveness counters. The point of these is to tell "the core is wedged" apart
// from "the game is idle by design", which is otherwise indistinguishable from
// a still screenshot.
static long stat_irq_rises = 0;
static long stat_io_cycles = 0;
static uint16_t addr_seen_lo = 0xffff, addr_seen_hi = 0;
static uint8_t  last_int = 0;
static uint8_t  kb_rows_seen = 0;    // OR of everything the matrix ever produced
static long     stat_halt_cycles = 0;
static long     stat_intacks = 0;
static uint8_t  last_intack = 0;
static long     stat_vb_rises = 0;
static uint8_t  last_vb = 0;

static void print_run_stats() {
	printf("\n--- run stats ---------------------------------------------\n");
	printf("frames            : %d\n", video.count_frame);
	printf("Z80 INT rises     : %ld", stat_irq_rises);
	if (video.count_frame > 0)
		printf("  (%.2f per frame)", (double)stat_irq_rises / video.count_frame);
	printf("\n");
	// Only flag a CPU that is essentially refusing interrupts. Plenty of games
	// legitimately run the IRQ at a divided rate ($f3) or mask it for long
	// stretches, so anything above a trickle is normal.
	printf("Z80 INT acks      : %ld%s\n", stat_intacks,
	       (stat_vb_rises > 60 && stat_intacks < stat_vb_rises / 20)
	           ? "   <- CPU is barely taking interrupts" : "");
	printf("vblank edges      : %ld\n", stat_vb_rises);
	printf("INT line at exit  : %d%s\n", top->dbg_int,
	       top->dbg_int ? "   (asserted and never acknowledged)" : "");
	printf("I/O cycles        : %ld\n", stat_io_cycles);
	printf("CPU addr range    : $%04x .. $%04x%s\n", addr_seen_lo, addr_seen_hi,
	       (addr_seen_hi == 0 && addr_seen_lo == 0xffff) ? "  (CPU never ran!)" : "");
	printf("CPU halted        : %s\n",
	       stat_halt_cycles ? "YES - executed HALT (waiting for an interrupt)" : "no");
	printf("kb matrix (any)   : $%02x%s\n", kb_rows_seen,
	       kb_rows_seen ? "  (input reached the matrix)" : "  (no key/joy ever registered)");
	if (!tape_path.empty()) {
		if (tape_direct)
			printf("tape (direct)     : %ld $f0 accesses, played %.1f s of %.1f s%s\n",
			       tape.accesses, tape.rate ? tape.pos / tape.rate : 0.0,
			       tape.rate ? (double)tape.bits.size() / tape.rate : 0.0,
			       tape.accesses ? "" : "   <- the machine never touched $f0");
		else
			printf("tape (sdram)      : %ld $f0 accesses, sample %u of %u, motor %d, state %d%s\n",
			       tape.accesses, top->tape_pos, top->tape_len, top->tape_motor,
			       top->tape_status,
			       (top->tape_status == 11) ? "   <- S_BAD: header not understood" : "");
		if (!tape_direct)
			printf("     parser        : pstate %d  hdr_addr %u  rate %u  data_start %u\n",
			       top->tape_pstate, top->tape_hdr_addr, top->tape_rate, top->tape_data_start);
	}
	printf("ports touched     :");
	for (int p = 0; p < 256; p++) if (io_counts[p]) printf(" $%02x", p);
	printf("\n");
	int undecoded = 0;
	for (int p = 0; p < 256; p++) if (io_counts[p] && !port_is_decoded(p)) undecoded++;
	if (undecoded) {
		printf("UNDECODED ports   :");
		for (int p = 0; p < 256; p++)
			if (io_counts[p] && !port_is_decoded(p)) printf(" $%02x(%ld)", p, io_counts[p]);
		printf("   <- see TODO.md T20\n");
	}
	printf("-----------------------------------------------------------\n");
	fflush(stdout);
}

static void apply_frame_actions(int frame) {
	static int last_frame = -1;
	if (frame == last_frame) return;
	last_frame = frame;

	for (auto& pk : pending_keys)
		if (pk.frame == frame)
			input.keyEvents.push(SimInput_PS2KeyEvent(0, pk.down, false, pk.code));
	for (auto& j : joy_actions)
		if (j.frame == frame) {
			console.AddLog("frame %d: joy%d = 0x%02x", frame, j.port + 1, j.mask);
			joy_state[j.port] = j.mask;
		}
	if (reset_at_frame == frame) {
		console.AddLog("frame %d: reset", frame);
		reset_hold = 2000;
	}
	for (int f : screenshot_frames)
		if (f == frame && !screenshots_taken.count(f)) {
			screenshots_taken.insert(f);
			save_screenshot(f);
		}
}

// One full clk_sys period (two evals).
static void sim_cycle() {
	// --- rising edge -------------------------------------------------
	top->clk_sys = 1;
	bus.BeforeEval();
	input.BeforeEval();

	// --- cassette transport ------------------------------------------
	if (top->tape_access) tape.accesses++;
	if (tape.loaded()) {
		if (top->tape_access) { tape.idle = 0;
		                        if (tape.autostart) tape.motor = true; }
		else if (tape.motor && !tape_manual_play) {
			// eRX-78 stops the motor after one second with no access.
			if (++tape.idle > CLK_SYS_HZ) { tape.motor = false; tape.idle = 0; }
		}
		if (tape.motor) {
			tape.pos += (double)tape.rate / (double)CLK_SYS_HZ;
			if (tape.pos >= (double)tape.bits.size()) { tape.pos = (double)tape.bits.size(); tape.motor = false; }
		}
		size_t idx = (size_t)tape.pos;
		top->tape_in_direct = (idx < tape.bits.size()) ? tape.bits[idx] : 0;
	} else {
		top->tape_in_direct = 0;
	}

	top->tape_direct = tape_direct;
	top->joystick_0 = joy_state[0];
	top->joystick_1 = joy_state[1];
	top->ext_ram    = opt_ext_ram;
	top->pause      = opt_pause;
	top->swap_joysticks = opt_swap;

	// RX78.sv: reset = RESET | status[0] | buttons[1] | ioctl_download
	top->reset = (reset_hold > 0) || top->ioctl_download;
	if (reset_hold > 0) reset_hold--;

	top->eval();
	bus.AfterEval();

	// Liveness: always counted, cheap, and independent of --trace-io.
	if (top->dbg_int && !last_int) stat_irq_rises++;
	last_int = top->dbg_int;
	if (top->dbg_intack && !last_intack) stat_intacks++;
	last_intack = top->dbg_intack;
	if (top->VGA_VB && !last_vb) stat_vb_rises++;
	last_vb = top->VGA_VB;
	if (!top->reset) {
		if (top->dbg_cpu_addr < addr_seen_lo) addr_seen_lo = top->dbg_cpu_addr;
		if (top->dbg_cpu_addr > addr_seen_hi) addr_seen_hi = top->dbg_cpu_addr;
	}
	if (top->dbg_io_wr && !last_io_wr) { io_counts[top->dbg_io_port]++; stat_io_cycles++; }
	if (top->dbg_io_rd && !last_io_rd) { io_counts[top->dbg_io_port]++; stat_io_cycles++; }
	kb_rows_seen |= top->dbg_keys_or;
	if (!top->dbg_halt && !top->reset) stat_halt_cycles++;

	if (trace_io) {
		if (top->dbg_io_wr && !last_io_wr) {
			uint8_t p = top->dbg_io_port;
			if (!trace_io_unknown_only || !port_is_decoded(p)) {
				FILE* o = trace_io_file ? trace_io_file : stdout;
				// bus = {A,port} for OUT (n),A or {B,C} for OUT (C),r
				fprintf(o, "%8d W $%02x <- $%02x   bus=$%04x\n",
				        video.count_frame, p, top->dbg_io_data, top->dbg_io_addr);
			}
		}
		if (top->dbg_io_rd && !last_io_rd) {
			uint8_t p = top->dbg_io_port;
			if (!trace_io_unknown_only || !port_is_decoded(p)) {
				FILE* o = trace_io_file ? trace_io_file : stdout;
				fprintf(o, "%8d R $%02x            bus=$%04x\n",
				        video.count_frame, p, top->dbg_io_addr);
			}
		}
	}
	last_io_wr = top->dbg_io_wr;
	last_io_rd = top->dbg_io_rd;

	if (top->CE_PIXEL) {
		uint32_t colour = 0xFF000000u |
		                  ((uint32_t)top->VGA_B << 16) |
		                  ((uint32_t)top->VGA_G << 8) |
		                  ((uint32_t)top->VGA_R);
		video.Clock(top->VGA_HB, top->VGA_VB, top->VGA_HS, top->VGA_VS, colour);
	}

	if (!headless) audio.Clock(top->AUDIO_L, top->AUDIO_R);

	// --- falling edge ------------------------------------------------
	top->clk_sys = 0;
	top->eval();

	main_time++;
	apply_frame_actions(video.count_frame);
}

//----------------------------------------------------------------------------
// ImGui panels
//----------------------------------------------------------------------------

#ifndef _MSC_VER
static void draw_colour_swatch(const char* label, uint8_t reg) {
	uint8_t r, g, b;
	rx78_colour(reg, r, g, b);
	ImGui::ColorButton(label, ImVec4(r / 255.0f, g / 255.0f, b / 255.0f, 1.0f),
	                   ImGuiColorEditFlags_NoTooltip, ImVec2(18, 18));
	ImGui::SameLine();
	ImGui::Text("%s $%02x", label, reg);
}

static void draw_state_window() {
	ImGui::Begin("RX-78 state");

	ImGui::Text("frame %d   line %d   pixel %d",
	            video.count_frame, video.count_line, video.count_pixel);
	ImGui::Text("beam h=%d v=%d   cpu addr $%04x",
	            top->h_count, top->v_count, top->dbg_cpu_addr);
	ImGui::Separator();

	if (ImGui::CollapsingHeader("VDP", ImGuiTreeNodeFlags_DefaultOpen)) {
		draw_colour_swatch("plane1 $f5", top->dbg_p1);
		draw_colour_swatch("plane2 $f6", top->dbg_p2);
		draw_colour_swatch("plane3 $f7", top->dbg_p3);
		draw_colour_swatch("plane4 $f8", top->dbg_p4);
		draw_colour_swatch("plane5 $f9", top->dbg_p5);
		draw_colour_swatch("plane6 $fa", top->dbg_p6);
		draw_colour_swatch("bg     $fc", top->dbg_bgcolor);
		ImGui::Text("display mask $fe = %c%c%c%c%c%c",
		            (top->dbg_mask & 0x20) ? '6' : '.', (top->dbg_mask & 0x10) ? '5' : '.',
		            (top->dbg_mask & 0x08) ? '4' : '.', (top->dbg_mask & 0x04) ? '3' : '.',
		            (top->dbg_mask & 0x02) ? '2' : '.', (top->dbg_mask & 0x01) ? '1' : '.');
		ImGui::Text("cmask       $fb = $%02x", top->dbg_cmask);
		ImGui::TextDisabled("  (TODO T9: colour mask or plane priority?)");
	}

	if (ImGui::CollapsingHeader("Memory / IRQ", ImGuiTreeNodeFlags_DefaultOpen)) {
		ImGui::Text("VRAM read bank  $f1 = %d", top->dbg_rd_bank);
		ImGui::Text("VRAM write mask $f2 = $%02x", top->dbg_wr_bank);
		ImGui::Text("kb column       $f4 = $%02x", top->dbg_kb_cols);
		ImGui::Text("irq divider (from $f3) = %d   vblank irq %s   INT=%d",
		            top->dbg_irq_slow, top->dbg_irq_dis ? "masked" : "on", top->dbg_int);
	}

	if (ImGui::CollapsingHeader("I/O port hit counts")) {
		if (ImGui::BeginTable("io", 4, ImGuiTableFlags_Borders | ImGuiTableFlags_SizingFixedFit)) {
			ImGui::TableSetupColumn("port");
			ImGui::TableSetupColumn("count");
			ImGui::TableSetupColumn("decoded");
			ImGui::TableSetupColumn("note");
			ImGui::TableHeadersRow();
			for (int p = 0; p < 256; p++) {
				if (!io_counts[p]) continue;
				ImGui::TableNextRow();
				ImGui::TableSetColumnIndex(0); ImGui::Text("$%02x", p);
				ImGui::TableSetColumnIndex(1); ImGui::Text("%ld", io_counts[p]);
				ImGui::TableSetColumnIndex(2); ImGui::Text("%s", port_is_decoded(p) ? "yes" : "NO");
				ImGui::TableSetColumnIndex(3);
				if (p == 0xf0) ImGui::TextUnformatted("cassette (TODO T1)");
				else if (p == 0xfd) ImGui::TextUnformatted("unknown (TODO T9/T20)");
				else if (!port_is_decoded(p)) ImGui::TextUnformatted("undecoded (TODO T20)");
			}
			ImGui::EndTable();
		}
		ImGui::TextDisabled("Counts every I/O cycle since start. --trace-io logs them.");
	}

	ImGui::Separator();
	ImGui::Checkbox("run", &run_enable);
	ImGui::SameLine();
	if (ImGui::Button("reset")) reset_hold = 2000;
	ImGui::SameLine();
	if (ImGui::Button("screenshot")) save_screenshot(video.count_frame);
	ImGui::Checkbox("EXT RAM", &opt_ext_ram);
	ImGui::SameLine();
	ImGui::Checkbox("pause core", &opt_pause);
	ImGui::SameLine();
	ImGui::Checkbox("swap joy", &opt_swap);

	ImGui::End();
}

static void draw_video_window() {
	ImGui::Begin("RX-78 video");
	ImGui::Text("%dx%d  %.1f fps", video.output_width, video.output_height, video.stats_fps);
	ImGui::Image(video.texture_id,
	             ImVec2(video.output_width * 2.0f, video.output_height * 2.0f));
	ImGui::End();
}
#endif

//----------------------------------------------------------------------------
// main
//----------------------------------------------------------------------------

int main(int argc, char** argv, char** env) {
	Verilated::commandArgs(argc, argv);
	if (parse_args(argc, argv)) return 0;

	top = new Vemu();

	// Hook the ioctl download engine up to the core's upload port.
	bus.ioctl_addr     = &top->ioctl_addr;
	bus.ioctl_index    = &top->ioctl_index;
	bus.ioctl_wait     = &top->ioctl_wait;
	bus.ioctl_download = &top->ioctl_download;
	bus.ioctl_wr       = &top->ioctl_wr;
	bus.ioctl_dout     = &top->ioctl_dout;
	input.ps2_key      = &top->ps2_key;

	if (!tape_path.empty()) {
		// The direct path still needs the samples decoded in C++; the real path
		// only needs the file streamed in over ioctl, exactly as hps_io does.
		if (tape_direct) load_tape_wav(tape_path);
		else             printf("Mounting tape over ioctl index 2: %s\n", tape_path.c_str());
	}

	if (!cart_path.empty()) {
		// CONF_STR "F1,BIN,Load Cartridge" -> ioctl_index 1, which is what
		// rtl/rx78.v checks with (upload_index==1).
		printf("Loading cartridge: %s\n", cart_path.c_str());
		bus.QueueDownload(cart_path, 1, true);
	}

	// Index 2 == "F2,WAV". Queued after the cart so the cart reset completes
	// first; SimBus runs them back to back.
	if (!tape_path.empty() && !tape_direct) bus.QueueDownload(tape_path, 2, true);

	for (const KeyAction& a : key_actions) schedule_key_action(a);
	// SimInput drains its queue on a cycle timer; keep it short so a whole
	// frame's worth of press/release events lands inside that frame.
	input.keyEventWait = 4000;

	reset_hold = 2000;

	if (headless) {
		// SimVideo::Initialise allocates the framebuffer as part of GL setup,
		// which we are skipping, so do it by hand.
		output_ptr = (uint32_t*)calloc((size_t)RX78_WIDTH * RX78_HEIGHT, sizeof(uint32_t));
		if (!output_ptr) { fprintf(stderr, "Cannot allocate framebuffer\n"); return 1; }

		int last_reported = -1;
		while (true) {
			sim_cycle();
			if (stop_at_frame >= 0 && video.count_frame > stop_at_frame) break;
			// Progress ping so long runs don't look hung
			if (video.count_frame != last_reported && (video.count_frame % 100) == 0) {
				last_reported = video.count_frame;
				printf("frame %d\n", video.count_frame);
				fflush(stdout);
			}
			if (stop_at_frame < 0 && video.count_frame > 100000) break;  // safety
		}
		printf("Finished at frame %d\n", video.count_frame);
		print_run_stats();
		for (int f : screenshot_frames)
			if (!screenshots_taken.count(f))
				printf("Warning: never reached frame %d for screenshot\n", f);
		if (trace_io_file) fclose(trace_io_file);
		top->final();
		return 0;
	}

#ifndef _MSC_VER
	if (video.Initialise("RX-78") == 1) return 1;
	audio.Initialise();

	bool done = false;
	while (!done) {
		SDL_Event event;
		while (SDL_PollEvent(&event)) {
			ImGui_ImplSDL2_ProcessEvent(&event);
			if (event.type == SDL_QUIT) done = true;
		}
		input.Read();

		// StartFrame only does the backend NewFrame calls; the ImGui frame
		// scope itself has to be opened here, and UpdateTexture() closes it
		// with ImGui::Render(). Calling Begin() outside this pair asserts.
		video.StartFrame();
		ImGui::NewFrame();

		if (run_enable) {
			// Run one video frame worth of clk_sys per UI frame.
			int start_frame = video.count_frame;
			int guard = 4 * 1000 * 1000;
			while (video.count_frame == start_frame && guard-- > 0) sim_cycle();
		}

		if (stop_at_frame >= 0 && video.count_frame > stop_at_frame) done = true;

		draw_video_window();
		draw_state_window();
		console.Draw("Console", nullptr, ImVec2(700, 300));

		video.UpdateTexture();
	}

	audio.CleanUp();
	video.CleanUp();
#endif

	if (trace_io_file) fclose(trace_io_file);
	top->final();
	delete top;
	return 0;
}
