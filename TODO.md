# RX-78 core — accuracy TODO

Derived from a line-by-line comparison of `rtl/` against MAME's `rx78.cpp`, Takeda Toshiya's
`eRX-78` emulator, Takeda's hardware analysis, and **Bandai's own user-manual specification page**.
Every source is cited by URL in the Sources section at the end, with a reliability order.

**Every item carries a provenance verdict.** The point is to fix what is genuinely wrong on hardware
and *not* to import MAME's guesses. MAME's RX-78 driver is still `MACHINE_NOT_WORKING`, its `$f3`
handler is labelled `// guess` in its own source, and its video model was fitted by eye to specific
games.

Verdict legend:

| | Meaning |
|---|---|
| ✅ | MiSTer is wrong, the correct behaviour is established by ≥2 independent sources. Fix it. |
| ⚠️ | **MAME is also wrong.** Do not copy MAME here. |
| 🔵 | MiSTer is already right and MAME is wrong. Do not "fix" toward MAME. |
| ❓ | Genuinely unresolved. Needs hardware or an IPL disassembly. Don't churn it. |

Items marked **measured** were checked by running the core in `vsim/` — see T23.

> **Status:** T2, T3, T4, T5, T6, T7, T8, T13 and T18 are **fixed and verified in `vsim/`**. Before
> that work nine of thirteen cartridges were wedged; two still are (see T24). Each fixed entry keeps
> its analysis and records the measurement that confirmed it — the provenance is the point, not the
> diff. `cd vsim && ./run_tests.sh` reproduces the current state.

---

# Tier 1 — Confirmed wrong, fix with confidence

## T1. Cassette / tape support — **IMPLEMENTED** ✅

**Status: done, and verified against both preserved dumps.** Yellow Cab loads from
`yellowcab.wav` through the BS-BASIC monitor and auto-runs; Graphics Mathematics loads from a
22050 Hz image. Reproduce with `cd vsim && ./tape_test.sh`.

What was built:
- `rtl/rx78.v` decodes `$f0` — read returns `~tape_in` in bit 0, write latches `~zdo[0]` — plus a
  `tape_access` strobe, since there is no motor control port.
- `rtl/cassette.v` streams the waveform out of SDRAM: walks the RIFF chunks for rate/format/data
  offset, thresholds each sample, and clocks it with a phase accumulator (no divider).
- `RX78.sv` brings up the SDRAM controller (it was tied off), mounts a WAV over ioctl index 2,
  latches the image size, rewinds on mount, and mixes the tape into the audio so a load is audible.
- OSD: `F2,WAV,Load Tape`, `Tape Sound`, `Tape Rewind`.

### Hardware bring-up: two defects the simulator could not see

The first `.rbf` hung on every tape while `vsim` loaded both dumps. Neither fault is visible in
simulation, and both are worth remembering as a class. With both fixed, Yellow Cab loads and runs
on real hardware — `FOUND CAB` / `LOADING CAB` and the tone audible through **Tape Sound**:

1. **`SDRAM_CLK` had no driver.** `rtl/sdram.sv` came from `BasicMasterJr_MiSTer`, which drives the
   pin at its *top level* (`assign SDRAM_CLK = clk_sys;`) and leaves the module port dangling
   (`.SDRAM_CLK()`). `RX78.sv` instead wired the port straight to the pin — so nothing drove it,
   Quartus tied AD20 to a constant, and the memory never saw a clock edge. Every tape byte read back
   was whatever the floating bus happened to hold. Restored Sorgelig's original `altddio_out` block,
   which is present in the copies in `Amstrad_MiSTer`, `Apple-II-Verilog_MiSTer` and
   `Apple-IIgs_MiSTer` and generates the chip clock 180° from the controller's.
   The behavioural model in `vsim/rtl/sdram.sv` has no `SDRAM_*` pins at all, so simulation can
   never catch this — check the fitter's pin report, not the waveform.

2. **A combinational 32-bit divider in `cassette.v`.** `play_len` was `data_bytes / frame_stride`,
   which inferred 73 ns of logic that had to settle in one 17.9 ns `clk_sys` cycle. It was the
   *only* failing path in the design: worst-case setup slack **-55.5 ns**, TNS -768, all of it on
   `play_len[31:0]`. On hardware it latched a garbage length, so playback ended immediately and the
   monitor waited on a tape that never moved. Fixed by counting the position in **bytes** rather
   than sample frames, which removes the divider and the `play_pos * frame_stride` multiplier in the
   address path together. Verilator has no timing model, so this too was invisible in `vsim`.

   Equivalence was checked with a standalone bench (cassette.v + the behavioural SDRAM, fed
   synthetic WAVs at 8-bit mono / 16-bit mono / 16-bit stereo): `tape_bit` produces an identical
   edge count before and after, and the tape now stops exactly on the end of the data chunk for
   every stride.

Both were introduced by the commit that added tape support and had never been through Quartus —
that commit's own note said as much. **Run a fit and read `output_files/*.sta.rpt` before shipping
an `.rbf`;** a clean `vsim` run says nothing about either failure mode.

**Original analysis follows** — it is what the implementation was built from.

**Provenance:** all three implementations agree the port exists and what it does.
- Hardware doc: `$f0 R/W — データレコーダ (data recorder), bit0: signal input/output`.
- `eRX-78` `cmt.cpp`: write bit0 → MIC, read → EAR.
- MAME `cass_r`/`cass_w`.

**The cassette interface is physically on the BS-BASIC cartridge, not in the main unit.** Bandai's
spec page lists the cartridge types as "various program ROM cartridges (games etc.)" and
"**BS-BASIC cartridge (with cassette interface included)**". That is why every cassette title in
MAME's `hash/rx78_cass.xml` carries `sharedfeat requirement rx78_cart:basic`. Decoding `$f0`
unconditionally is a harmless simplification, but this is the reason tape and BASIC are coupled.
`software/bs-basic.bin` is present for testing.

**Polarity — this one matters, and MAME is authoritative.** MAME reads
`(m_cass->input() > 0.03) ? 0 : 1` and writes `BIT(data,0) ? -1.0 : +1.0`, i.e. **inverted in both
directions**. `eRX-78` inverts neither. MAME's inversion was introduced in commit `06b26a0f55a`,
*"fixed loading of real tapes [Haze]"* — changed specifically to make the real preserved Gaming
Alexandria tape dumps load. That is the only behaviour in this entire comparison validated against
genuine media, so **match MAME's polarity**, not eRX-78's.

**No motor control port exists.** Neither the doc nor any implementation has one. `eRX-78` `cmt.cpp`
synthesises it: any access to `$f0` turns the motor on; the motor turns off after 1 second with no
access (`framecnt >= FRAMES_PER_SEC`). That heuristic ships in a working emulator, so auto-play on
first `$f0` touch plus auto-pause after ~1 s idle is a proven UX. Offer manual Play/Stop/Rewind in
the OSD too, since it is a heuristic and not hardware.

**Media format**, measured from `software/yellowcab.zip` (the real dump):

- Measured across the whole archive: Yellow Cab Side A/B and the MAME software-list `yellowcab.wav`
  are 8-bit mono PCM at **44100 Hz** (81.9 s / 3.61 MB); `graphmaths.wav` is 8-bit mono at
  **22050 Hz** (106.4 s / 2.35 MB). **The rate is not constant**, so it has to come from the header
  rather than be assumed — which is why `cassette.v` parses the chunks.
- Signal is FSK with two tone groups: **~1200 Hz and ~2400 Hz** (half-period histogram peaks at
  18-20 and 8-11 samples). This is Kansas-City-Standard-shaped.
- Because the highest tone is 2400 Hz, the waveform can be decimated hard before it reaches the FPGA.
  Decimation was considered to fit a BRAM buffer and then dropped: SDRAM was unused, and 3.6 MB in a
  32 MB part removes the size limit and the resolution compromise together. The image is stored as
  the raw WAV, thresholded on the fly.

**Still outstanding:**
- **Save to tape (`*S`).** `tape_out` is decoded and latched but goes nowhere. Writing needs a sink
  the HPS can capture — either `ioctl_upload` or the SD block interface, which `hps_io.sv` supports.
- **Real tape via the ADC.** Bandai's manual and T1's notes both want it; BasicMasterJr wires an
  `adc_cassette_bit` for this and is the obvious model.
- **Explicit transport control.** Play/Stop are inferred from `$f0` activity (eRX-78's heuristic).
  Only Rewind is exposed. Fine so far, but a stuck load has no manual override.
- `keyboard.sv` still cannot send STOP without SHIFT, so BREAK works but STOP alone does not — see
  T19. That is how a tape load is meant to be aborted.

## T2. CPU and sound clocks — **FIXED** ✅

**Status:** `RX78.sv:331-333` derives `main_clk` as `clk_vid / 2` = **3.5 MHz** and uses it as the
clock for *both* the T80 and jt89 (`rx78.v:396`).

**Correct values. Bandai's spec page states `Z-80A′ (4.1MHz)` outright**, and four further sources
agree:

| | Bandai manual | Hardware doc | eRX-78 | MAME | z88dk | This core |
|---|---|---|---|---|---|---|
| Z80 | **4.1 MHz** | 28636.36 kHz ÷ 7 ≈ 4.1 MHz | — | `MASTER_CLOCK/7` | 4.090909 MHz | 3.5 MHz |
| SN76489 | — | ÷ 8 = 3.579545 MHz | `3579545` | `XTAL/8` | 3.579545 MHz | 3.5 MHz |

So the CPU runs **~14% slow** and audio sits ~2% flat. Worse, the two are structurally welded
together by the shared `main_clk`, so neither can be corrected independently — this is very likely
behind the readme's long-standing "choppy sound on the Gundam title screen".

**Fixed.** `RX78.sv` now derives the CPU clock as `clk_sys/14` and gives jt89 a `clk_sys/16` clock
enable instead of its own clock. Since `clk_sys` is 8x the pixel clock, those are exactly the
hardware ratios (CPU master/7, PSG master/8, pixel master/4). `rx78.v` gained a `snd_cen` input and
the PSG write strobe became a one-shot in the `clk_sys` domain — jt89 latches writes at full clock
rate and only gates its synthesis on `clk_en`, so no clock crossing is needed. **CPU speed and audio
pitch are no longer welded together.**

Measured: Ultraman went from 227,609 to 261,237 I/O cycles over the same 420 frames, +14.8%, matching
the 16/14 ratio change.

**A speed change moves game timing, and that is not a regression.** Super Motocross only accepts its
"press RETURN" prompt inside a window of roughly 20 frames, and that window shifts when the CPU
clock changes. It looked like a T2 regression until the key was pressed repeatedly instead of at one
fixed frame. `vsim/run_tests.sh` now mashes keys for the titles that need it. Bear this in mind
before reading any future clock change as a break — check by varying the input timing first.

**Still outstanding — deliberately.** The absolute frequencies remain 2.2% low, because the PLL
produces 56 MHz rather than 57.272727 MHz (= 2 x master). Correcting the two output frequencies in
`rtl/pll/pll_0002.v` would fix that, but it also moves the refresh rate from 60.08 Hz to 61.45 Hz,
and **T12 flags that as a display-compatibility decision for the core authors**. The ratio bug (the
unambiguous part) is fixed; the absolute-frequency change is one line and is left for pierco to
approve. It has not been through Quartus.

## T3. Cartridge ROM must be read-only; 32 KB carts — **FIXED** ✅

**Status:** `rtl/rx78.v:163-175` handles a 32 KB cart by *copying* its upper 16 KB into the ext-RAM
block at `$6000`. That memory stays writable, so a game that writes anywhere in `$6000-$9fff`
**overwrites its own code**.

**Provenance:** ROM is not writable — this is structural, not a matter of interpretation.
- `eRX-78` `memory.cpp`: `SET_BANK(0x2000, 0x5fff, wdmy, cart)` — writes go to a dummy page.
- MAME installs a *read* handler over `$2000`-`$9fff` and lets the underlying `.ram()` absorb writes,
  so cart reads always return ROM.

Note `eRX-78` only supports 16 KB carts; the 32 KB dumps (Excite Baseball, Space Enemy, Super
Motocross, Excite Tennis) are handled only by MAME, which maps them contiguously `$2000-$9fff`
(capped at `0x9000` bytes). z88dk's platform page says "24k? ROM cartridges @0x2000", so the exact
upper bound is not certain — but read-only is.

**Fixed.** `rx78.v` now instantiates two more 8K `cart` blocks covering `$6000-$7fff` and
`$8000-$9fff`, and cartridge ROM outranks expansion RAM in the `zdi` read mux. Writes still land in
`ext_ram` and are simply ignored on read, which is exactly MAME's arrangement. The `fillRam` copy
into `ext_ram` is gone.

**Related (T18) also fixed.** `cart_big` is latched during the ioctl download by watching
`upload_addr` pass 16K, so a 32K cart maps itself. Verified: Space Enemy, Excite Baseball, Excite
Tennis and Super Motocross all boot **without** `EXT RAM`, and behave identically with it enabled.
`readme.md`'s "activate the EXT RAM in OSD" instruction is now obsolete.

## T4. Joystick rows must mirror the low nibble into the high nibble — **FIXED** ⚠️

**Both MAME and this core are wrong.** Do not copy MAME.

**Status:** `keyboard.sv:208-343` sets only bits 0-3 of rows 10-15. MAME sets bits 0-3 for player 1
(rows 10-12) and bits 4-7 for player 2 (rows 13-15).

**Correct:** every joystick signal sets **two** bits — the low-nibble bit and the corresponding
high-nibble bit. Confirmed twice over:

- Hardware doc key map, rows 10-15: `b0..b3` and `b4..b7` carry identical labels
  (row 10 = `J1-U, J1-LU, J1-L, J1-B1, J1-U, J1-LU, J1-L, J1-B1`).
- `eRX-78` `keyboard.cpp:61-85`, unambiguously: `status[9] |= 0x11` for up, `0x22` for up-left,
  `0x44` for left, `0x88` for button 1 — and the same pattern for rows 11-15.

So: rows 10-12 = joystick 1, rows 13-15 = joystick 2, each with mirrored nibbles.
Row/direction assignment in this core is otherwise correct; only the mirroring is missing.

This is the most concrete "everyone got it wrong" finding in the comparison, and it would explain any
game that reads the upper nibble and sees a dead stick.

**Fixed.** The two hand-written if/else chains in `keyboard.sv` were replaced with a single
`joy_decode()` function used by both sticks, and the rows are assigned as `{nibble, nibble}`. No
regression in the sweep. No game in `software/` is yet known to read the upper nibble, so this is
correctness-by-documentation rather than a fix for an observed symptom.

## T5. VRAM read with an invalid bank should return `$ff` — **FIXED** ✅

**Status:** `rtl/rx78.v:205` — with `$f1` set to 0 or >6 every plane is deselected and `vram_q`
resolves to `8'h00`.

**Correct:** `$ff`. `eRX-78` `memory.cpp`: `if(1 <= rpage && rpage <= 6) {...} return 0xff;`
MAME `vram_r`: `if(m_vram_read_bank == 0 || m_vram_read_bank > 6) return 0xff;` Both agree, and
`$ff` is what an unmapped/floating bus does anyway.

**Fixed** in `rx78.v` via a `vram_bank_valid` guard on `vram_q`. No behavioural change in any of the
13 carts — nothing in `software/` reads an invalid bank — so this is correctness only.

## T6. Keyboard-wake interrupt — **FIXED** ✅

**The feature is real.** Bandai's spec page lists, under display/other functions:
**"キー及びタイマー割込み可" — "key and timer interrupts are available."** The manufacturer says a
*key* interrupt exists. That settles it.

MAME's implementation: when IRQs are masked via `$f4` bit 4, an IRQ still fires at vblank if the
*currently selected* row has any key down (`rx78.cpp:478-484`). MAME's comment names Gundam and
Excite Baseball as users.

**This core had it and removed it** (commit `6d2e762`, "removed keyboard int", 2021-07-06). The
removed implementation was **not** MAME's algorithm and was broken on its own terms: commit `4f94245`
latched `kb_new <= zdo` during a *read* cycle, and `zdo` is the CPU's data **output** bus — garbage
during a read. It was also edge-triggered on a change in the readback rather than level-triggered at
vblank.

So the 2021 removal deleted a broken attempt, not a nonexistent feature. Reimplement with MAME's
semantics (level, sampled at vblank, on the selected row).

**Confirmed in simulation.** Mobile Suit Gundam is frozen on the current core — it masks the vblank
IRQ via `$f4` bit 4 and then has nothing left to wake it. Restoring this interrupt **together with
T13** takes it from the title screen into the game:

```
                            before      after
Z80 INT rises               1           3
I/O cycles (320 frames)     436         1330
```

Neither change works alone: without T13 the wake condition can never see a key, and without T6 there
is no interrupt to wake on. That interdependence is very likely why the keyboard interrupt looked
useless in 2021 and got deleted.

**Fixed.** `rx78.v` now raises the interrupt at vblank when the vblank source is masked and the
selected column has any key down. Mobile Suit Gundam goes from frozen on its title screen to actual
gameplay; Super Motocross reaches its menu; BS-BASIC accepts typed input.

## T13. `$f4` keyboard column decode — **FIXED** ✅ *(corrected verdict: MAME was right)*

> **This entry originally said the opposite.** It was written from documents alone and concluded the
> core was right and MAME's `& 15` masking was a deviation. Running the games in `vsim/` disproved
> that: the masking is load-bearing and nine of thirteen carts are wedged without it. What follows is
> the corrected analysis; see `vsim/experiments/` for the reproduction.

`keyboard.sv:34-41` special-cases the literal value `$30` → OR of all 15 rows, accepts 1..15 → that
row, and returns **0 for everything else**. That last clause is the problem.

**What the games actually do.** Mobile Suit Gundam scans the matrix, then writes `$f4 <- $10` and
polls `$f4` from then on — 29 reads with the column never changing again. `$10` is outside 1..15, so
every read returns 0 and the game can never see a key. It also leaves bit 4 set, masking the vblank
IRQ, so nothing else wakes it. Excite Baseball does the same. MAME's TODO comment names exactly these
two: *"special codes: 10 (disable irq?) used by gundam and exbaseb"*.

**MAME's model is coherent and this core's is not.** MAME does `m_key_mux = data & 15`, i.e. bits 3:0
select the column and bit 4 disables the IRQ. Under that one rule:
- `$10` = column 0 with the IRQ bit set,
- `$30` = column 0 with two upper bits set,
- and column 0 reads back the OR of all columns.

So MAME's masking *derives* the `$30` behaviour Takeda's document describes, rather than hard-coding
it. The core's literal `addr == 'h30` test is a stand-in that reproduces the one documented case and
fails every other value with a clear low nibble.

**Where `eRX-78` sits.** It matches this core, not MAME (`(column == 0x30) ? status[15] : (1 <= column
&& column <= 15) ? status[column-1] : 0`). But it never implements `$f4` bit 4 at all, so its vblank
IRQ always fires and it never reaches the state that traps Gundam. It cannot arbitrate here.

**Fixed.** `keyboard.sv` now decodes `addr[3:0]`, with column 0 returning the OR of all rows. Fixed
together with T6 — neither alone changes anything.

**Deliberate deviation from MAME:** MAME's column-0 read ORs rows **1..9 only**, excluding the
joystick rows. This core ORs all 15, following Takeda's document ("the OR of all columns") and
`eRX-78`, which ORs `status[0..14]`. The practical difference is whether a joystick can wake a
sleeping game. Two sources say all columns, so that is what is implemented; untested on hardware.

---

# Tier 2 — Probably right, but empirically derived. Implement behind a test.

## T7. A write to `$f4` should clear a pending IRQ — **FIXED** ✅

MAME's `key_w` calls `set_input_line(0, CLEAR_LINE)` on *every* `$f4` write, commented
*"fixes exbaseb opening screen"*. This core only clears `zint` on interrupt acknowledge
(`rx78.v:294`). `eRX-78` implements neither `$f4` IRQ behaviour at all, so it can't arbitrate.

Motivated by a real game symptom, so probably genuine — but it could equally be a workaround for a
MAME-internal timing artefact.

**Fixed, and Excite Baseball confirms it.** Measured over 420 identical frames:

| cart | without | with |
|---|---|---|
| **exbaseball** | **2** INT rises | **222** INT rises |
| gundam | 111 | 169 |
| motocross | 117 | 133 |
| ultraman | 420 | 418 |
| senemy | 420 | 420 |

The game MAME's comment names is the one that changes by two orders of magnitude, and the two carts
that were already healthy are untouched. Excite Baseball now reaches its "First Bat (R) or (B)?"
prompt.

## T8. Border colour should follow `$fc` — **FIXED** ✅

`rtl/vdp.v:24` declares `parameter BDC=24'h000000` and `rx78.v:356` never overrides it, so everything
outside the 192x184 window is hard black. It arrived that way in commit `91478c3` ("added border") as
a plain `: 0` fallthrough, not as a considered decision.

MAME fills the border with pen 64, which `vdp_bg_reg_w` drives from `$fc` — the same register as the
in-window background. Neither the hardware doc nor `eRX-78` covers overscan at all (`eRX-78` renders
only the 192x184 active area), and the Bandai manual is silent.

Physically plausible: there is no separate border generator in the described hardware, so the
background colour register would drive the raster outside active video.

**Fixed.** `vdp.v` now falls through to the background colour outside the active window instead of
`BDC`, and the unused `BDC` parameter is gone. Visible immediately: Burger Shop's black surround
becomes the same blue as its background, matching MAME.

**Caveat:** MAME is still the only source for this. Neither Takeda's document nor `eRX-78` covers
overscan, and Bandai's manual is silent. If it turns out wrong on hardware it is a one-line revert.

---

# Tier 3 — Unresolved. Research before touching.

## T9. `$fb` — colour mask or plane priority? ❓ *(evidence now favours the current model)*

Two irreconcilable models exist. **The Bandai manual tips the balance toward the one this core
already implements**, so the practical instruction is: *don't rewrite this, but do investigate.*

**Model A — colour mask (hardware doc + `eRX-78`).** `$fb` is a 3-bit RGB mask applied to the final
colour, and the foreground/background split is *fixed*: planes 1-3 foreground, planes 4-6 background.

```c
// eRX-78 vdp.cpp
cmask = ((data & 1) ? 4 : 0) | ((data & 2) ? 1 : 0) | ((data & 4) ? 2 : 0);
cmask |= cmask << 4;
...
if (tmp & cmask) tmp &= cmask;      // doc: "if(colour & mask) colour &= mask;"
```

**Model B — per-plane priority selector (MAME + this core).** `$fb` bit *j* assigns plane *j* to the
foreground or background group.

```verilog
// rtl/vdp.v
wire [5:0] layer1 = layers & ~cmask[5:0];
wire [5:0] layer2 = layers & cmask[5:0];
```

**Evidence for Model B:** Bandai's spec page lists under display functions
**"プライオリティ指定可（6画面中の）" — "priority is assignable among the 6 screens."** A
*programmable* per-plane priority mechanism therefore exists on this hardware. Model A has no
programmable priority at all — its split is hard-wired 1-3 / 4-6. So Takeda's model cannot be the
whole story.

**Evidence for Model A:** the hardware doc and `eRX-78` are mutually consistent down to the unusual
bit order (bit0=blue, bit1=red, bit2=green), which argues against a transcription slip. And MAME
needed an extra special case bolted onto Model B to make Space Enemy's text render
(`rx78.cpp:179-184`) — a hack that only fires when `$fb` is nonzero and pushes colours toward black,
which is roughly what a colour mask does.

**The likely resolution:** *both* mechanisms exist, on different registers. Priority is programmable
(manual), and a colour mask is documented (Takeda + his code). Note that Takeda lists **`$fd` as
written with unknown function** and MAME does not decode `$fd` at all — that is a strong candidate
for the second register. Investigating `$fd` is the cheapest way into this.

**`$fd` is real and in use.** Measured in `vsim`: Challenge Golf, Ultraman, Pro Wrestling and ABC
Word Game all write to `$fd`. Since neither MAME nor this core decodes it, whatever it controls is
currently being dropped on the floor by both. Start here:
`cd vsim && ./obj_dir/Vemu --headless --cart "../software/Ultraman.bin" --trace-io-unknown fd.log
--stop-at-frame 400` and correlate the values written against what the screen does.

**Do not change the `$fb` behaviour speculatively.** If experimenting, put Model A behind a build
define or OSD toggle and A/B Space Enemy, The Pro Wrestling and Sekigahara against reference
screenshots.

## T10. `$f3` — most likely the timer interrupt rate ❓ *(reframed by the manual)*

Bandai's spec page says **"key and timer interrupts are available."** A *timer* interrupt, distinct
from a plain per-frame vblank, is therefore real hardware. `$f3` is the only otherwise-unexplained
port that both MAME and this core already treat as an interrupt-rate divider — so MAME's model is
probably the right *shape*, even though its numbers are invented.

State of the sources on the specific values:

- Hardware doc: `$f3` listed as written, description **blank** — Takeda never worked it out.
- `eRX-78`: does not implement `$f3` at all. Its IRQ is unconditional, once per frame.
- MAME: `portf3_w` is preceded by the literal comment `// guess`. Values 3→64, 2→8, else 0, applied
  as `if (++count > slow)` → an IRQ every 65 / 9 / 1 frames. Tuned to "fix cracer traffic light" and
  "fix seki flash rate of sight".
- This core: 3→63, 2→7, else 0, compared pre-increment → every 64 / 8 / 1 frames.

The two differ by exactly one frame, and **both numbers are invented**. Don't "fix" this to match
MAME; there is nothing authoritative to match. Derive it from the IPL disassembly instead (R1) — the
monitor almost certainly programs it.

## T11. Layer priority fallthrough ❓

MAME resolves by *colour value*: `laycol[1] ? laycol[1] : (laycol[0] ? laycol[0] : background)`, so a
foreground pixel whose OR-ed palette entry is zero falls through to the background layer and then to
`$fc`. This core resolves by *layer occupancy*: `|layer2 ? c2 : |layer1 ? c1 : bg` (`vdp.v:116-118`),
so a set-but-black foreground pixel stays black.

`eRX-78` matches MAME's shape (`src0[x] ? src0[x] : src1[x] ? ... : 16`) — but within Model A's fixed
plane split, so it isn't a clean vote. Entangled with T9; resolve them together.

MAME's Space Enemy special case (`rx78.cpp:179-184`) has no equivalent here and should not be ported
on its own.

## T12. Video timing ❓

| | Pixel clock | H total | V total | Refresh |
|---|---|---|---|---|
| MAME | 28.63636/4 = 7.15909 MHz | 442 | 263 | 61.58 Hz |
| This core | 7.000 MHz (PLL) | **443** | 263 | 60.08 Hz |

MAME's `screen.set_raw` line is explicitly commented *"guess: generic NTSC video timing"*. Neither
the hardware doc nor the Bandai manual gives raster timing. So MAME is not authoritative here either.

Two separate things to note:

1. The 443-clock line is an **off-by-one against the core's own intent** — in `video.v` the `442:`
   case runs after `hcount <= hcount + 1`, so the line is 0..442 inclusive.
2. The 7.000 MHz PLL output is not derived from the machine's 28.63636 MHz master. Folding this into
   the T2 clock rework gives the right pixel clock for free.

The 60.08 Hz result may well have been a deliberate MiSTer display-compatibility choice — check with
pierco before "correcting" it to 61.58 Hz.

Minor, same file: `vdp.v:52` gates the active area with `h > 32 && h < 224`, which is **191** columns,
not 192. There is pipeline delay in the VDP that may be absorbing this. Verify visually before
changing.

Related, from the manual: text mode is **30 × 23 characters of 6×8 dots** = 180 × 184 pixels inside
the 192 × 184 bitmap. Useful as a sanity check when eyeballing BASIC's text output.

---

# Tier 4 — Already correct here. Do **not** change these toward MAME.

## T14. Palette intensity bit positions 🔵 — this core is right, the doc's prose is wrong

The hardware doc says `$f5-$fa`/`$fc` use "bit0,3 / bit1,4 / bit2,5". That text is wrong. Takeda's
own emulator tests `(tmp & 0x11)`, `(tmp & 0x22)`, `(tmp & 0x44)` — intensity in bits **4/5/6**.
MAME's `bitswap<8>(data,7,3,6,2,5,1,4,0) & 0x3f` lands in the same place, and this core's
`{p[6:4], p[2:0]}` packing is equivalent (verified bit for bit).

Commit `98e2f54` ("bg fix") moved this core from the doc's 3/4/5 to 4/5/6 — that change was correct.
Three implementations against one line of prose. The manual's "27 colours" (= 3³, i.e. off / dim /
bright per channel) corroborates the encoding.

## T15. VRAM window base 🔵

This core and MAME both map the VRAM window at `$ec00` with the displayed region starting `$2c0`
bytes in, at `$eec0`. `eRX-78` maps VRAM at `$eec0` and RAM below it — and its own source calls that
a bug: `// known bug : ram must not be mapped to $ec00-$eebf`. No change needed.

---

# Tier 5 — Missing features and housekeeping

## T16. Printer (`$e2`/`$e3`) — better documented than MAME implements

MAME's #1 TODO, with only commented-out stubs. But the semantics are fully documented and
implemented in `eRX-78` `printer.cpp`:

- `$e2` read → bit0 = busy
- `$e2` write → bit7 = strobe
- `$e3` write → data byte
- other reads in range → `$ff`

The manual confirms the hardware supports it: *"a printer interface and various other expansion
peripheral interfaces can be connected"* via the cartridge edge connectors. Implementable today. Low
priority for a games machine, but a MiSTer core could expose it as a file sink or over UART.

## T17. Expansion RAM fill direction

Hardware doc: *"Expansion RAM can be allocated in the `$6000-$afff` region. However, it must be
filled starting from the upper addresses."* So a partial expansion sits at the **top** of the window,
growing downward.

This core's `EXT RAM` toggle is all-or-nothing over the full 20 KB; MAME's 16 KB option unmaps
`$6000-$afff` entirely. Both simplify. Low priority unless some title probes RAM size. See also T21.

## T18. Auto-detect cartridge size — **FIXED** ✅

**Fixed** together with T3 — see that entry. `cart_big` is latched from `upload_addr` during the
download, so 32K carts no longer need the `EXT RAM` toggle.

## T19. Housekeeping

- `rtl/cart32.v` is **dead code** — not instanced by `rx78.v`, but still listed in `files.qip`.
- `RX78.sv:258` passes `status_menumask({status[5]})`; `status[5]` is not used by anything.
- `keyboard.sv:184` maps ESC to STOP **and** SHIFT simultaneously (i.e. BREAK). There is currently no
  way to press STOP on its own. Needed once tape lands, since `*L`/`*S` interaction uses both.
- The `Pause` OSD option gates `main_clk`, which stops sound along with the CPU. Probably fine, but
  worth knowing.
- `readme.md` was reconciled with this file (the obsolete "activate EXT RAM for 32K carts" note and
  the fixed "choppy sound" item are gone), but it will still need the cassette line removed when
  T1 lands.

## T20. Undocumented ports

Currently decoded by nobody. Reads return `$ff` from the `io_q` default, which matches MAME's
`unmap_value_high()` — fine as a default.

| Port | Known |
|---|---|
| `$23` | MAME says "used by rengo". **Measured: written once at boot by every one of the 13 carts tested**, value `$8b`. So it is not rengo-specific — it is part of the standard init. |
| `$ef` | MAME says "used by rengo". **Measured: written by all 13 carts**, once or twice, value `$02`. Same conclusion. |
| `$fd` W | **In the hardware doc only; MAME does not decode it at all.** **Measured: written by Challenge Golf, Ultraman, Pro Wrestling and ABC Word Game.** Prime suspect for the programmable priority register — see T9. |
| `$f0` | Cassette. **Measured: ABC Word Game touches it** even with no tape support present — see T1. |
| `$50` W, `$52` W, `$d0` W | **In the hardware doc only.** Not observed in any of the 13 carts tested. |
| `$e0` R/W, `$e1` R | MAME's monitor notes describe a `*R` block-transfer load from "a mystery parallel device" using centronics-like handshaking. Not observed. |

This is now instrumented: `vsim` reports undecoded-port hits at the end of every headless run, and
`--trace-io-unknown` logs each one with the port, data and bus value. The measurements above came
from `cd vsim && ./run_tests.sh`.

## T21. RAM size — the core allocates far more than the machine has ❓

Bandai's spec page: **"30 KB (for VRAM *and* data), 2 KB S-RAM × 15 chips."** One shared 30 KB pool.
Takeda's doc splits it as "15 KB main + 15 KB VRAM", which is consistent with the total.

That conflicts with the documented memory map, which implies ~15 KB of main RAM at `$b000-$ebff`
*plus* six planes × 4416 displayed bytes ≈ 26 KB of VRAM ≈ 41 KB — more than the machine physically
contains. MAME's own TODO records the same contradiction: *"RAM handling can't be right: PCB has 30KB
shared RAM (manual also says this in the technical specs), but MAME allocates much more."*

This core allocates more still: 16 KB main + 32 KB ext + 6 × 8 KB VRAM = 96 KB of BRAM.

Nobody has resolved how 6 planes fit in the real chip complement — the "VRAM controller" custom LSI
presumably does something not captured by any of these documents. Over-allocating is harmless for
correctness (games can't tell) but costs BRAM that T1 wants for tape buffering. Worth understanding
before the tape work forces a BRAM budget.

## T22. Second cartridge slot — real hardware ❓

The manual confirms it: cartridges *"本体に2本接続可能"* (two connectable to the main unit), and the
interface list gives **"60-pin edge connector × 2"** on the internal bus. So MAME's long-standing
"Implement 2nd cart slot" TODO describes genuine hardware, not speculation.

Neither MAME nor this core implements it, and no dump is known that requires it. What the second slot
maps to is undocumented — plausibly it is how the printer interface and "other expansion peripheral
interfaces" attach, which would also explain the `$e0`/`$e1`/`$50`/`$52`/`$d0` ports nobody can
identify. Low priority; recorded so the ports in T20 aren't investigated in isolation.

---

# Tooling

## T23. Verilator simulation — done, see `vsim/`

`vsim/` boots a cart, injects keys/joystick on a frame schedule, writes PNGs, traces I/O ports, and
prints liveness counters. `./run_tests.sh` sweeps every cart in `software/`. Read `vsim/README.md`.

Use it before touching `rtl/`: take a baseline (`./run_tests.sh && cp -r shots shots-ref`), make the
change, re-run, compare. It is far faster than a Quartus build and it is what corrected T13.

Items it can settle without hardware: **T9** (sweep `$fb`/`$fd` and watch the screen), **T10**
(`--trace-io` the `$f3` writes and time the interrupts), **T20** (undecoded ports are reported
automatically), **T6/T13** (already demonstrated), and any **T1** tape work (the `$f0` handshake is
observable directly).

Known limits: ~12 simulated frames/sec; no audio verification beyond a debug waveform; the
`shots-ref/` baseline is a record of *current* behaviour, not of correct behaviour — nine of the
thirteen carts in it are wedged.

## T25. The simulator and the hardware run different Z80 cores ⚠️

**`vsim` has been testing a CPU the `.rbf` does not contain.** `rtl/rx78.v` picks the core with
`` `ifdef VERILATOR ``: synthesis instantiates **T80** (VHDL, MikeJ/Daniel Wallner), Verilator
instantiates **tv80** (Verilog, Guy Hutchison, 2004). tv80 is a **separate, independent
implementation** — not a translation of T80 — so the two can and do differ. Any sim-only conclusion
about CPU-sensitive behaviour is suspect until checked on the other core.

(`files.qip` lists both `tv80/TV80.qip` and `T80/T80.qip`, but only `T80s` is instantiated outside
Verilator, so tv80 is dead weight in the FPGA build.)

**Why this surfaced:** Burger Shop (T24) works in MAME and not here, and the divergence looks
CPU-shaped — MAME's Z80 sits in IPL ROM routines with `IFF1=1`, ours spins in cartridge code with
`IFF1=0`. If tv80 mishandles something the game relies on, the shipped core may be fine and only the
sim is wrong. That would match the report that Burger Shop used to run.

**Attempted:** T80 converted to Verilog with `ghdl synth --out=verilog` and built into the sim with
`make CPU=t80`. Two real problems were found and fixed on the way:

- `T80.vhd:680` ANDs a 9-bit value with a 4-bit literal (`ioq and x"7"`). Quartus zero-extends
  silently; ghdl rejects it. A latent width bug in the vendored core.
- `rx78.v` left T80's **`CEN` and `OUT0` unconnected**. Those have VHDL defaults (`'1'`, `'0'`), so
  Quartus is fine, but any Verilog translation reads them as 0 and `CEN=0` stops the CPU dead. Now
  connected explicitly — worth doing regardless.

**Where it stands:** the converted core now executes but immediately wedges in the low 128 bytes of
ROM and issues no I/O at all, so the conversion is not yet faithful enough to draw conclusions from.
`ghdl synth` is a synthesis flow; something about reset or initialisation is not surviving. **The
hypothesis is untested, not disproved.**

**The right way to settle it** is a Z80 conformance suite rather than a game: ZEXDOC/ZEXALL (Bird's
instruction exerciser) or Patrik Rak's `z80test`, run against tv80 and T80 in the same testbench.
They self-check and print a pass/fail line per instruction group, so they say *which* instruction
differs instead of leaving us to infer it from a game hanging. They need a small harness to trap the
CP/M console call and print it. Until then, treat `vsim` results on interrupt- and flag-sensitive
code as indicative only.

## T24. Burger Shop and Perfect Mah-jongg still idle ❓

After the T2/T3/T4/T5/T6/T7/T8/T13/T18 work, eleven of thirteen carts in `software/` run. These two
still sit on their title screens doing almost no I/O:

| cart | INT/frame | I/O cycles / 501 frames |
|---|---|---|
| burgershop | 0.01 | 444 |
| mahjong | 0.00 | 2408–3107 |

**It is not an input problem.** The controls `readme.md` documents for both games (Burger Shop: "Z
and X to start"; Mah-jongg: "Space to start", Home/Backspace for the questions) were tried
repeatedly across a range of frames and change nothing. The machine is not listening:

```
Burger Shop    INT rises 3    INT acks 2    I/O cycles 444    last I/O at frame 9
Mah-jongg      INT rises 4    INT acks 1    I/O cycles 4128
```

Both **enable** the vblank interrupt (`$f4 <- $08`, bit 4 clear) and set `$f3` to the every-frame
rate, so the core asserts the interrupt each frame — but the CPU acknowledges once or twice and then
never again, which means it is spinning with interrupts disabled. Burger Shop's last act is three
writes to `$ff` silencing the PSG, at frame 9, after which it does no I/O at all.

So the CPU is stuck in a `DI` loop a few frames after boot, waiting on something that never happens.
Candidates, roughly in order: a `$fd` write being ignored (Burger Shop does not write `$fd`, but
Mah-jongg's sibling titles do), the `$f3` divider semantics (T10), or a genuine CPU-core bug that
only these two provoke. The IPL disassembly (R1) would help.

---

# Research tasks

## R1. Disassemble the IPL ROM

The 8 KB IPL in `rtl/rom.mem` contains the monitor's `*L`/`*V`/`*S` tape routines and whatever drives
`$f3`. Disassembling it would likely settle **T10 (`$f3`)** and pin down the tape framing for **T1**
without needing hardware. The readme links a disassembly on onlinedisassembler.com; that service is
gone. This is the cheapest high-value research task on the list.

## R2. Hardware test plan

No published register-level measurements of this machine exist — the core's readme credits Reenthused
(Johnny Blanchard) and Hubz (Dustin Hubbard) for opening their RX-78s during development, but nothing
was written down. If either is still reachable, a short test-program run would settle, in priority
order:

1. **T9 / T20** — what `$fb` does, and what `$fd` does. Write a known pattern to two planes, sweep
   both registers, photograph.
2. **T4** — read rows 10-15 with a stick held in each direction and dump both nibbles. *(Confidence
   is already high from two sources; this would be confirmation.)*
3. **T10** — `$f3` semantics: set each value, time the interrupt rate.
4. **T8** — is the border the `$fc` colour or black?
5. **T12** — actual raster timing and refresh rate.
6. **T21** — photograph the PCB and count/identify the RAM chips against the 15 × 2 KB claim.

Anything measured here should be written into this file as a first-class source — it would
immediately outrank every document listed in Sources.

---

## Sources

None of these are vendored here — the manual scan and the eRX-78 sources are not ours to
redistribute. Fetch them locally if you want them offline; nothing in this file assumes you have.

| Ref | What | Where |
|-----|------|-------|
| **[MANUAL]** | Bandai's RX-78 user manual. Page 20 is the technical specification and the only primary source: `Z-80A' (4.1MHz)`, 30 KB shared RAM as 15 x 2 KB SRAM, "key and timer interrupts", "priority assignable among the 6 screens", two 60-pin cartridge slots, BS-BASIC cart "with cassette interface included". | <https://archive.org/details/bandai-rx-78-gundam-manual-scans> |
| **[TAKEDA]** | Toshiya Takeda's RX-78 analysis: the I/O register map, the keyboard/joystick matrix, the memory map. Shift-JIS. Carries the author's own "accuracy not guaranteed" disclaimer, and is wrong about the palette intensity bits (see T14). | <http://takeda-toshiya.my.coocan.jp/rx78/tech.html> |
| **[eRX-78]** | Takeda's emulator, in the Common Source Code Project. A complete second implementation, independent of MAME, 2006. The files that matter are `src/vm/rx78/{rx78,vdp,memory,keyboard,cmt,printer}.cpp` plus the shared `src/vm/datarec.cpp`. | <https://github.com/tautologico/common-src-project> |
| **[MAME]** | `src/mame/bandai/rx78.cpp` and the software lists `hash/rx78_cart.xml`, `hash/rx78_cass.xml`. Still `MACHINE_NOT_WORKING`. Commit `06b26a0f55a` ("fixed loading of real tapes") is the one behaviour here validated against real media. | <https://github.com/mamedev/mame> |
| **[Z88DK]** | Independent confirmation of the clocks: Z80 4.090909 MHz, SN76489 3.579545 MHz. | <https://github.com/z88dk/z88dk/wiki/Platform-Bandai-RX-78> |
| **[GA]** | Gaming Alexandria's preservation write-up; source of the tape dumps. | <https://www.gamingalexandria.com/wp/2021/02/bandai-rx-78-gundam-computer-games-preserved/> |

**Reliability order** when two disagree: [MANUAL] (primary, but system-level only, no registers) >
behaviour validated against real media (only MAME's tape polarity qualifies) > [TAKEDA] and [eRX-78]
agreeing > [eRX-78] source > [TAKEDA] prose > MAME's driver. **MAME is not a specification.**

