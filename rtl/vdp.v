
module vdp(
  input clk,
  input [8:0] h,
  input [8:0] v,
  output reg [12:0] vdp_addr,
  input [7:0] fg1, fg2, fg3, // vram fg data
  input [7:0] bg1, bg2, bg3, // vram bg data
  input [7:0] p1, p2, p3, p4, p5, p6, // palette
  input [7:0] mask, // mask for vram planes {fg,fg,fg,bg,bg,bg}
  input [7:0] cmask,
  input [7:0] bgc,
  output [7:0] red,
  output [7:0] green,
  output [7:0] blue
);

// 192x184
// border: 32x20

wire [8:0] hwb = h - 9'd32;
wire [8:0] vwb = v - 9'd20;

always @(posedge clk)
	vdp_addr = 'hec0 + vwb * 'd24 + hwb[8:3];


wire [2:0] hbit = hwb[2:0] - 3'd1;

wire [2:0] fg_pen = {
  mask[2] & fg3[hbit],
  mask[1] & fg2[hbit],
  mask[0] & fg1[hbit]
};

wire [2:0] bg_pen = {
  mask[5] & bg3[hbit],
  mask[4] & bg2[hbit],
  mask[3] & bg1[hbit]
};

wire [7:0] c1 = (bg_pen[0] ? p4 : 0) | (bg_pen[1] ? p5 : 0) | (bg_pen[2] ? p6 : 0);
wire [7:0] c2 = (fg_pen[0] ? p1 : 0) | (fg_pen[1] ? p2 : 0) | (fg_pen[2] ? p3 : 0);

wire [7:0] c1m = c1 & cmask;
wire [7:0] c2m = c2 & cmask;

wire [7:0] c1r = c1; //|c1m ? c1m : c1;
wire [7:0] c2r = c2; //|c2m ? c2m : c2;

wire [7:0] r0 = bgc[4] & bgc[0] ? 8'hff : bgc[0] ? 8'h7f : 0;
wire [7:0] r1 = c1r[4] & c1r[0] ? 8'hff : c1r[0] ? 8'h7f : 0;
wire [7:0] r2 = c2r[4] & c2r[0] ? 8'hff : c2r[0] ? 8'h7f : 0;
wire [7:0] g0 = bgc[5] & bgc[1] ? 8'hff : bgc[1] ? 8'h7f : 0;
wire [7:0] g1 = c1r[5] & c1r[1] ? 8'hff : c1r[1] ? 8'h7f : 0;
wire [7:0] g2 = c2r[5] & c2r[1] ? 8'hff : c2r[1] ? 8'h7f : 0;
wire [7:0] b0 = bgc[6] & bgc[2] ? 8'hff : bgc[2] ? 8'h7f : 0;
wire [7:0] b1 = c1r[6] & c1r[2] ? 8'hff : c1r[2] ? 8'h7f : 0;
wire [7:0] b2 = c2r[6] & c2r[2] ? 8'hff : c2r[2] ? 8'h7f : 0;

wire screen = h > 32 && v > 19 && h < 192+32 && v < 184+20;
assign red   = screen ? fg_pen ? r2 : bg_pen ? r1 : r0 : 0;
assign green = screen ? fg_pen ? g2 : bg_pen ? g1 : g0 : 0;
assign blue  = screen ? fg_pen ? b2 : bg_pen ? b1 : b0 : 0;

endmodule