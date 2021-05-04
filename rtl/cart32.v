
module cart32  (
  input clk,
  input ce_n,
  input [14:0] addr,
  output [7:0] q,

  input upload,
  input [7:0] upload_data,
  input [14:0] upload_addr
);

reg [7:0] data;
reg [7:0] mem[32767:0];


assign q = ~ce_n ? data : 0;

always @(posedge clk)
  data <= mem[addr];
  
always @(posedge clk)
  if (upload) mem[upload_addr] <= upload_data;
endmodule
