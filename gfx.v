
module gfx(
  input clk,
  input [8:0] h,
  input [8:0] v,
  output reg [9:0] gfx_vaddr,
  input [7:0] gfx_vdata,
  input [7:0] fg1, fg2, fg3,
  input [7:0] bg1, bg2, bg3,
  input [7:0] p1, p2, p3, p4, p5, p6,
  input [7:0] mask, // mask for vram layers {fg,fg,fg,bg,bg,bg}
  // output reg [12:0] gfx_raddr, // base is $1A27
  // input [7:0] gfx_rdata,
  output reg [7:0] red,
  output reg [7:0] green,
  output reg [7:0] blue
);

wire [2:0] hbit = h[2:0];

wire [3:0] fg_pen = {
  mask[0] ? fg1[hbit] : 0,
  mask[1] ? fg2[hbit] : 0,
  mask[2] ? fg3[hbit] : 0
};

wire [3:0] bg_pen = {
  mask[3] ? bg1[hbit] : 0,
  mask[4] ? bg2[hbit] : 0,
  mask[5] ? bg3[hbit] : 0
};

wire [7:0] c1 = (bg_pen[0] ? p1 : 0) | (bg_pen[1] ? p2 : 0) | (bg_pen[2] ? p3 : 0);
wire [7:0] c2 = (fg_pen[0] ? p4 : 0) | (fg_pen[1] ? p5 : 0) | (fg_pen[2] ? p6 : 0);

wire [7:0] r1 = c1[4] ? c1[0] ? 8'hff : 8'h80 : 0;
wire [7:0] r2 = c2[4] ? c2[0] ? 8'hff : 8'h80 : 0;
wire [7:0] g1 = c1[5] ? c1[1] ? 8'hff : 8'h80 : 0;
wire [7:0] g2 = c2[5] ? c2[1] ? 8'hff : 8'h80 : 0;
wire [7:0] b1 = c1[6] ? c1[2] ? 8'hff : 8'h80 : 0;
wire [7:0] b2 = c2[6] ? c2[2] ? 8'hff : 8'h80 : 0;

assign red = r2 ? r2 : r1;
assign green = g2 ? g2 : g1;
assign blue = b2 ? b2 : b1;

// draw bg
// - if color index < 8 use r1 = p1 r2 = p2 r3 = p3 else use r1 = p4 r2 = p5 r3 = p6
// - c = bit 0 ? r1 | bit 1 ? r2 | bit 2 ? r3
// - red = { c[4] ? 4'b1111, c[0] ? 4'b1111 }
// - green = { c[5] ? 4'b1111, c[1] ? 4'b1111 }
// - blue = { c[6] ? 4'b1111, c[2] ? 4'b1111 }
// draw fg if there is a color
// - if color index < 8 use r1 =

// 192x184 24x23 552
/*
reg [7:0] hl;
reg [2:0] state;

always @(posedge clk) begin
  hl <= h;
  case (state)
    3'd0: begin
      state <= hl ^ h ? 3'd1 : 3'd0;
      gfx_vaddr <= 'h2c0 + v[8:3] * 24 + h[8:3];
    end
    3'd1: begin
      gfx_raddr <= 13'h1a27 + { gfx_vdata, 4'd0 };
      state <= 3'd2;
    end
    3'd2: state <= 3'd3;
    3'd3: begin
      red <= gfx_rdata;//{ gfx_rdata[h[3:0]], 7'd0 };
      state <= 3'd0;
    end
  endcase
end
*/
endmodule