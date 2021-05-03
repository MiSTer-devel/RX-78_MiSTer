
module rx78(
  input reset,
  input clk,
  input vclk,
  input cen,

  input [7:0] upload_index,
  input upload,
  input [24:0] upload_addr,
  input [7:0] upload_data,

  // keyboard
  input [10:0] ps2_key,
  
  
  // joystick input
  input [31:0] joy1,  
  input [31:0] joy2,
 
  
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

wire zwr, ziorq, zm1;
wire [15:0] zaddr;
wire [7:0] zdo;
wire [7:0] rom_q, ext_q, ram_q, cart_q1, cart_q2;
reg [7:0] vram_rd_bank, vram_wr_bank;
reg [7:0] io_q;
wire [12:0] gfx_vaddr;
wire [7:0] gfx_vdata;
reg [7:0] mask, cmask, bgcolor;

assign px = vclk;

/*
 0000 - 1FFF : 8K ROM
 2000 - 5FFF : Cartridges
 6000 - AFFF : ext RAM 32k but not fully mapped
 B000 - EBFF : RAM 16k
 EC00 - FFFF : VRAM 8k bank
 - is full RAM accessible when bank = 0?
*/

wire rom_en = ~io_en && zaddr < 16'h2000;
wire cart_en = ~io_en && zaddr >= 16'h2000 && zaddr < 16'h6000;
wire cart_1_en = cart_en && ~zaddr[14];
wire cart_2_en = cart_en && zaddr[14];
wire ext_en = ~io_en && zaddr >= 16'h6000 && zaddr < 16'hb000;
wire ram_en = ~io_en && zaddr >= 16'hb000 && zaddr < 16'hec00;
wire vram_en = ~io_en && zaddr >= 16'hec00;
wire io_en = ~ziorq & zm1;

reg [7:0] p1, p2, p3, p4, p5, p6;

//wire [7:0] zdi = io_en ? io_q : (rom_q | ext_q | cart_q1 | cart_q2 | ram_q | vram_q);
wire [7:0] zdi = io_en ? io_q : rom_en ? rom_q :  ext_en ?  ext_q : cart_1_en ? cart_q1 : cart_2_en ? cart_q2  : ram_en ?  ram_q : vram_en ? vram_q: 8'hff;


wire [7:0] kb_rows;
reg [7:0] kb_cols;

// I/O
always @(posedge clk) begin
  io_q <= 8'hff;
  if (io_en) begin
    case (zaddr[7:0])
      //8'h4d: io_q <= 8'h0;
      8'hf1: if (~zwr) vram_rd_bank <= zdo;
      8'hf2: if (~zwr) vram_wr_bank <= zdo;
      //8'hf3: if (~zwr) ?
      8'hf4: if (~zwr) kb_cols <= zdo; else io_q <= kb_rows;
      //8'hf4: io_q <= 0;
      8'hf5: if (~zwr) p1 <= zdo;
      8'hf6: if (~zwr) p2 <= zdo;
      8'hf7: if (~zwr) p3 <= zdo;
      8'hf8: if (~zwr) p4 <= zdo;
      8'hf9: if (~zwr) p5 <= zdo;
      8'hfa: if (~zwr) p6 <= zdo;
      8'hfb: if (~zwr) cmask <= { 2'b0,  zdo[0], zdo[2], zdo[1], zdo[0], zdo[2], zdo[1] };
      8'hfc: if (~zwr) bgcolor <= zdo; // bg color
      8'hfe: if (~zwr) mask <= zdo;
    endcase
  end
end

// 8k rom
rom rom(
  .clk(clk),
  .ce_n(~rom_en),
  .addr(zaddr[12:0]),
  .q(rom_q)
);

// 16k cartride (2x8k)

cart cart1(
  .clk(clk),
  .ce_n(~cart_en | zaddr[14]),
  .addr(zaddr[12:0]),
  .q(cart_q1),

  .upload((upload_index==1) && upload && upload_addr < 25'h2000),
  .upload_addr(upload_addr[12:0]),
  .upload_data(upload_data)
);



cart cart2(
  .clk(clk),
  .ce_n(~cart_en | ~zaddr[14]),
  .addr(zaddr[12:0]),
  .q(cart_q2),

  .upload((upload_index==1) && upload && upload_addr >= 25'h2000),
  .upload_addr(upload_addr[12:0]),
  .upload_data(upload_data)
);


/*
dualpram #(.addr_width_g(13)) cart1(
	.clock_a(clk),
	.address_a(zaddr[12:0]),
	.enable_a(~(~cart_en | zaddr[14])),
	.q_a(cart_q1),
	
	.clock_b(clk),
	.wren_b((upload_index==1) && upload && upload_addr < 25'h2000),
	.address_b(upload_addr[12:0]),
	.data_b(upload_data)
);


dualpram #(.addr_width_g(13)) cart2(
	.clock_a(clk),
	.address_a(zaddr[12:0]),
	.enable_a(~(~cart_en | ~zaddr[14])),
	.q_a(cart_q2),
	
	.clock_b(clk),
	.wren_b((upload_index==1) && upload && upload_addr >= 25'h2000),
	.address_b(upload_addr[12:0]),
	.data_b(upload_data)
);
*/
		
// 32k ext ram
dpram #(.addr_width(15), .data_width(8)) ext_ram(
  .clk(clk),
  .addr(zaddr[14:0]),
  .din(zdo),
  .q(ext_q),
  .wr_n(zwr),
  .ce_n(~ext_en)
);

// 16k ram / todo: fix address without subtracting, two 8k chips?
dpram #(.addr_width(14), .data_width(8)) ram(
  .clk(clk),
  .addr(zaddr - 16'hb000),
  .din(zdo),
  .q(ram_q),
  .wr_n(zwr),
  .ce_n(~ram_en)
);

wire [7:0] bg1, bg2, bg3, fg1, fg2, fg3;
wire [5:0] vchip_en = vram_en ? (zwr ? read_bank : ~vram_wr_bank) : 6'h3f;

reg [7:0] read_bank;
always @*
  case (vram_rd_bank)
    8'd1: read_bank = 8'b11111110;
    8'd2: read_bank = 8'b11111101;
    8'd3: read_bank = 8'b11111011;
    8'd4: read_bank = 8'b11110111;
    8'd5: read_bank = 8'b11101111;
    8'd6: read_bank = 8'b11011111;
  endcase

wire [7:0] v1q, v2q, v3q, v4q, v5q, v6q;
wire [7:0] vram_q = vram_en ? (v1q | v2q | v3q | v4q | v5q | v6q) : 8'd0;

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
  .m1_n(zm1),
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
  .clk(vclk),
  .h(h),
  .v(v),
  .gfx_vaddr(gfx_vaddr),
  .fg1(fg1), .fg2(fg2), .fg3(fg3),
  .bg1(bg1), .bg2(bg2), .bg3(bg3),
  .p1(p1), .p2(p2), .p3(p3),
  .p4(p4), .p5(p5), .p6(p6),
  .mask(mask),
  .cmask(cmask),
  .bgc(bgcolor),
  .red(red),
  .green(green),
  .blue(blue)
);


keyboard kb(
.clk_sys(clk),
.reset(reset),
.ps2_key(ps2_key),
.addr(kb_cols),
.kb_rows(kb_rows),
.Fn(),
.modif(),
.joy1(joy1),
.joy2(joy2)

);
endmodule