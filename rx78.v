
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
wire [7:0] rom_q, ext_q, ram_q;
reg [7:0] vram_rd_bank, vram_wr_bank;
reg [7:0] io_q;
wire [12:0] gfx_vaddr, gfx_raddr;
wire [7:0] gfx_vdata, gfx_rdata;
reg [7:0] mask;

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

reg [7:0] p1, p2, p3, p4, p5, p6;

wire [7:0] zdi = io_en ? io_q : rom_q | ext_q | ram_q | vram_q;

// I/O
always @(posedge clk) begin
  io_q <= 8'd0;
  if (io_en) begin
    case (zaddr[7:0])
      8'hf1: if (~zwr) vram_rd_bank <= zdo;
      8'hf2: if (~zwr) vram_wr_bank <= zdo;
      8'hf5: if (~zwr) p1 <= zdo;
      8'hf6: if (~zwr) p2 <= zdo;
      8'hf7: if (~zwr) p3 <= zdo;
      8'hf8: if (~zwr) p4 <= zdo;
      8'hf9: if (~zwr) p5 <= zdo;
      8'hfa: if (~zwr) p6 <= zdo;
      8'hfe: if (~zwr) mask <= zdo;
    endcase
  end
end

// 8k rom
rom rom(
  .clk(clk),
  .ce_n(~rom_en),
  .addr(zaddr[12:0]),
  .q(rom_q),

  .addr2(gfx_raddr),
  .q2(gfx_rdata)
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

reg [7:0] bg1, bg2, bg3, fg1, fg2, fg3;
reg [5:0] vchip_en = zwr ? vram_rd_bank : vram_wr_bank;

wire [7:0] v1q, v2q, v3q, v4q, v5q, v6q;
wire [7:0] vram_q = vram_en ? v1q | v2q | v3q | v4q | v5q | v6q : 8'd0; // ?

// vram
dpram #(.addr_width(13), .data_width(8)) vram1(
  .clk(clk),
  .addr(zaddr[12:0]),
  .din(zdo),
  .q(v1q),
  .wr_n(zwr),
  .ce_n(vchip_en[0]),
  .vaddr(gfx_vaddr[12:0]),
  .vdata(fg1)
);

dpram #(.addr_width(13), .data_width(8)) vram2(
  .clk(clk),
  .addr(zaddr[12:0]),
  .din(zdo),
  .q(v2q),
  .wr_n(zwr),
  .ce_n(vchip_en[1]),
  .vaddr(gfx_vaddr[12:0]),
  .vdata(fg2)
);

dpram #(.addr_width(13), .data_width(8)) vram3(
  .clk(clk),
  .addr(zaddr[12:0]),
  .din(zdo),
  .q(v3q),
  .wr_n(zwr),
  .ce_n(vchip_en[2]),
  .vaddr(gfx_vaddr[12:0]),
  .vdata(fg3)
);

dpram #(.addr_width(13), .data_width(8)) vram4(
  .clk(clk),
  .addr(zaddr[12:0]),
  .din(zdo),
  .q(v4q),
  .wr_n(zwr),
  .ce_n(vchip_en[3]),
  .vaddr(gfx_vaddr[12:0]),
  .vdata(bg1)
);

dpram #(.addr_width(13), .data_width(8)) vram5(
  .clk(clk),
  .addr(zaddr[12:0]),
  .din(zdo),
  .q(v5q),
  .wr_n(zwr),
  .ce_n(vchip_en[4]),
  .vaddr(gfx_vaddr[12:0]),
  .vdata(bg2)
);

dpram #(.addr_width(13), .data_width(8)) vram6(
  .clk(clk),
  .addr(zaddr[12:0]),
  .din(zdo),
  .q(v6q),
  .wr_n(zwr),
  .ce_n(vchip_en[5]),
  .vaddr(gfx_vaddr[12:0]),
  .vdata(bg3)
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
  .fg1(fg1), .fg2(fg2), .fg3(fg3),
  .bg1(bg1), .bg2(bg2), .bg3(bg3),
  .p1(p1), .p2(p2), .p3(p3),
  .p4(p4), .p5(p5), .p6(p6),
  .mask(mask),
  // .gfx_raddr(gfx_raddr),
  // .gfx_rdata(gfx_rdata),
  .red(red),
  .green(green),
  .blue(blue)
);

endmodule