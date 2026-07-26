# Bandai RX-78

Bandai RX-78 core for MiSTer FPGA by Pierco (Pierre Cornier) & Alanswx (Alan Steremberg).

I would like to thank Reenthused (Johnny Blanchard) and Hubz (Dustin Hubbard) for their help and for taking their RX-78 apart for me.

## About the core

32k cartridges are detected automatically — you no longer need to enable EXT RAM for them.

There is a Verilator simulation in `vsim/` that boots a cartridge, injects keys and joystick input,
writes PNG screenshots and traces the I/O ports. Use it before building an `.rbf`; see
`vsim/README.md`.

Accuracy work is tracked in `TODO.md`, which cites every source it is based on by URL. Read it
before changing emulated behaviour — the three existing emulators disagree with each other and MAME
is not a specification.

To do list:
- Save to tape (`*S`) and real tape in via the ADC.
- Work out what ports $23, $ef and $fd do (every cartridge writes $23 and $ef at boot; four write $fd).
- Add game identification mechanism to support for different joystick mappings.
- VGA output works but hsync timing seems wrong.


## Cassettes

Tapes work. The preserved `.wav` dumps load as-is — no conversion step.

**The cassette interface is on the BS-BASIC cartridge, not in the machine**, so you always need
BS-BASIC loaded to use a tape. That is also why every cassette title in MAME's software list depends
on it.

1. **Load Cartridge** → `bs-basic.bin`
2. **Load Tape** → the `.wav`
3. Type the commands below. Press Return after each line.

The tape starts and stops itself by watching the cassette port, so there is no Play button. Use
**Tape Rewind** to start a load over, and turn on **Tape Sound** if you want to hear it running.
A load takes as long as the tape does — about a minute and a half.

### Yellow Cab

```
MON
L
CAB
```

Loads and starts by itself when the tape finishes.

### Graphics Mathematics

```
MON
L
GRM
```

When the tape finishes, type `RUN` and press Return.

Notes: `MON` enters the monitor from BASIC and gives you a `*` prompt. `L` is the monitor's load
command, which asks `FILE NAME:` — that is where the name goes. To abort a load, press BREAK
(STOP + SHIFT). Monitor commands `V` (verify) and `S` (save) are not usable yet: saving needs a
write path that does not exist (see `TODO.md` T1).

## Games


### Burger Shop
  Z and X to start and move; Space to pick up and put down

  **Currently broken** — the title screen draws and the machine then stops responding, so the
  controls above do not get you in. Not an input problem: the CPU stops acknowledging interrupts
  about ten frames after boot. See `TODO.md` T24.



### Challenge Golf

  Q1 = Home or Backspace; Q2 = \ or End; ZXCV to rotate player; Arrows to rotate view; Middle row or Ctrl to choose a club; Alt or Space to shoot; Enter to abandon hole.

### Championship Racer
  PgUp = 1 or \ = 2. Space to start; Ctrl to accelerate; Left-Right to move

### Excite Baseball

### Mobile Suit Gundam
  Use either Z,X,Space; or Left,Right,Alt or Joystick

  Press a key at the title screen to reach the score table, then again to start.

### Perfect Mah-jongg
  Home = Yes; Backspace = No;Q4 = - or 9; Q5 = \ or pgDn or PgUp; Space to start

  **Currently broken** — same symptom as Burger Shop: the title draws, then the CPU stops taking
  interrupts and none of the keys above register. See `TODO.md` T24.

### Sekigahara
   Wait for small beep. Press Space(keyboard) or S(joystick). Press G.


### Super Motocross
   Press Enter. Answer questions. Press Space to begin. Arrows to drive

### Space Enemy
   Press Space to begin and fire. QWEADZXC to steer. S toggle guidance system.

### The Prowrestling
    Ctrl to attack; Arrows to move

### Ultraman
    1 player: Use P[];./ticPGDN to move, Space to fire. 2 players: P1 use Arrows,Ctrl,Alt; P2 use RDFGAS



## Emulators & machine information:

- https://archive.org/download/rx-78-mister (games)
- https://github.com/tautologico/common-src-project
- http://takeda-toshiya.my.coocan.jp/
- https://25yg7xnxvowpxahhot33jvnbmq-ac5fdsxevxq4s5y-my-coocan.translate.goog/rx78/tech.html
- https://www.gamingalexandria.com/wp/2021/02/bandai-rx-78-gundam-computer-games-preserved/
- http://takeda-toshiya.my.coocan.jp/rx78/index.html


ROM disassembly: https://onlinedisassembler.com/odaweb/BKu6rvkL


Manual:
https://archive.org/details/bandai-rx-78-gundam-manual-scans/Bandai%20RX-78%20Gundam%20-%20Manual%20%28Compressed%29

**We are looking for more technical documents, if you have any in your possession, please send us a message!**