
module cart #(parameter part) (
  input clk,
  input ce_n,
  input [13:0] addr,
  output [7:0] q
);

reg [7:0] data;
reg [7:0] mem[8191:0];

`ifdef LOAD_CART
  initial $readmemh(part, mem);
`endif

assign q = ~ce_n ? data : 0;

always @(posedge clk)
  data <= mem[addr];

endmodule