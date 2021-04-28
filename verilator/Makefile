
.PHONY: build

CFLAGS := $(shell pkg-config sdl2 --cflags)
LDFLAGS := $(shell pkg-config sdl2 --libs)
SEARCH := $(shell find ../ -type d -printf '-y %p ')

build:
	rm -rf obj_dir
	verilator -Wall -Wno-fatal --top-module rx78 --cc ../rx78.v $(SEARCH) --exe tb.cpp --trace -CFLAGS '${CFLAGS} -g' -LDFLAGS '${LDFLAGS} -lSDL2_ttf' --public
	make -j -C ./obj_dir -f Vrx78.mk Vrx78
	cp -R obj_dir ~

rom:
	hexdump -v -e '1/1 "%02X" "\n"' ipl.rom > rom.mem
