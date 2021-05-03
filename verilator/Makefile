
.PHONY: build

CFLAGS := $(shell pkg-config sdl2 --cflags)
LDFLAGS := $(shell pkg-config sdl2 --libs)

build:
	rm -rf obj_dir
	verilator -Wall -Wno-fatal --top-module rx78 --cc -DLOAD_CART ../rtl/rx78.v -y ../rtl/tv80 -y ../rtl --exe tb.cpp --trace -CFLAGS '${CFLAGS} -g' -LDFLAGS '${LDFLAGS} -lSDL2_ttf' --public
	make -j -C ./obj_dir -f Vrx78.mk Vrx78
	cp -R obj_dir ~

rom:
	hexdump -v -e '1/1 "%02X" "\n"' roms/ipl.rom > roms/rom.mem
