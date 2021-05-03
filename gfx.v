
module gfx(
  input [8:0] h,
  input [8:0] v,
  output reg [12:0] gfx_vaddr,
  input [7:0] gfx_vdata,
  input [7:0] fg1, fg2, fg3,
  input [7:0] bg1, bg2, bg3,
  input [7:0] p1, p2, p3, p4, p5, p6,
  input [7:0] mask, // mask for vram planes {fg,fg,fg,bg,bg,bg}
  input [7:0] cmask,
  input [7:0] bgc,
  output reg [7:0] red,
  output reg [7:0] green,
  output reg [7:0] blue
);

assign gfx_vaddr = 'hec0 + v * 'd24 + h[8:3];
wire [2:0] hbit = h[2:0] - 3'd1;

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

// wire [7:0] c1m = c1 & cmask;
// wire [7:0] c2m = c2 & cmask;

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

assign red   = |r2 ? r2 : |r1 ? r1 : r0;
assign green = |g2 ? g2 : |g1 ? g1 : g0;
assign blue  = |b2 ? b2 : |b1 ? b1 : b0;

endmodule