
module vdp(
  input clk,
  input vclk,
  input [8:0] h,
  input [8:0] v,
  output reg [12:0] vdp_addr,
  input [7:0] fg1, fg2, fg3, // vram fg data
  input [7:0] bg1, bg2, bg3, // vram bg data
  input [7:0] p1, p2, p3, p4, p5, p6, // palette
  input [7:0] mask, // mask for vram planes {fg,fg,fg,bg,bg,bg}
  input [7:0] cmask,
  input [7:0] bgc,
  output reg [7:0] red,
  output reg [7:0] green,
  output reg [7:0] blue
);

// 192x184
// border: 32x20

wire [2:0] hbit = hwb[2:0] - 3'd1;

wire [8:0] hwb = h - 9'd32;
wire [8:0] vwb = v - 9'd20;

reg [3:0] state;

reg [2:0] fg_pen, bg_pen;
reg [7:0] c1r, c2r, r0, r1, r2, g0, g1, g2, b0, b1, b2;

wire screen = h > 32 && v > 19 && h < 192+32 && v < 184+20;

always @(posedge vclk)
  vdp_addr <= 'hec0 + vwb * 13'd24 + hwb[8:3];

always @(posedge clk) begin
  case (state)
    4'd0: if (vclk) state <= 4'd2;
    //4'd1: state <= 4'd2;
    4'd2: begin
      fg_pen <= mask[2:0] & { fg3[hbit], fg2[hbit], fg1[hbit] };
      bg_pen <= mask[5:3] & { bg3[hbit], bg2[hbit], bg1[hbit] };
      state <= 4'd3;
    end
    4'd3: begin
      c1r <= (bg_pen[0] ? p4 : 0) | (bg_pen[1] ? p5 : 0) | (bg_pen[2] ? p6 : 0);
      c2r <= (fg_pen[0] ? p1 : 0) | (fg_pen[1] ? p2 : 0) | (fg_pen[2] ? p3 : 0);
      state <= 4'd4;
    end
    4'd4: begin
      r0 <= bgc[4] & bgc[0] ? 8'hff : bgc[0] ? 8'h7f : 0;
      r1 <= c1r[4] & c1r[0] ? 8'hff : c1r[0] ? 8'h7f : 0;
      r2 <= c2r[4] & c2r[0] ? 8'hff : c2r[0] ? 8'h7f : 0;
      g0 <= bgc[5] & bgc[1] ? 8'hff : bgc[1] ? 8'h7f : 0;
      g1 <= c1r[5] & c1r[1] ? 8'hff : c1r[1] ? 8'h7f : 0;
      g2 <= c2r[5] & c2r[1] ? 8'hff : c2r[1] ? 8'h7f : 0;
      b0 <= bgc[6] & bgc[2] ? 8'hff : bgc[2] ? 8'h7f : 0;
      b1 <= c1r[6] & c1r[2] ? 8'hff : c1r[2] ? 8'h7f : 0;
      b2 <= c2r[6] & c2r[2] ? 8'hff : c2r[2] ? 8'h7f : 0;
      state <= 4'd5;
    end
    4'd5: begin
      red <= screen ? fg_pen ? r2 : bg_pen ? r1 : r0 : 0;
      green <= screen ? fg_pen ? g2 : bg_pen ? g1 : g0 : 0;
      blue  = screen ? fg_pen ? b2 : bg_pen ? b1 : b0 : 0;
      state <= 4'd0;
    end
  endcase

end


endmodule
