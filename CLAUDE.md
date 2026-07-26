# CLAUDE.md — Bandai RX-78 core for MiSTer FPGA

Guidance for working in this repo. Read `TODO.md` for the prioritised accuracy work — including its
Sources section — before changing any emulated behaviour.

## What this is

An FPGA re-implementation of the **Bandai RX-78 "Gundam" home computer** (Japan, July 1983) for the
MiSTer platform, by Pierre Cornier (pierco) and Alan Steremberg (alanswx).

The machine: Z80A at 4.09 MHz, 8 KB IPL ROM, cartridge slot, 6-plane 1bpp bitmap video at 192x184,
SN76489 sound, membrane keyboard, two joystick ports, and a cassette interface (via the BS-BASIC
cartridge). Mostly a games machine.

## Repository layout

```
RX78.sv              MiSTer top level: hps_io, OSD CONF_STR, PLL, clock enables, video_mixer
RX78.qsf / .qpf      Quartus project (top entity is sys_top, from sys/)
files.qip            The core's own file list — add new RTL here
rtl/
  rx78.v             Main core: address decode, I/O port map, VRAM banking, IRQ, CPU + sound glue
  vdp.v              Video: 6 plane -> colour resolution, palette decode, active-area gating
  video.v            Raster counters (h/v, sync, blank)
  keyboard.v(.sv)    PS/2 -> RX-78 key matrix, plus joystick injection
  cart.v             8 KB cartridge block RAM (two are instanced for a 16 KB cart)
  cart32.v           32 KB variant — DEAD CODE, not instanced by rx78.v (see TODO T19)
  dpram.v            Dual-port RAM used for main/ext RAM and all six VRAM planes
  rom.v / rom.mem    8 KB IPL ROM, initialised from the .mem hex file
  pll/, pll.v        Altera PLL: outclk_0 = 56 MHz (clk_sys), outclk_1 = 7 MHz (clk_vid)
  T80/, tv80/        Two Z80 cores; T80s for synthesis, tv80s under `ifdef VERILATOR`
  jt89/              Jose Tejada's SN76489 implementation
sys/                 MiSTer framework — vendored, do not edit
vsim/                Verilator simulation - build, run, screenshot, trace. See
                     vsim/README.md. This is the fast path for any core change.
verilator/           OLD Verilator testbench. Stale: tb.cpp drives cpu_clk and
                     snd_clk ports that rtl/rx78.v no longer has. Use vsim/.
releases/            Prebuilt .rbf files
software/            Cart dumps and tape WAVs for testing (not part of the build)
mame/                A full local MAME checkout, used only as reference. Untracked and
                     gitignored; several GB. Not part of the core.
```

## Building

**Synthesis** — Quartus (Cyclone V, MiSTer standard flow). Open `RX78.qpf`, compile; output is an
`.rbf`. New RTL files must be registered in `files.qip`, not the `.qsf`.

**Simulation** — `vsim/`, Verilator + SDL2. Read `vsim/README.md` first.

```sh
cd vsim
make            # -> obj_dir/Vemu
make run        # windowed sim with a register inspector
make test       # headless sweep over every cart in software/, writes shots/
```

Verify a change like this, rather than by building an .rbf:

```sh
cd vsim
./run_tests.sh && cp -r shots shots-ref   # baseline BEFORE your change
# ...edit rtl/...
make && ./run_tests.sh                     # compare shots/ against shots-ref/
```

The headless binary boots a cart, injects keys/joystick at chosen frames, writes PNGs, and prints
liveness counters. **Use the counters, not just the screenshot** — a still image cannot tell a title
screen from a wedged CPU. `--trace-io` logs every I/O port access, which is how the undecoded-port
and `$fd` findings in `TODO.md` were obtained.

The sim uses the `tv80s` branch of the `ifdef VERILATOR` in `rtl/rx78.v`, so no VHDL is involved. If
you change CPU glue, change both branches.

`cd verilator && make rom` regenerates `rtl/rom.mem` from `roms/ipl.rom` via hexdump.

There is no unit-test suite; `vsim/run_tests.sh` is the regression harness.

## Architecture notes

**Clocking.** `clk_sys` = 56 MHz drives all the synchronous logic and the I/O port block.
`clk_vid` = 7 MHz drives the raster counters and the VDP pixel pipeline. `main_clk` is `clk_vid`
divided by two in `RX78.sv` (~3.5 MHz) and is used as a real clock for both the Z80 **and** jt89.
Tying those two together is wrong on hardware — see TODO T2. The `Pause` OSD option works by
gating `main_clk`, which also stops sound.

**Memory decode** (`rtl/rx78.v`) is by address comparison against `~io_en`, where
`io_en = ~IORQ_n & M1_n`. `MREQ_n` is not connected. Regions:

| Range | Contents |
|---|---|
| `$0000-$1fff` | IPL ROM |
| `$2000-$5fff` | Cartridge (two 8 KB blocks, split on `zaddr[14]`) |
| `$6000-$afff` | Expansion RAM, gated by the `EXT RAM` OSD bit. Also where the upper half of a 32 KB cart gets copied. |
| `$b000-$ebff` | Main RAM |
| `$ec00-$ffff` | VRAM window into the selected plane(s) |

**VRAM** is six independent 8 KB dual-port RAMs, one per bitplane. Writes go to every plane whose bit
is set in `$f2`; reads come from the single plane selected by `$f1` (1-6). The CPU side is addressed
by `zaddr[12:0]`; the video side by `vdp_addr` from `vdp.v`. Displayed data starts at plane offset
`$ec0`, which is CPU address `$eec0` — the first `$2c0` bytes of the window are not displayed.

**Video** resolves six 1bpp planes into a pixel through a 4-state pipeline in `vdp.v`, splitting the
planes into two groups via `$fb`, OR-ing each group's palette registers, and picking foreground over
background over the `$fc` background colour. **What `$fb` actually does is disputed — see TODO T9.**

**Keyboard** is a 15-row matrix. Rows 1-9 are keys, rows 10-15 are the two joysticks. The row is
selected by writing to `$f4` and read back from the same port. `keyboard.sv` holds the matrix in
`keys[0..14]` (index = row - 1) and injects joystick state into rows 10-15 every clock.

## Working on emulation accuracy

**This is the most important section in this file.**

There are three implementations of this machine — this core, MAME, and Takeda's `eRX-78` — and they
disagree with each other and with the documentation. **MAME is not a specification.** Its RX-78
driver is still flagged `MACHINE_NOT_WORKING`, several of its handlers carry a literal `// guess`
comment, and much of its video model was fitted by eye to make particular games look right.

Before changing any emulated behaviour:

1. Read the relevant entry in `TODO.md`, then the sources it cites (listed with URLs in that file's
   Sources section): Bandai's manual is the only primary source, Takeda's page is the only
   register-level document, and eRX-78 is a fully independent 2006 implementation.
2. Check what `TODO.md` already records about that item — every entry is tagged with a provenance
   verdict and the sources behind it.
3. Prefer changes where **two independent sources agree**. Be very cautious where they don't.

Some places where this core is **already right and MAME is wrong** — do not "fix" these toward MAME:

- The `$f4` column decode (`$30` returns the OR of all 15 rows; anything else outside 1..15 returns
  zero). This core matches the hardware doc and `eRX-78` exactly. MAME masks with `& 15`.
- Palette intensity bits 4/5/6. The hardware doc's prose says 3/4/5 and is wrong; this core, MAME and
  `eRX-78` all agree on 4/5/6.

And one place where **everybody is wrong**, including MAME: joystick rows 10-15 mirror the low nibble
into the high nibble on real hardware (TODO T4).

When you do change behaviour, record the source that justified it in the commit message, and update
the corresponding `TODO.md` entry rather than deleting it — the provenance is worth more than the
diff.

## Conventions

- Verilog/SystemVerilog, 2-space indent in `rtl/` (files vary; match the file you're in).
- Non-blocking assignments in clocked blocks — commit `f9b3990` converted the core to this
  deliberately.
- OSD options live in `CONF_STR` in `RX78.sv`; the bit indices in the string must match the
  `status[...]` uses below it.
- Reference documents are not vendored — see the note in `.gitignore` and `TODO.md`'s Sources.
