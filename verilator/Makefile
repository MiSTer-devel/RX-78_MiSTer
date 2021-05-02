
.PHONY: build

CFLAGS := $(shell pkg-config sdl2 --cflags)
LDFLAGS := $(shell pkg-config sdl2 --libs)

build:
	rm -rf obj_dir
	verilator -Wall -Wno-fatal --top-module rx78 --cc -DLOAD_CART ../rx78.v -y ../tv80 -y .. --exe tb.cpp --trace -CFLAGS '${CFLAGS} -g' -LDFLAGS '${LDFLAGS} -lSDL2_ttf' --public
	make -j -C ./obj_dir -f Vrx78.mk Vrx78
	cp -R obj_dir ~

rom:
	hexdump -v -e '1/1 "%02X" "\n"' roms/ipl.rom > roms/rom.mem
	
basic:
	split -b8192 roms/bs-basic.bin roms/tmp
	hexdump -v -e '1/1 "%02X" "\n"' roms/tmpaa > roms/basic1.mem
	hexdump -v -e '1/1 "%02X" "\n"' roms/tmpab > roms/basic2.mem
	rm roms/tmp*

gundam:
	split -b8192 roms/gundam.bin roms/tmp
	hexdump -v -e '1/1 "%02X" "\n"' roms/tmpaa > roms/gundam1.mem
	hexdump -v -e '1/1 "%02X" "\n"' roms/tmpab > roms/gundam2.mem
	rm roms/tmp*

