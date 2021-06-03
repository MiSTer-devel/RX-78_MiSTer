//
// RX-78 Video Display Controller
//
// There are 6x1bit vram planes, 1 byte for 8 pixels. Each vram layer has a
// corresponding color palette (p1, p2, p3, p4, p5, p6), at I/O from $F5 to $FA.
//
// A 8bit palette color is encoded as 0RGB0RGB, bits 3:0 activate a color
// channel while bits 6:4 define the brightness for each channel. For example,
// 01000100 is red, 00000100 is dark red, 00100010 is green, 00000010 is dark
// green...
//
// The "mask" register at I/O $FE simply enables/disables vram planes.
//
// The "cmask" register at I/O $FB defines the fg/bg layers. e.g. if cmask is
// 110010 then layers 1,3,4 are part of the background layer and 2,5,6 are
// foreground.
//
// The colors inside the foreground or the background layers are OR'ed together
// to build the final pixel color. If none of the foreground/background pixels
// are enabled then the output pixel color is the one defined by the background
// color register at I/O $FC.
//

module vdp #(parameter BDC=24'h000000) (
  input clk,
  input vclk,
  input [8:0] h,
  input [8:0] v,
  output reg [12:0] vdp_addr,
  input [7:0] v1, v2, v3, v4, v5, v6,
  input [7:0] p1, p2, p3, p4, p5, p6,
  input [7:0] mask,
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

reg [5:0] layers_en;
reg [5:0] c1r, c2r;
reg [7:0] r0, r1, r2, g0, g1, g2, b0, b1, b2;

wire screen = h > 32 && v > 19 && h < 192+32 && v < 184+20;

wire [5:0] layers = {
  v6[hbit],
  v5[hbit],
  v4[hbit],
  v3[hbit],
  v2[hbit],
  v1[hbit]
} & mask[5:0];

wire [5:0] layer1 = layers & ~cmask[5:0];
wire [5:0] layer2 = layers & cmask[5:0];

always @(posedge vclk)
  vdp_addr <= 'hec0 + vwb * 'd24 + hwb[8:3];

always @(posedge clk) begin
  case (state)
    4'd0: if (vclk) state <= 4'd1;
    4'd1: state <= 4'd2;
    4'd2: begin

      c1r <=
        (layer1[0] ? { p1[6:4], p1[2:0] } : 6'd0) |
        (layer1[1] ? { p2[6:4], p2[2:0] } : 6'd0) |
        (layer1[2] ? { p3[6:4], p3[2:0] } : 6'd0) |
        (layer1[3] ? { p4[6:4], p4[2:0] } : 6'd0) |
        (layer1[4] ? { p5[6:4], p5[2:0] } : 6'd0) |
        (layer1[5] ? { p6[6:4], p6[2:0] } : 6'd0);

      c2r <=
        (layer2[0] ? { p1[6:4], p1[2:0] } : 6'd0) |
        (layer2[1] ? { p2[6:4], p2[2:0] } : 6'd0) |
        (layer2[2] ? { p3[6:4], p3[2:0] } : 6'd0) |
        (layer2[3] ? { p4[6:4], p4[2:0] } : 6'd0) |
        (layer2[4] ? { p5[6:4], p5[2:0] } : 6'd0) |
        (layer2[5] ? { p6[6:4], p6[2:0] } : 6'd0);

      state <= 4'd3;

    end
    4'd3: begin

      // bg color
      r0 <= bgc[3] & bgc[0] ? 8'hff : bgc[0] ? 8'h7f : 8'd0;
      g0 <= bgc[4] & bgc[1] ? 8'hff : bgc[1] ? 8'h7f : 8'd0;
      b0 <= bgc[5] & bgc[2] ? 8'hff : bgc[2] ? 8'h7f : 8'd0;

      // layer 1
      r1 <= c1r[3] & c1r[0] ? 8'hff : c1r[0] ? 8'h7f : 8'd0;
      g1 <= c1r[4] & c1r[1] ? 8'hff : c1r[1] ? 8'h7f : 8'd0;
      b1 <= c1r[5] & c1r[2] ? 8'hff : c1r[2] ? 8'h7f : 8'd0;

      // layer 2
      r2 <= c2r[3] & c2r[0] ? 8'hff : c2r[0] ? 8'h7f : 8'd0;
      g2 <= c2r[4] & c2r[1] ? 8'hff : c2r[1] ? 8'h7f : 8'd0;
      b2 <= c2r[5] & c2r[2] ? 8'hff : c2r[2] ? 8'h7f : 8'd0;

      state <= 4'd4;

    end
    4'd4: begin

      red   <= screen ? |layer2 ? r2 : |layer1 ? r1 : r0 : BDC[23:16];
      green <= screen ? |layer2 ? g2 : |layer1 ? g1 : g0 : BDC[15:8];
      blue  <= screen ? |layer2 ? b2 : |layer1 ? b1 : b0 : BDC[7:0];

      state <= 4'd0;

    end
  endcase

end

endmodule
