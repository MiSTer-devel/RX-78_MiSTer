#============================================================================
#  RX-78 Verilator simulation
#
#  Modelled on the Apple-IIgs vsim Makefile.
#
#    make            build ./obj_dir/Vemu
#    make run        build and launch the windowed sim
#    make test       build and run the headless regression (run_tests.sh)
#    make clean
#
#  The CPU is tv80 (Verilog), not T80 (VHDL): rtl/rx78.v selects tv80s under
#  `ifdef VERILATOR`, which Verilator predefines. Likewise jt89 has a pure
#  Verilog path (jt89_verilog.qip); the .vhd files are unused here.
#============================================================================

V     = verilator
RTL   = ../rtl
TOP   = --top-module emu
V_INC = +incdir+$(RTL)

# Verilator flags.
#   -Wno-fatal            : the core has plenty of width/case warnings; they
#                           are pre-existing and not what the sim is for.
#   --converge-limit      : vdp.v/video.v have combinational feedback through
#                           the pixel pipeline that needs a few extra passes.
#   +define+SIMULATION=1  : matches the IIgs convention; unused today but
#                           available if RTL ever needs a sim-only branch.
#   --no-timing           : tv80_core.v writes `x <= #1 y`. Those delays are
#                           cosmetic (the RTL is synthesised with them ignored),
#                           so ignoring them here matches the FPGA build.
#                           Verilator 5 refuses to guess and demands the flag.
V_DEFINE = +define+SIMULATION=1 \
	-CFLAGS "-I../sim/imgui -I../sim/vinc -I../sim/ -g" \
	--timescale-override 1ps/1ps -Wno-TIMESCALEMOD -Wno-fatal \
	--no-timing --converge-limit 6000 \
	-I$(RTL)

# VCD tracing: `make TRACE=1`, then look at obj_dir/*.vcd. Costs runtime even
# when not dumping, so it is opt-in.
ifeq ($(TRACE),1)
V_DEFINE += --trace
CXX_DEFINE += -DVM_TRACE_VCD=1
else
CXX_DEFINE += -DVM_TRACE_VCD=0
endif

UNAME_S := $(shell uname -s)

ifeq ($(UNAME_S), Darwin)
	LIBS += -framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo `sdl2-config --libs`
	LIBS += -L/usr/local/lib -L/opt/local/lib -L/opt/homebrew/lib
	CXXFLAGS += `sdl2-config --cflags`
	CXXFLAGS += `sdl2-config --cflags | sed 's|include/SDL2|include/|'`
	CXXFLAGS += -I/usr/local/include -I/opt/local/include -I/opt/homebrew/include
endif

ifeq ($(UNAME_S), Linux)
	LIBS += -lGL -ldl `sdl2-config --libs`
	CXXFLAGS += `sdl2-config --cflags`
endif

ifeq ($(findstring MINGW,$(UNAME_S)),MINGW)
	LIBS += -lgdi32 -lopengl32 -limm32 `pkg-config --static --libs sdl2`
	CXXFLAGS += `pkg-config --cflags sdl2`
endif

CC_OPT    = -O2
V_OPT     = -O3 --x-assign fast --x-initial fast --noassert
CXXFLAGS += $(CC_OPT) $(CXX_DEFINE) -Isim/imgui -Isim
LDFLAGS   = $(LIBS)
EXE       = ./obj_dir/Vemu

# Core RTL. rom.v does $readmemh("rom.mem"), so the sim must be run from this
# directory -- see the rom.mem rule below.
V_SRC = \
	sim.v \
	$(RTL)/rx78.v \
	$(RTL)/vdp.v \
	$(RTL)/video.v \
	$(RTL)/keyboard.sv \
	$(RTL)/dpram.v \
	$(RTL)/cart.v \
	$(RTL)/rom.v \
	$(RTL)/tv80/tv80s.v \
	$(RTL)/tv80/tv80_core.v \
	$(RTL)/tv80/tv80_alu.v \
	$(RTL)/tv80/tv80_mcode.v \
	$(RTL)/tv80/tv80_reg.v \
	$(RTL)/jt89/jt89.v \
	$(RTL)/jt89/jt89_noise.v \
	$(RTL)/jt89/jt89_vol.v \
	$(RTL)/jt89/jt89_mixer.v \
	$(RTL)/jt89/jt89_tone.v

C_SRC = \
	sim_main.cpp \
	sim/sim_bus.cpp sim/sim_clock.cpp sim/sim_console.cpp sim/sim_video.cpp \
	sim/sim_input.cpp sim/sim_audio.cpp \
	sim/imgui/imgui_impl_sdl.cpp sim/imgui/imgui_impl_opengl2.cpp \
	sim/imgui/imgui_draw.cpp sim/imgui/imgui_widgets.cpp sim/imgui/imgui_tables.cpp \
	sim/imgui/imgui.cpp sim/imgui/ImGuiFileDialog.cpp \
	sim/imgui/implot.cpp sim/imgui/implot_items.cpp

VOUT = obj_dir/Vemu.cpp

all: rom.mem $(EXE)

# rtl/rom.v hardcodes $readmemh("rom.mem"), relative to the working directory.
rom.mem: $(RTL)/rom.mem
	cp $< $@

$(VOUT): $(V_SRC) Makefile
	$V -cc $(V_OPT) -LDFLAGS "$(LDFLAGS)" -exe --Mdir ./obj_dir \
		$(V_DEFINE) $(V_INC) $(TOP) -CFLAGS "$(CXXFLAGS)" $(V_SRC) $(C_SRC)

$(EXE): $(VOUT) $(C_SRC)
	(cd obj_dir; make -f Vemu.mk OBJCACHE= OPT_FAST="-O2" OPT_SLOW="-O0" OPT_GLOBAL="-O2")

run: all
	$(EXE)

test: all
	./run_tests.sh

clean:
	rm -rf obj_dir rom.mem

# Remove generated screenshots but keep the reference set.
clean-shots:
	rm -f screenshot_*.png shots/*.png

.PHONY: all run test clean clean-shots
