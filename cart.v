
module cart (
  input clk,
  input ce_n,
  input [12:0] addr,
  output [7:0] q,

  input upload,
  input [7:0] upload_data,
  input [12:0] upload_addr
);

reg [7:0] data;
reg [7:0] mem[8191:0];

assign q = ~ce_n ? data : 0;

always @(posedge clk)
  data <= mem[addr];

always @(posedge clk)
  if (upload) mem[upload_addr] <= upload_data;

endmodule