//
// sdram.v
//
// Static RAM controller implementation using SDRAM MT48LC16M16A2
//
// Copyright (c) 2015-2019 Sorgelig
//
// Some parts of SDRAM code used from project:
// http://hamsterworks.co.nz/mediawiki/index.php/Simple_SDRAM_Controller
//
// This source file is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published
// by the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This source file is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// ------------------------------------------
//
// v2.1 - Add universal 8/16 bit mode.
//

module sdram
(
   input             init,
   input             clk,
   inout  reg [15:0] SDRAM_DQ,
   output reg [12:0] SDRAM_A,
   output reg        SDRAM_DQML,
   output reg        SDRAM_DQMH,
   output reg  [1:0] SDRAM_BA,
   output            SDRAM_nCS,
   output            SDRAM_nWE,
   output            SDRAM_nRAS,
   output            SDRAM_nCAS,
   output            SDRAM_CKE,
   output            SDRAM_CLK,

   input       [1:0] wtbt,
   input      [24:0] addr,
   output     [15:0] dout,
   input      [15:0] din,
   input             we,
   input             rd,
   output reg        ready
);

assign SDRAM_CKE  = 1;
assign SDRAM_nCS  = 0;
assign SDRAM_nRAS = command[2];
assign SDRAM_nCAS = command[1];
assign SDRAM_nWE  = command[0];
assign {SDRAM_DQMH,SDRAM_DQML} = SDRAM_A[12:11];

localparam BURST_LENGTH        = 3'b000;
localparam ACCESS_TYPE         = 1'b0;
localparam CAS_LATENCY         = 3'd2;
localparam OP_MODE             = 2'b00;
localparam NO_WRITE_BURST      = 1'b1;
localparam MODE                = {3'b000, NO_WRITE_BURST, OP_MODE, CAS_LATENCY, ACCESS_TYPE, BURST_LENGTH};

localparam sdram_startup_cycles= 14'd12100;
localparam cycles_per_refresh  = 14'd780;
localparam startup_refresh_max = 14'b11111111111111;

wire [2:0] CMD_NOP             = 3'b111;
wire [2:0] CMD_ACTIVE          = 3'b011;
wire [2:0] CMD_READ            = 3'b101;
wire [2:0] CMD_WRITE           = 3'b100;
wire [2:0] CMD_PRECHARGE       = 3'b010;
wire [2:0] CMD_AUTO_REFRESH    = 3'b001;
wire [2:0] CMD_LOAD_MODE       = 3'b000;

reg [13:0] refresh_count = startup_refresh_max - sdram_startup_cycles;
reg  [2:0] command;
reg [24:0] save_addr;

reg [15:0] data;
assign dout = save_addr[0] ? {data[7:0], data[15:8]} : {data[15:8], data[7:0]};

typedef enum
{
	STATE_STARTUP,
	STATE_OPEN_1, STATE_OPEN_2,
	STATE_IDLE,	  STATE_IDLE_1, STATE_IDLE_2, STATE_IDLE_3,
	STATE_IDLE_4, STATE_IDLE_5, STATE_IDLE_6, STATE_IDLE_7
} state_t;

always @(posedge clk) begin
	reg old_we, old_rd;
	reg [CAS_LATENCY:0] data_ready_delay;

	reg [15:0] new_data;
	reg  [1:0] new_wtbt;
	reg        new_we;
	reg        new_rd;
	reg        save_we = 1;

	state_t state = STATE_STARTUP;

	SDRAM_DQ <= 16'bZ;
	command <= CMD_NOP;
	refresh_count  <= refresh_count+1'b1;

	data_ready_delay <= {1'b0, data_ready_delay[CAS_LATENCY:1]};

	if(data_ready_delay[0]) {ready, data}  <= {1'b1, SDRAM_DQ};

	case(state)
		STATE_STARTUP: begin
			SDRAM_A    <= 0;
			SDRAM_BA   <= 0;

			if (refresh_count == startup_refresh_max-31) begin
				command     <= CMD_PRECHARGE;
				SDRAM_A[10] <= 1;
				SDRAM_BA    <= 2'b00;
			end
			if (refresh_count == startup_refresh_max-23) begin
				command     <= CMD_AUTO_REFRESH;
			end
			if (refresh_count == startup_refresh_max-15) begin
				command     <= CMD_AUTO_REFRESH;
			end
			if (refresh_count == startup_refresh_max-7) begin
				command     <= CMD_LOAD_MODE;
				SDRAM_A     <= MODE;
			end

			if(!refresh_count) begin
				state   <= STATE_IDLE;
				ready   <= 1;
				refresh_count <= 0;
			end
		end

		STATE_IDLE_7: state <= STATE_IDLE_6;
		STATE_IDLE_6: state <= STATE_IDLE_5;
		STATE_IDLE_5: state <= STATE_IDLE_4;
		STATE_IDLE_4: state <= STATE_IDLE_3;
		STATE_IDLE_3: state <= STATE_IDLE_2;
		STATE_IDLE_2: state <= STATE_IDLE_1;
		STATE_IDLE_1: begin
			state      <= STATE_IDLE;
			if(refresh_count > cycles_per_refresh) begin
				state    <= STATE_IDLE_7;
				command  <= CMD_AUTO_REFRESH;
				refresh_count <= 0;
			end
		end

		STATE_IDLE: begin
			if(refresh_count > (cycles_per_refresh<<1)) state <= STATE_IDLE_1;
			else if(new_rd | new_we) begin
				new_we   <= 0;
				new_rd   <= 0;
				save_we  <= new_we;
				state    <= STATE_OPEN_1;
				command  <= CMD_ACTIVE;
				SDRAM_A  <= save_addr[13:1];
				SDRAM_BA <= save_addr[24:23];
			end
		end

		STATE_OPEN_1: state <= STATE_OPEN_2;

		STATE_OPEN_2: begin
			SDRAM_A     <= {save_we & (new_wtbt ? ~new_wtbt[1] : ~save_addr[0]), save_we & (new_wtbt ? ~new_wtbt[0] :  save_addr[0]), 2'b10, save_addr[22:14]};
			if(save_we) begin
				command  <= CMD_WRITE;
				SDRAM_DQ <= new_wtbt ? new_data : {new_data[7:0], new_data[7:0]};
				ready    <= 1;
				state    <= STATE_IDLE_2;
			end
			else begin
				command  <= CMD_READ;
				data_ready_delay[CAS_LATENCY] <= 1;
				state    <= STATE_IDLE_5;
			end
		end
	endcase

	if(init) begin
		state <= STATE_STARTUP;
		refresh_count <= startup_refresh_max - sdram_startup_cycles;
	end

	old_we <= we;
	if(we & ~old_we) begin
		save_addr <= addr;
		{ready, new_we, new_data, new_wtbt} <= {1'b0, 1'b1, din, wtbt};
	end

	old_rd <= rd;
	if(rd & ~old_rd) begin
		save_addr <= addr;
		if(!(ready & ~save_we & (save_addr[24:1] == addr[24:1]))) {ready, new_rd} <= {1'b0, 1'b1};
	end
end

endmodule
