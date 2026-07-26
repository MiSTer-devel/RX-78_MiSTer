#!/usr/bin/env bash
#
# Headless regression sweep over the cartridge images in ../software.
#
# For each cart: boot it, screenshot, and print the liveness counters. The
# counters are the point -- a screenshot alone cannot tell "title screen, as
# designed" apart from "CPU wedged with a title screen left in VRAM".
#
# Output goes to shots/. Compare against shots-ref/ with ./compare_shots.sh
# after making a change.
#
# Usage:
#   ./run_tests.sh                 # all carts
#   ./run_tests.sh Gundam Ultraman # only carts matching these substrings
#
set -uo pipefail
cd "$(dirname "$0")"

EXE=./obj_dir/Vemu
SW=../software
OUT=shots
FRAMES=${FRAMES:-500}
SHOT_AT=${SHOT_AT:-$((FRAMES - 20))}

[ -x "$EXE" ] || { echo "Build first: make"; exit 1; }
mkdir -p "$OUT"

# name|file|extra args
#
# 32K carts no longer need --ext-ram: rx78.v now sizes the cart from the ioctl
# download and maps its upper half as ROM at $6000-$9fff. See TODO.md T3/T18.
#
# The --key/--joy arguments come from the control notes in ../readme.md. They
# exist so each cart is driven past its title screen: a title screen renders
# identically whether the machine is running or wedged, so a boot-only test
# proves very little.
#
# Several titles only accept a key inside a narrow window (Super Motocross has
# about 20 frames), and that window MOVES when the CPU clock changes -- which it
# did in TODO.md T2. So press repeatedly rather than betting on one frame
# number, otherwise a timing change looks exactly like a regression.
CARTS=(
  "basic|bs-basic.bin|--key 200:@RETURN --key 240:print 1+1 --key 400:@RETURN"
  "burgershop|HamburgerShop.bin|--key 200:z --key 250:z --key 300:x --key 350:@SPACE --key 400:1"
  "golf|ChallengeGolf.bin|--key 200:@HOME --key 260:@SPACE"
  "racer|ChampionRacer.bin|--key 200:@PGUP --key 260:@SPACE --key 340:@CTRL"
  "gundam|MobileSuitGundam.bin|--key 200:z --key 300:@SPACE"
  "mahjong|PerfectMajong.bin|--key 200:@SPACE --key 250:@SPACE --key 300:@SPACE --key 380:@HOME"
  "prowres|ThePro-Wrestling.bin|--key 200:@CTRL --joy1 300:right"
  "ultraman|Ultraman.bin|--key 200:@SPACE --joy1 300:right+fire1"
  "abcword|ABC Word Game.bin|--key 200:@SPACE --key 300:a"
  "exbaseball|ExciteBaseball.bin|--key 200:@SPACE --key 300:1"
  "extennis|Excite Tennis.bin|--key 200:@SPACE --key 300:1"
  "senemy|SpaceEnemy.bin|--key 200:@SPACE --key 300:s"
  "motocross|SuperMotoCross.bin|--key 200:@RETURN --key 250:@RETURN --key 300:@RETURN --key 350:@RETURN --key 420:@SPACE --key 470:@SPACE"
)

filter=("$@")
matches() {
  [ ${#filter[@]} -eq 0 ] && return 0
  for f in "${filter[@]}"; do [[ "$1" == *"$f"* ]] && return 0; done
  return 1
}

printf "%-12s %7s %9s %10s  %s\n" CART FRAMES INT/frame IO-CYCLES NOTES
printf -- "----------------------------------------------------------------------------\n"

fail=0
for entry in "${CARTS[@]}"; do
  IFS='|' read -r name file extra <<< "$entry"
  matches "$name" || continue
  if [ ! -f "$SW/$file" ]; then
    printf "%-12s %7s\n" "$name" "MISSING"
    continue
  fi

  log=$(mktemp)
  # shellcheck disable=SC2086
  "$EXE" --headless --cart "$SW/$file" $extra \
         --screenshot-name "$OUT/$name.png" --screenshot "$SHOT_AT" \
         --stop-at-frame "$FRAMES" >"$log" 2>&1

  frames=$(grep -oE 'frames  *: [0-9]+' "$log" | grep -oE '[0-9]+$')
  intpf=$(grep -oE '\(([0-9.]+) per frame\)' "$log" | grep -oE '[0-9.]+')
  iocyc=$(grep -oE 'I/O cycles  *: [0-9]+' "$log" | grep -oE '[0-9]+$')
  undec=$(grep -oE 'UNDECODED ports   :.*' "$log" | sed 's/UNDECODED ports   : //; s/ *<- see.*//')

  notes=""
  # "Stuck" = the vblank IRQ is not being taken AND the CPU is doing almost no
  # I/O. Either alone is normal: some games poll instead of using the IRQ (high
  # I/O, low IRQ), and some idle legitimately. Both together means wedged.
  # See TODO.md T6/T13.
  if awk -v v="${intpf:-0}" 'BEGIN{exit !(v < 0.5)}' && [ "${iocyc:-0}" -lt 5000 ]; then
    notes="STUCK"
  elif awk -v v="${intpf:-0}" 'BEGIN{exit !(v < 0.5)}'; then
    notes="polling(no-irq)"
  fi
  [ -n "$undec" ] && notes="$notes undecoded:$undec"
  [ -f "$OUT/$name.png" ] || { notes="$notes NO-SCREENSHOT"; fail=1; }

  printf "%-12s %7s %9s %10s  %s\n" \
     "$name" "${frames:-?}" "${intpf:-?}" "${iocyc:-?}" "$notes"
  rm -f "$log"
done

echo
echo "Screenshots in $OUT/. To set a reference: cp -r $OUT shots-ref"
exit $fail
