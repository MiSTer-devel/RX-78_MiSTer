
module rx78(
  input reset,
  input clk,
  input vclk,
  input cen,

  output [8:0] h,
  output [8:0] v,
  output hs,
  output vs,
  output hb,
  output vb,
  output px,
  output [7:0] red,
  output [7:0] green,
  output [7:0] blue
);

wire zwr, ziorq;
wire [15:0] zaddr;
wire [7:0] zdo;
wire [7:0] rom_q, ext_q, ram_q, vram_q;
reg [7:0] vram_bank;
reg [7:0] io_q;
wire [12:0] gfx_vaddr, gfx_raddr;
wire [7:0] gfx_vdata, gfx_rdata;

assign px = vclk;

/*
 0000 - 1FFF : 8K ROM
 2000 - 5FFF : Cartridges
 6000 - AFFF : ext RAM 32k but not fully mapped
 D000 - EBFF : RAM 16k but not fully mapped because of VRAM
 EC00 - FFFF : VRAM 8k bank - is VRAM 6x8k?
*/

wire rom_en = zaddr < 16'h2000;
wire cart_en = zaddr >= 16'h2000 && zaddr < 16'h6000;
wire ext_en = zaddr >= 16'h6000 && zaddr < 16'hb000;
wire ram_en = zaddr >= 16'hb000 && zaddr < 16'hec00;
wire vram_en = zaddr >= 16'hec00;
wire io_en = ~ziorq;

wire [7:0] zdi = rom_q | ext_q | ram_q | vram_q | io_q;

// I/O
always @* begin
  io_q = 8'd0;
  if (io_en) begin
    case (zaddr[7:0])
      8'hf1: io_q = vram_bank;
      8'hf2: if (~zwr) vram_bank = zdo;
    endcase
  end
end

// 8k rom
rom rom(
  .clk(clk),
  .ce_n(~rom_en),
  .addr(zaddr[12:0]),
  .q(rom_q),

  .iaddr(gfx_raddr),
  .idata(gfx_rdata)
);

// 32k ext ram
dpram #(.addr_width(15), .data_width(8)) ext_ram(
  .clk(clk),
  .addr(zaddr[14:0]),
  .din(zdo),
  .q(ext_q),
  .wr_n(zwr),
  .ce_n(~ext_en)
);

// 16k ram
dpram #(.addr_width(14), .data_width(8)) ram(
  .clk(clk),
  .addr(zaddr[13:0]),
  .din(zdo),
  .q(ram_q),
  .wr_n(zwr),
  .ce_n(~ram_en)
);

// 8k vram
wire [12:0] vram_addr = { vram_bank[2:0], zaddr[12:0] };
dpram #(.addr_width(13), .data_width(8)) vram(
  .clk(clk),
  .addr(vram_addr),
  .din(zdo),
  .q(vram_q),
  .wr_n(zwr),
  .ce_n(~vram_en),
  .vaddr(gfx_vaddr),
  .vdata(gfx_vdata)
);

// vblank interrupt
reg vb_latch;
wire zint = (vb_latch ^ vb) & vb;
always @(posedge clk) vb_latch <= vb;

tv80s cpu(
  .reset_n(~reset),
  .clk(clk),
  .wait_n(1'b1),
  .int_n(~zint),
  .nmi_n(1'b1),
  .busrq_n(1'b1),
  .m1_n(),
  .mreq_n(),
  .iorq_n(ziorq),
  .rd_n(),
  .wr_n(zwr),
  .rfsh_n(),
  .halt_n(),
  .busak_n(),
  .A(zaddr),
  .di(zdi),
  .dout(zdo)
);

video video(
  .clk(vclk),
  .hs(hs),
  .vs(vs),
  .hb(hb),
  .vb(vb),
  .hcount(h),
  .vcount(v)
);

gfx gfx(
  .clk(clk),
  .h(h),
  .v(v),
  .gfx_vaddr(gfx_vaddr),
  .gfx_rdata(gfx_vdata),
  .gfx_raddr(gfx_raddr),
  .gfx_rdata(gfx_rdata)
);

endmodule