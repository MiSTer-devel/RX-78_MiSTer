
.PHONY: build

CFLAGS := $(shell pkg-config sdl2 --cflags)
LDFLAGS := $(shell pkg-config sdl2 --libs)

build:
	rm -rf obj_dir
	verilator -Wall -Wno-fatal --top-module rx78 --cc -DLOAD_CART ../rx78.v -y ../tv80 -y .. --exe tb.cpp --trace -CFLAGS '${CFLAGS} -g' -LDFLAGS '${LDFLAGS} -lSDL2_ttf' --public
	make -j -C ./obj_dir -f Vrx78.mk Vrx78
	cp -R obj_dir ~

rom:
	hexdump -v -e '1/1 "%02X" "\n"' ipl.rom > rom.mem
	split -b8192 bs-basic.bin tmp
	hexdump -v -e '1/1 "%02X" "\n"' tmpaa > basic1.mem
	hexdump -v -e '1/1 "%02X" "\n"' tmpab > basic2.mem
	rm tmpaa tmpab
