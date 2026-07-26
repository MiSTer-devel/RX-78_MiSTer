#!/usr/bin/env bash
# Load a real tape through the monitor and screenshot the result.
#
#   ./tape_test.sh                    Yellow Cab (44100 Hz, 82 s)
#   ./tape_test.sh graphmaths         Graphics Mathematics (22050 Hz, 106 s)
#   ./tape_test.sh <wav> <name> <frames>
#
# This lives outside run_tests.sh because a tape plays in real time: 82 seconds
# of audio is ~4900 frames, and the simulator manages roughly 12 frames/second.
# Budget 8-10 minutes per tape.
#
# By default this exercises the path that ships -- the WAV goes in over ioctl
# index 2, lands in SDRAM, and rtl/cassette.v streams it to $f0. Pass
# TAPE_DIRECT=1 to bypass SDRAM and cassette.v and drive $f0 straight from the
# file instead; if a load works that way but not the other, the problem is the
# loader rather than the port.
set -uo pipefail
cd "$(dirname "$0")"

EXE=./obj_dir/Vemu
[ -x "$EXE" ] || { echo "Build first: make" >&2; exit 1; }

SW=../software
case "${1:-yellowcab}" in
  yellowcab)  wav="$SW/yellowcab.wav";  name=CAB; frames=6000 ;;
  graphmaths) wav="$SW/graphmaths.wav"; name=GRM; frames=7500 ;;
  *)          wav="$1"; name="${2:-CAB}"; frames="${3:-6000}" ;;
esac

# The archives ship zipped; unzip alongside if only the .zip is present.
if [ ! -f "$wav" ]; then
  z="${wav%.wav}.zip"
  [ -f "$z" ] && unzip -o -q "$z" -d "$(dirname "$wav")"
fi
[ -f "$wav" ] || { echo "No such tape: $wav" >&2; exit 1; }

direct=""
[ "${TAPE_DIRECT:-0}" != "0" ] && direct="--tape-direct"

echo "Loading $(basename "$wav") as $name ${direct:+(direct path)}..."

# BS-BASIC is required: the cassette interface is on that cartridge, not in the
# main unit, which is why every cassette title in MAME's list depends on it.
# MON / L / <name> drives the monitor's tape loader.
out=$("$EXE" --headless --cart "$SW/bs-basic.bin" --tape "$wav" $direct \
        --key 200:MON --key 300:@RETURN \
        --key 360:L   --key 420:@RETURN \
        --key 480:"$name" --key 560:@RETURN \
        --screenshot-name "tape_$name.png" --screenshot $((frames - 100)) \
        --stop-at-frame "$frames" 2>&1)

echo "$out" | grep -E "^tape |^     parser"

if echo "$out" | grep -q "S_BAD"; then
  echo "FAIL: cassette.v could not parse the WAV header"
  exit 1
fi
played=$(echo "$out" | grep -oE "sample [0-9]+ of [0-9]+" | head -1)
echo "PASS (screenshot tape_$name.png, $played)"
echo "Check the screenshot: a successful load ends with the program running."
