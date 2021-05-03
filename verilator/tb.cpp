#include <fstream>
#include <getopt.h>
#include "Vrx78.h"
#include <verilated_vcd_c.h>
#include "SDL2/SDL.h"
#include "SDL2/SDL_ttf.h"

Vrx78* rx;
bool running = true;

SDL_Window* window;
SDL_Surface* screen;
SDL_Surface* canvas;
int width = 341;
int height = 276;

void setPixel(SDL_Surface* dst, int x, int y, int color) {
  *((Uint32*)(dst->pixels) + x + y * dst->w) = color;
}

int main(int argc, char** argv, char** env) {

  int stop_arg = 10;
  int trace_arg = -1;
  int len_arg = 3;
  char *cart_arg = NULL;

  static struct option long_options[] = {
    {"trace", no_argument, 0, 't'},
    {"stop", no_argument, 0, 's'},
    {"length", no_argument, 0, 'l'},
    {"cart", no_argument, 0, 'c'},
    {NULL, 0, NULL, 0}
  };

  int opt;
  while ((opt = getopt_long(argc, argv, "s:t:l:c:", long_options, NULL)) != -1) {
    switch (opt) {
      case 's':
        stop_arg = atoi(optarg);
        break;
      case 't':
        trace_arg = atoi(optarg);
        break;
      case 'l':
        len_arg = atoi(optarg);
        break;
      case 'c':
        cart_arg = optarg;
        break;
    }
  }

  int start_trace = trace_arg;
  int stop_trace  = trace_arg + len_arg;
  int stop_sim    = stop_arg;
  bool tracing = false;

  Verilated::commandArgs(argc, argv);

  window = SDL_CreateWindow(
    "sim",
    SDL_WINDOWPOS_UNDEFINED,
    SDL_WINDOWPOS_UNDEFINED,
    width, height,
    SDL_WINDOW_SHOWN
  );

  if (window == NULL) {
    printf("Could not create window: %s\n", SDL_GetError());
    return 1;
  }

  screen = SDL_GetWindowSurface(window);
  canvas = SDL_CreateRGBSurfaceWithFormat(0, width, height, 24, SDL_PIXELFORMAT_RGB888);

  int hcycles = 0;
  long long cycles = 0;
  rx = new Vrx78;
  rx->reset = 1;

  #if VM_TRACE
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  rx->trace(tfp, 99);
  tfp->open("dump.vcd");
  #endif

  if (cart_arg != NULL) {

    printf("loading cart file\n");

    std::ifstream ifs(cart_arg, std::ios::in | std::ios::binary | std::ios::ate);
    if (!ifs) return -1;

    int rom_size = ifs.tellg();
    ifs.seekg(0);

    rx->upload = 1;
    rx->upload_addr = 0;

    int pos = 0;
    while (pos < rom_size) {

      if (rx->clk) {
        rx->upload_data = ifs.get();
        rx->upload_addr = pos;
        pos++;
      }

      #if VM_TRACE
      if (start_trace >= 0 && hcycles >= start_trace) tracing = true;
      if (hcycles > stop_trace) tracing = false;
      if (tfp && tracing) tfp->dump((int)cycles);
      #endif

      if (cycles % 1'000'000 == 0) hcycles++;
      if (hcycles > stop_sim) running = false;

      rx->clk = !rx->clk;
      rx->eval();
      cycles++;

    }

    rx->upload = 0;
    printf("ROM loaded\n");

  }

  TTF_Font *font = NULL;
  TTF_Init();
  font = TTF_OpenFont("arial.ttf", 8);
  SDL_Color red = { 255, 0, 0 };
  SDL_Surface* text;
  SDL_Rect txtPos;
  char dbgstr[128];

  bool dirty;

  while (running) {

    #if VM_TRACE
    if (start_trace >= 0 && hcycles >= start_trace) tracing = true;
    if (hcycles > stop_trace) tracing = false;
    if (tfp && tracing) tfp->dump((int)cycles);
    #endif

    if (cycles % 1'000'000 == 0) hcycles++;
    if (hcycles > stop_sim) running = false;

    rx->reset = hcycles < 2;

    rx->clk = !rx->clk;
    rx->vclk = cycles % 4 == 0;;
    //rx->cen = cycles % 8 == 0;
    rx->eval();

    if (dirty) {

      // txtPos.x = 5;
      // txtPos.y = 5;
      // sprintf(dbgstr, "%d", hcycles);
      // text = TTF_RenderText_Blended(font, dbgstr, red);
      // SDL_BlitSurface(text, NULL, canvas, &txtPos);

      SDL_BlitSurface(canvas, NULL, screen, NULL);
      SDL_UpdateWindowSurface(window);

      SDL_FillRect(canvas, NULL, 0x0);
      printf("refresh\n");
      dirty = false;
    }

    if (rx->px) {

      int px = rx->h;
      int py = rx->v;

      if (px >= 0 && px < width && py >= 0 && py < height) {
        int c = rx->red << 16 | rx->green << 8 | rx->blue;
        setPixel(canvas, px, py, !(rx->vb || rx->hb) ? px < 192 && py < 184 ? c : 0x003300 : 0x330000);
      }

      if (px == 341 && py == 276) dirty = true; // <=== fix
    }

    if (cycles % 1'000'000 == 0) {
      printf("sim: %d %s\n", (int)cycles, tracing == true ? "(tracing)" : "");
    }

    cycles++;

  }

  #if VM_TRACE
    if (tfp) tfp->close();
  #endif

  return 0;
}
