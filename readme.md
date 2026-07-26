# Bandai RX-78

Bandai RX-78 core for MiSTer FPGA by Pierco (Pierre Cornier) & Alanswx (Alan Steremberg).

I would like to thank Reenthused (Johnny Blanchard) and Hubz (Dustin Hubbard) for their help and for taking their RX-78 apart for me.

## About the core

There's no cassette support yet.

32k cartridges are detected automatically — you no longer need to enable EXT RAM for them.

There is a Verilator simulation in `vsim/` that boots a cartridge, injects keys and joystick input,
writes PNG screenshots and traces the I/O ports. Use it before building an `.rbf`; see
`vsim/README.md`.

Accuracy work is tracked in `TODO.md`, with the source documents it is based on vendored in
`docs/ref/`. Read `docs/ref/README.md` before changing emulated behaviour — the three existing
emulators disagree with each other and MAME is not a specification.

To do list:
- Add cassette support and ADC in.
- Work out what ports $23, $ef and $fd do (every cartridge writes $23 and $ef at boot; four write $fd).
- Add game identification mechanism to support for different joystick mappings.
- VGA output works but hsync timing seems wrong.


## Games


### Burger Shop
  Z and X to start and move; Space to pick up and put down



### Challenge Golf

  Q1 = Home or Backspace; Q2 = \ or End; ZXCV to rotate player; Arrows to rotate view; Middle row or Ctrl to choose a club; Alt or Space to shoot; Enter to abandon hole.

### Championship Racer
  PgUp = 1 or \ = 2. Space to start; Ctrl to accelerate; Left-Right to move

### Excite Baseball

### Mobile Suit Gundam
  Use either Z,X,Space; or Left,Right,Alt or Joystick

  This game has an audio bug on the title screen.

### Perfect Mah-jongg
  Home = Yes; Backspace = No;Q4 = - or 9; Q5 = \ or pgDn or PgUp; Space to start

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