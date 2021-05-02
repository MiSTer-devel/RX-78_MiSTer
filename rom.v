
module rom(
  input clk,
  input ce_n,
  input [12:0] addr,
  output [7:0] q,

  input [12:0] addr2,
  output reg [7:0] q2
);

reg [7:0] data;
reg [7:0] mem[8191:0];

initial $readmemh("roms/rom.mem", mem);

assign q = ~ce_n ? data : 0;

always @(posedge clk)
  data <= mem[addr];

always @(posedge clk)
  q2 <= mem[addr2];

endmodule