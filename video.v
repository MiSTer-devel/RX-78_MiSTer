
module video(
  input clk, // 5MHz?
  output reg hs,
  output reg vs,
  output reg hb,
  output reg vb,
  output reg [8:0] hcount,
  output reg [8:0] vcount
);

//  screen.set_size(192, 184);
//  screen.set_visarea(0, 192-1, 0, 184-1);
/* guess: generic NTSC video timing at 256x224, system runs at 192x184, suppose with some border area to compensate */

initial begin
  hs <= 1'b1;
  vs <= 1'b1;
end

always @(posedge clk) begin
  hcount <= hcount + 1'b1;
  case (hcount)
    0: hb <= 1'b0;
    256: hb <= 1'b1;
    274: hs <= 1'b0;
    299: hs <= 1'b1;
    341: begin
      vcount <= vcount + 9'b1;
      hcount <= 9'b0;
      case (vcount)
        224: vb <= 1'b1;
        242: vs <= 1'b0;
        245: vs <= 1'b1;
        276: begin
          vcount <= 9'b0;
          vb <= 1'b0;
        end
      endcase
    end
  endcase
end

endmodule