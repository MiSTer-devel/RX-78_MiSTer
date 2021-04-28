
module rom(
  input clk,
  input ce_n,
  input [12:0] addr,
  output [7:0] q,

  input [12:0] iaddr,
  input [7:0] idata,
  input iload
);

reg [7:0] data;
reg [7:0] mem[8191:0];

initial $readmemh("rom.mem", mem);

assign q = ~ce_n ? data : 0;

always @(posedge clk)
  data <= mem[addr];

always @(posedge clk)
  if (iload)
    mem[iaddr] <= idata;

endmodule