# RX-78 Verilator simulation

Runs the core on the host, headless or windowed, so you can boot a cartridge,
inject input, screenshot the result, and trace what the CPU does to the I/O
ports — without a DE10-Nano and without a Quartus build.

Modelled on the Apple-IIgs `vsim/` setup, sharing its `sim/` framework (imgui +
SDL2 + `sim_bus`/`sim_video`/`sim_input`).

## Build

```sh
cd vsim
make            # -> ./obj_dir/Vemu
make run        # build + launch the windowed sim
make test       # build + headless regression sweep over ../software
```

Needs Verilator 5.x and SDL2 (`brew install verilator sdl2`). The CPU is
**tv80** (Verilog) — `rtl/rx78.v` selects `tv80s` under `` `ifdef VERILATOR ``,
which Verilator predefines — so there is no VHDL and no ghdl step. `jt89` has a
pure-Verilog path too (`jt89_verilog.qip`); its `.vhd` files are unused here.

`make` copies `rtl/rom.mem` next to the binary because `rtl/rom.v` does a
literal `$readmemh("rom.mem", ...)` relative to the working directory. **Run the
binary from this directory.**

Speed is around 12 simulated frames/second, so a 300-frame test takes ~25 s and
the full sweep takes ~6 minutes. The cost is dominated by clocking the whole
design at 56 MHz `clk_sys`; that is deliberate, since faking it would change the
CPU/video phase relationship the core actually depends on.

## Headless use

```sh
# boot a cart and grab a frame
./obj_dir/Vemu --headless --cart ../software/HamburgerShop.bin \
    --screenshot 280 --stop-at-frame 300

# 32K carts size themselves from the ioctl download; no EXT RAM needed
./obj_dir/Vemu --headless --cart ../software/SpaceEnemy.bin \
    --screenshot 280 --stop-at-frame 300

# press a key, then screenshot the result
./obj_dir/Vemu --headless --cart ../software/MobileSuitGundam.bin \
    --key 200:z --screenshot 300 --stop-at-frame 320

# hold the stick left from frame 200
./obj_dir/Vemu --headless --cart ../software/Ultraman.bin \
    --joy1 200:left+fire1 --screenshot 260 --stop-at-frame 280
```

`--help` lists everything. The options that matter:

| Option | Notes |
|---|---|
| `--cart <file>` | Loaded through the real `ioctl` path at index 1, exactly as `hps_io` does for `F1,BIN`. |
| `--ext-ram` | The `EXT RAM` OSD bit (16K vs 32K RAM machine). No longer needed for 32K carts — see TODO T18. |
| `--key <frame>:<text>` | Types text, or `@NAME` for `SPACE RETURN UP DOWN LEFT RIGHT STOP HOME DEL CTRL SHIFT CAPS PGUP PGDN`. |
| `--key-hold <frames>` | Frames to hold each key, default 6. **Do not set this below 1.** The machine samples the keyboard at vblank, so a sub-frame press falls between two samples and is silently lost. |
| `--joy1/--joy2 <frame>:<spec>` | `up down left right fire1 fire2 start` joined with `+`, or a hex mask, or `none`. The mask persists until changed. |
| `--screenshot <n,...>` | PNG per listed frame. |
| `--screenshot-name <path>` | Exact path, for scripting. |
| `--stop-at-frame <n>` | Required for headless runs; otherwise it stops at 100000 frames. |
| `--tape <file.wav>` | Mounts a cassette over ioctl index 2 into SDRAM, played by `rtl/cassette.v` — the path that ships. Needs the BS-BASIC cart. |
| `--tape-direct` | Drives `$f0` straight from the file instead, bypassing SDRAM and `cassette.v`. Tells a port problem apart from a loader problem. |
| `--trace-io [file]` | Every I/O read/write with the port, data and bus value. |
| `--trace-io-unknown [file]` | Only ports `rtl/rx78.v` does not decode. |

Everything schedulable is in **frames**, not cycles, because frames stay
meaningful across clock changes — which matters, since TODO T2 changed the CPU
clock and every cycle-based schedule would have shifted under it.

## Run stats

Every headless run ends with a summary. It exists because a screenshot alone
cannot distinguish "title screen, as designed" from "CPU wedged with a title
screen left in VRAM":

```
--- run stats ---------------------------------------------
frames            : 421
Z80 INT rises     : 180  (0.43 per frame)
Z80 INT acks      : 176
vblank edges      : 421
INT line at exit  : 0
I/O cycles        : 7253
CPU addr range    : $0000 .. $ffff
CPU halted        : no
kb matrix (any)   : $04  (input reached the matrix)
ports touched     : $23 $ef $f1 $f2 ...
UNDECODED ports   : $23(1) $ef(1)   <- see TODO.md T20
```

How to read it:

- **`INT rises` ≈ 1.0/frame** is a healthy IRQ-driven game.
- **Low IRQ + high I/O** is a game that polls instead. Normal (Champion Racer,
  Excite Baseball, Excite Tennis).
- **Low IRQ + low I/O** means wedged.
- **`kb matrix (any)`** is the OR of all 15 matrix rows, so it proves input
  reached the core independently of which column the CPU has selected. If this
  is `$00` after a `--key`, the injection is broken; if it is non-zero and the
  game still does nothing, the game isn't reading it.
- **`UNDECODED ports`** is a standing report against TODO T20.

## Tape

```sh
./tape_test.sh              # Yellow Cab, 44100 Hz, ~8 min
./tape_test.sh graphmaths   # Graphics Mathematics, 22050 Hz, ~10 min
TAPE_DIRECT=1 ./tape_test.sh
```

Separate from `run_tests.sh` because a tape plays in real time: 82 seconds of audio is ~4900 frames
at ~12 frames/second. Both preserved dumps load and run.

The run stats grow a tape line showing `$f0` accesses, position, motor state and the parsed header:

```
tape (sdram)      : 4625684 $f0 accesses, sample 3537583 of 3613696, motor 0, state 5
     parser        : pstate 4  hdr_addr 45  rate 44100  data_start 44
```

`state 11` is `S_BAD` — `cassette.v` could not parse the header. The player stopping short of the
end is normal: the motor is inferred from `$f0` activity, so it stops once the loaded program takes
over and stops reading.

## Regression sweep

```sh
./run_tests.sh              # every cart in ../software
./run_tests.sh gundam       # substring filter
FRAMES=600 ./run_tests.sh   # run longer
```

Writes one PNG per cart to `shots/` and prints the liveness table. To set a
baseline before changing the core:

```sh
./run_tests.sh && cp -r shots shots-ref
# ...make a change, rebuild...
./run_tests.sh
# then diff shots/ against shots-ref/ by eye, or with ImageMagick:
for f in shots/*.png; do compare -metric AE "$f" "shots-ref/$(basename $f)" null: 2>&1; echo " $f"; done
```

## Debug taps

`sim.v` pulls internal state out of the core with hierarchical references
(`rx78.p1`, `rx78.cpu.rd_n`, `rx78.kb.keys[]`, …). None of it drives the core,
and no debug hooks were added to `rtl/` to make it work — there is no
`--public-flat-rw` either. The windowed
build shows all of it live in the "RX-78 state" panel, with colour swatches for
the six plane palettes and the background register, plus a per-port hit table.

Two taps reach into the CPU instance (`rx78.cpu.rd_n`, `rx78.cpu.halt_n`). That
is the `` `ifdef VERILATOR `` branch of `rx78.v`, which is always the branch the
sim builds — but it does not exist in the T80 synthesis path, so keep those
references inside `sim.v`.

`rtl/rx78.v` leaves the CPU's `RD_n` unconnected, which is why read direction is
taken from the CPU rather than derived from `io_en & WR_n` — the latter is also
true during the first T-state of a *write*.

## Current baseline

`shots-ref/` and the table below are the state of the core as of the T2-T8/T13/T18 fixes, at
`FRAMES=620`. Eleven of thirteen carts run; see `TODO.md` T24 for the other two.

```
CART          FRAMES INT/frame  IO-CYCLES  NOTES
basic            621      0.02      27742  polling(no-irq)
burgershop       621      0.00        444  STUCK            <- TODO T24
golf             621      0.58     260644  ok          $fd
racer            621      0.41     149194  polling(no-irq)
gundam           621      0.61      18494  ok
mahjong          621      0.00       4244  STUCK            <- TODO T24
prowres          621      1.00      51281  ok          $fd
ultraman         621      1.00     403284  ok          $fd
abcword          621      0.93     211963  ok          $fd $f0
exbaseball       621      0.68     259089  ok
extennis         621      0.67     264179  ok
senemy           621      1.00       5612  ok
motocross        621      0.47     113858  polling(no-irq)
```

For comparison, before any of that work five carts were wedged (basic, burgershop, gundam, mahjong,
motocross) and four more took essentially no interrupts.

**Timing windows move.** Several titles accept their "press a key" prompt only inside a narrow window
— Super Motocross has about 20 frames — and that window shifts whenever the CPU clock changes. The
sweep therefore presses keys repeatedly rather than betting on one frame number. If a clock change
appears to break a game, vary the input timing before believing it.

## What this found first

Worth knowing, because it is why the harness is shaped the way it is:

- **Nine of thirteen carts were wedged**, including Mobile Suit Gundam. They write `$f4 <- $10` and
  then poll `$f4` forever; `keyboard.sv` returned `0` for any column outside 1..15, so they never saw
  a key. Fixed — see `TODO.md` T6 and T13. T13's original verdict was wrong and has been corrected.
- **`$fd` is written by Challenge Golf, Ultraman, Pro Wrestling and ABC Word Game.** MAME does not
  decode `$fd` at all; only Takeda's document lists it. Prime suspect for the programmable priority
  register (TODO T9), and still unimplemented.
- **ABC Word Game touches `$f0`** — the cassette port (TODO T1).
- **`$23` and `$ef` are written by every cart at boot**, not just *rengo* as MAME's comment suggests.
