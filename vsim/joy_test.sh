#!/usr/bin/env bash
# Does the joystick actually do anything, per game?
#
#   ./joy_test.sh              every cart
#   ./joy_test.sh gundam       substring filter
#
# Two runs per cart: the documented keyboard sequence to get in-game, then the
# same run again with a joystick direction and button held. If the framebuffer
# at the end is byte-identical between the two, the joystick changed nothing.
#
# Why not just check the matrix bits: those are already verified separately (see
# the decode table in TODO.md T4, and joy_test.sh's sibling checks in the README).
# The matrix being right does not mean any given game reads it -- most RX-78
# titles are keyboard-only by design, and the readme says which. This tells the
# two apart.
set -uo pipefail
cd "$(dirname "$0")"

EXE=./obj_dir/Vemu
SW=../software
OUT=joyshots
FRAMES=${FRAMES:-560}
SHOT=$((FRAMES - 20))

[ -x "$EXE" ] || { echo "Build first: make" >&2; exit 1; }
mkdir -p "$OUT"

# name|file|keys to reach gameplay|joystick spec|readme says joystick?
CARTS=(
  "gundam|MobileSuitGundam.bin|--key 200:z --key 300:@SPACE|right+fire1|yes"
  "ultraman|Ultraman.bin|--key 200:@SPACE|right+fire1|no"
  "prowres|ThePro-Wrestling.bin|--key 200:@CTRL|right+fire1|no"
  "senemy|SpaceEnemy.bin|--key 200:@SPACE|right+fire1|no"
  "golf|ChallengeGolf.bin|--key 200:@HOME --key 260:@SPACE|right+fire1|no"
  "racer|ChampionRacer.bin|--key 200:@PGUP --key 260:@SPACE --key 340:@CTRL|left+fire1|no"
  "exbaseball|ExciteBaseball.bin|--key 200:@SPACE --key 300:1|right+fire1|no"
  "extennis|Excite Tennis.bin|--key 200:@SPACE --key 300:1|right+fire1|no"
  "motocross|SuperMotoCross.bin|--key 200:@RETURN --key 250:@RETURN --key 300:@RETURN --key 420:@SPACE|left+fire1|no"
  "abcword|ABC Word Game.bin|--key 200:@SPACE --key 300:a|right+fire1|no"
  "burgershop|HamburgerShop.bin|--key 200:z --key 300:x|right+fire1|no"
  "mahjong|PerfectMajong.bin|--key 200:@SPACE --key 300:@HOME|right+fire1|no"
)

filter=("$@")
matches() { [ ${#filter[@]} -eq 0 ] && return 0
            for f in "${filter[@]}"; do [[ "$1" == *"$f"* ]] && return 0; done; return 1; }

printf "%-12s %-9s %10s %10s  %s\n" CART DOCUMENTED IO-BASE IO-JOY RESULT
printf -- "-------------------------------------------------------------------\n"

for entry in "${CARTS[@]}"; do
  IFS='|' read -r name file keys joy documented <<< "$entry"
  matches "$name" || continue
  [ -f "$SW/$file" ] || { printf "%-12s %-9s\n" "$name" MISSING; continue; }

  # shellcheck disable=SC2086
  base=$("$EXE" --headless --cart "$SW/$file" $keys \
           --screenshot-name "$OUT/${name}_base.png" --screenshot $SHOT \
           --stop-at-frame $FRAMES 2>&1 | grep -oE 'I/O cycles *: [0-9]+' | grep -oE '[0-9]+$')
  # shellcheck disable=SC2086
  withjoy=$("$EXE" --headless --cart "$SW/$file" $keys --joy1 $((SHOT - 220)):"$joy" \
           --screenshot-name "$OUT/${name}_joy.png" --screenshot $SHOT \
           --stop-at-frame $FRAMES 2>&1 | grep -oE 'I/O cycles *: [0-9]+' | grep -oE '[0-9]+$')

  if cmp -s "$OUT/${name}_base.png" "$OUT/${name}_joy.png"; then
    if [ "${base:-0}" = "${withjoy:-0}" ]; then result="no change"
    else result="io differs, screen same"; fi
  else
    result="RESPONDS"
  fi
  printf "%-12s %-9s %10s %10s  %s\n" "$name" "$documented" "${base:-?}" "${withjoy:-?}" "$result"
done

echo
echo "Screenshots in $OUT/ as <cart>_base.png and <cart>_joy.png -- compare by eye."
echo "\"no change\" on a keyboard-only title is the expected result, not a failure."
