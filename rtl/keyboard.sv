



module keyboard
(
	input             reset,		// reset when driven high
	input             clk_sys,		// should be same clock as clk_sys from HPS_IO

	input      [10:0] ps2_key,		// [7:0] - scancode,
											// [8] - extended (i.e. preceded by scan 0xE0),
											// [9] - pressed
											// [10] - toggles with every press/release

	input       [7:0] addr,			// bottom 7 address lines from CPU for memory-mapped access
	output      reg [7:0] kb_rows,	// data lines returned from scanning

	input      [31:0] joy1,
	input      [31:0] joy2,
	
	output reg [11:1] Fn = 0,
	output reg  [2:0] modif = 0
);

reg  [7:0] keys[14:0];
reg        press_btn = 0;
reg  [7:0] code;
reg		  shiftstate = 0;

// Output addressed row to ULA
always @(*) begin
	kb_rows<=8'h0;
	
	
	if (addr == 'h30) begin
		kb_rows <= keys[0] | keys[1] | keys[2] | keys[3] | keys[4] | keys[5] | keys[6] | keys[7] | keys[8] | keys[9] | keys[10] | keys[11] | keys[12]| keys[13] | keys[14]; // need up to 15 here
	end
	if (addr >= 1 && addr <=15) begin
		kb_rows <= keys[addr-1];
	end else begin
		kb_rows <= 0;
	end
	

end
/*
  reg [7:0] key_data;
assign key_data =  (addr[0] ? keys[0] : 8'b11111111)
                 & (addr[1] ? keys[1] : 8'b11111111)
                 & (addr[2] ? keys[2] : 8'b11111111)
                 & (addr[3] ? keys[3] : 8'b11111111)
                 & (addr[4] ? keys[4] : 8'b11111111)
                 & (addr[5] ? keys[5] : 8'b11111111)
                 & (addr[6] ? keys[6] : 8'b11111111)
                 & (addr[7] ? keys[7] : 8'b11111111);
*/
reg  input_strobe = 0;

always @(posedge clk_sys) begin
	reg old_reset;
	old_reset <= reset;

	// joystick needs to be reset each time
	keys[9]  <= 8'h00;
	keys[10] <= 8'h00;
	keys[11] <= 8'h00;
	keys[12] <= 8'h00;
	keys[13] <= 8'h00;
	keys[14] <= 8'h00;

	
	/*
	@Alan, I don't know what are the
	correct values here but it won't
	boot on cart with $ff
	*/
	if(~old_reset & reset) begin
		keys[0]  <= 8'h00;
		keys[1]  <= 8'h00;
		keys[2]  <= 8'h00;
		keys[4]  <= 8'h00;
		keys[5]  <= 8'h00;
		keys[6]  <= 8'h00;
		keys[7]  <= 8'h00;
		keys[8]  <= 8'h00;
		keys[9]  <= 8'h00;
		keys[10] <= 8'h00;
		keys[11] <= 8'h00;
		keys[12] <= 8'h00;
		keys[13] <= 8'h00;
		keys[14] <= 8'h00;
	end
	

	if(input_strobe) begin
		case(code)
			8'h59: modif[0]<= press_btn; // right shift
			8'h11: modif[1]<= press_btn; // alt
			8'h14: modif[2]<= press_btn; // ctrl
			8'h05: Fn[1] <= press_btn; // F1
			8'h06: Fn[2] <= press_btn; // F2
			8'h04: Fn[3] <= press_btn; // F3
			8'h0C: Fn[4] <= press_btn; // F4
			8'h03: Fn[5] <= press_btn; // F5
			8'h0B: Fn[6] <= press_btn; // F6
			8'h83: Fn[7] <= press_btn; // F7
			8'h0A: Fn[8] <= press_btn; // F8
			8'h01: Fn[9] <= press_btn; // F9
			8'h09: Fn[10]<= press_btn; // F10
			8'h78: Fn[11]<= press_btn; // F11
		endcase

		case(code)

			//////////////////////////////
			// For the first group of keys, the keyboard mode (TRS or PC) doesn't matter
			// The results are the same either way
			//////////////////////////////

			8'h45 : keys[0][0] <= press_btn; // 0
			8'h16 : keys[0][1] <= press_btn; // 1
			8'h1e : keys[0][2] <= press_btn; // 2
			8'h26 : keys[0][3] <= press_btn; // 3
			8'h25 : keys[0][4] <= press_btn; // 4
			8'h2e : keys[0][5] <= press_btn; // 5
			8'h36 : keys[0][6] <= press_btn; // 6
			8'h3d : keys[0][7] <= press_btn; // 7

			8'h3e : keys[0][0] <= press_btn; // 8
			8'h46 : keys[0][1] <= press_btn; // 9
			8'h1e : keys[0][2] <= press_btn; // :
			8'h4C : keys[0][3] <= press_btn; // ;
			8'h41 : keys[0][4] <= press_btn; // ,
			8'h4e : keys[0][5] <= press_btn; // -
			8'h49 : keys[0][6] <= press_btn; // .
			8'h4A : keys[0][7] <= press_btn; // /

			
			8'h0E : keys[2][0] <= press_btn; // ` @ ?
			8'h1c : keys[2][1] <= press_btn; // A
			8'h32 : keys[2][2] <= press_btn; // B
			8'h21 : keys[2][3] <= press_btn; // C
			8'h23 : keys[2][4] <= press_btn; // D
			8'h24 : keys[2][5] <= press_btn; // E
			8'h2b : keys[2][6] <= press_btn; // F
			8'h34 : keys[2][7] <= press_btn; // G

			
			8'h33 : keys[3][0] <= press_btn; // H
			8'h43 : keys[3][1] <= press_btn; // I
			8'h3b : keys[3][2] <= press_btn; // J
			8'h42 : keys[3][3] <= press_btn; // K
			8'h4b : keys[3][4] <= press_btn; // L
			8'h3a : keys[3][5] <= press_btn; // M
			8'h31 : keys[3][6] <= press_btn; // N
			8'h44 : keys[3][7] <= press_btn; // O

			8'h4d : keys[4][0] <= press_btn; // P
			8'h15 : keys[4][1] <= press_btn; // Q
			8'h2d : keys[4][2] <= press_btn; // R
			8'h1b : keys[4][3] <= press_btn; // S
			8'h2c : keys[4][4] <= press_btn; // T
			8'h3c : keys[4][5] <= press_btn; // U
			8'h2a : keys[4][6] <= press_btn; // V
			8'h1d : keys[4][7] <= press_btn; // W

			8'h22 : keys[5][0] <= press_btn; // X
			8'h35 : keys[5][1] <= press_btn; // Y
			8'h1a : keys[5][2] <= press_btn; // Z
			8'h54 : keys[5][3] <= press_btn; // [
			8'h5d : keys[5][4] <= press_btn; // \
			8'h5b : keys[5][5] <= press_btn; // ]
			8'h7d : keys[5][6] <= press_btn; // page up
			8'h7a : keys[5][7] <= press_btn; // page down 

			8'h29 : keys[6][0] <= press_btn; // space
			8'h72 : keys[6][1] <= press_btn; // down
			8'h75 : keys[6][2] <= press_btn; // up
			8'h74 : keys[6][3] <= press_btn; // right
			8'h6B : keys[6][4] <= press_btn; // left
			8'h0d : keys[6][5] <= press_btn; // clear / home
			//8'h75 : keys[6][6] <= press_btn; // unused
			8'h66 : keys[6][7] <= press_btn; // inst / del

			//8'h22 : keys[7][0] <= press_btn; // unused
			//8'h35 : keys[7][1] <= press_btn; // unused
			//8'h1a : keys[7][2] <= press_btn; // unused
			8'h76 : keys[7][3] <= press_btn; // STOP
			//8'h5d : keys[7][4] <= press_btn; // \
			8'h5a : keys[7][5] <= press_btn; // RETURN / ENTER
			//8'h7d : keys[7][6] <= press_btn; // page up
			8'h58 : keys[7][7] <= press_btn; // CAPS LOCK 
			
			
			8'h14 : keys[8][0] <= press_btn; // CTRL
			//8'h49 : keys[8][1] <= press_btn; // .>
			8'h59 : keys[8][2] <= press_btn; // SHIFT
			8'h12 : keys[8][2] <= press_btn; // SHIFT

			
			
			
			default: ;
		endcase
	end

	/*	
		wire m_up     = joy[3];
wire m_down   = joy[2];
wire m_left   = joy[1];
wire m_right  = joy[0];
wire m_fire   = joy[4];
*/

		// left  up
      if (joy1[1] & joy1[3])
		begin
			keys[9][1] = 1'b1;
			keys[9][5] = 1'b1;
		end
		// left down
      else if (joy1[1] & joy1[2])
		begin
			keys[10][0] = 1'b1;
			keys[10][4] = 1'b1;
		end
		// right up
      else if (joy1[0] & joy1[3])
		begin
			keys[10][1] = 1'b1;
			keys[10][5] = 1'b1;
		end
		// right down
      else if (joy1[0] & joy1[2])
		begin
			keys[11][1] = 1'b1;
			keys[11][5] = 1'b1;
		end
		// up
		else if (joy1[3]) begin
			keys[9][0] = 1'b1;
			keys[9][4] = 1'b1;
		end
		// down
		else if (joy1[2]) begin
			keys[11][0] = 1'b1;
			keys[11][4] = 1'b1;
		end
		// left
		else if (joy1[1]) begin
			keys[9][2] = 1'b1;
			keys[9][6] = 1'b1;
		end
		// right
		else if (joy1[0]) begin
			keys[11][2] = 1'b1;
			keys[11][6] = 1'b1;
		end

		
		// b1
		
		if (joy1[4]) begin
			keys[9][3]= 1'b1;
			keys[9][7]= 1'b1;
		end
		// b2
		if (joy1[5]) begin
			keys[11][3]= 1'b1;
			keys[11][7]= 1'b1;
		end
		
		
		
		// joy2
		
		// left  up
      if (joy2[1] & joy2[3])
		begin
			keys[12][1] = 1'b1;
			keys[12][5] = 1'b1;
		end
		// left down
      else if (joy2[1] & joy2[2])
		begin
			keys[13][0] = 1'b1;
			keys[13][4] = 1'b1;
		end
		// right up
      else if (joy2[0] & joy2[3])
		begin
			keys[13][1] = 1'b1;
			keys[13][5] = 1'b1;
		end
		// right down
      else if (joy2[0] & joy2[2])
		begin
			keys[14][1] = 1'b1;
			keys[14][5] = 1'b1;
		end
		// up
		else if (joy2[3]) begin
			keys[12][0] = 1'b1;
			keys[12][4] = 1'b1;
		end
		// down
		else if (joy2[2]) begin
			keys[14][0] = 1'b1;
			keys[14][4] = 1'b1;
		end
		// left
		else if (joy2[1]) begin
			keys[12][2] = 1'b1;
			keys[12][6] = 1'b1;
		end
		// right
		else if (joy2[0]) begin
			keys[14][2] = 1'b1;
			keys[14][6] = 1'b1;
		end

		
		// b1
		
		if (joy2[4]) begin
			keys[12][3]= 1'b1;
			keys[12][7]= 1'b1;
		end
		// b2
		if (joy2[5]) begin
			keys[14][3]= 1'b1;
			keys[14][7]= 1'b1;
		end
		
			
		
		
		
end

always @(posedge clk_sys) begin
	reg old_state;

	input_strobe <= 0;
	old_state <= ps2_key[10];

	if(old_state != ps2_key[10]) begin
		press_btn <= ps2_key[9];
		code <= ps2_key[7:0];
		input_strobe <= 1;
	end
end

endmodule