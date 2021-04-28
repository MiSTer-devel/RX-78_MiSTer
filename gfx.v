
module gfx(
  input clk,
  input [8:0] h,
  input [8:0] v,
  output [12:0] gfx_vaddr,
  input [7:0] gfx_vdata,
  output [12:0] gfx_raddr, // base is $1A27
  input [7:0] gfx_rdata
);

endmodule