module t80_reg
  (input  clk,
   input  cen,
   input  weh,
   input  wel,
   input  [2:0] addra,
   input  [2:0] addrb,
   input  [2:0] addrc,
   input  [7:0] dih,
   input  [7:0] dil,
   input  dirset,
   input  [127:0] dir,
   output [7:0] doah,
   output [7:0] doal,
   output [7:0] dobh,
   output [7:0] dobl,
   output [7:0] doch,
   output [7:0] docl,
   output [127:0] dor);
  wire [63:0] regsh;
  wire [63:0] regsl;
  wire [7:0] n8005;
  wire [7:0] n8006;
  wire [7:0] n8007;
  wire [7:0] n8008;
  wire [7:0] n8009;
  wire [7:0] n8010;
  wire [7:0] n8011;
  wire [7:0] n8012;
  wire [7:0] n8013;
  wire [7:0] n8014;
  wire [7:0] n8015;
  wire [7:0] n8016;
  wire [7:0] n8017;
  wire [7:0] n8018;
  wire [7:0] n8019;
  wire [7:0] n8020;
  wire [2:0] n8023;
  wire [63:0] n8026;
  wire [2:0] n8029;
  wire [63:0] n8032;
  wire n8033;
  wire n8034;
  wire [63:0] n8035;
  wire [63:0] n8036;
  wire [63:0] n8037;
  wire [63:0] n8038;
  wire [2:0] n8044;
  wire [2:0] n8049;
  wire [2:0] n8054;
  wire [2:0] n8059;
  wire [2:0] n8064;
  wire [2:0] n8069;
  wire [7:0] n8072;
  wire [7:0] n8073;
  wire [15:0] n8074;
  wire [7:0] n8075;
  wire [23:0] n8076;
  wire [7:0] n8077;
  wire [31:0] n8078;
  wire [7:0] n8079;
  wire [39:0] n8080;
  wire [7:0] n8081;
  wire [47:0] n8082;
  wire [7:0] n8083;
  wire [55:0] n8084;
  wire [7:0] n8085;
  wire [63:0] n8086;
  wire [7:0] n8087;
  wire [71:0] n8088;
  wire [7:0] n8089;
  wire [79:0] n8090;
  wire [7:0] n8091;
  wire [87:0] n8092;
  wire [7:0] n8093;
  wire [95:0] n8094;
  wire [7:0] n8095;
  wire [103:0] n8096;
  wire [7:0] n8097;
  wire [111:0] n8098;
  wire [7:0] n8099;
  wire [119:0] n8100;
  wire [7:0] n8101;
  wire [127:0] n8102;
  reg [63:0] n8103;
  reg [63:0] n8104;
  wire n8105;
  wire n8106;
  wire n8107;
  wire n8108;
  wire n8109;
  wire n8110;
  wire n8111;
  wire n8112;
  wire n8113;
  wire n8114;
  wire n8115;
  wire n8116;
  wire n8117;
  wire n8118;
  wire n8119;
  wire n8120;
  wire n8121;
  wire n8122;
  wire [7:0] n8123;
  wire [7:0] n8124;
  wire [7:0] n8125;
  wire [7:0] n8126;
  wire [7:0] n8127;
  wire [7:0] n8128;
  wire [7:0] n8129;
  wire [7:0] n8130;
  wire [7:0] n8131;
  wire [7:0] n8132;
  wire [7:0] n8133;
  wire [7:0] n8134;
  wire [7:0] n8135;
  wire [7:0] n8136;
  wire [7:0] n8137;
  wire [7:0] n8138;
  wire [63:0] n8139;
  wire n8140;
  wire n8141;
  wire n8142;
  wire n8143;
  wire n8144;
  wire n8145;
  wire n8146;
  wire n8147;
  wire n8148;
  wire n8149;
  wire n8150;
  wire n8151;
  wire n8152;
  wire n8153;
  wire n8154;
  wire n8155;
  wire n8156;
  wire n8157;
  wire [7:0] n8158;
  wire [7:0] n8159;
  wire [7:0] n8160;
  wire [7:0] n8161;
  wire [7:0] n8162;
  wire [7:0] n8163;
  wire [7:0] n8164;
  wire [7:0] n8165;
  wire [7:0] n8166;
  wire [7:0] n8167;
  wire [7:0] n8168;
  wire [7:0] n8169;
  wire [7:0] n8170;
  wire [7:0] n8171;
  wire [7:0] n8172;
  wire [7:0] n8173;
  wire [63:0] n8174;
  wire [7:0] n8175;
  wire [7:0] n8176;
  wire [7:0] n8177;
  wire [7:0] n8178;
  wire [7:0] n8179;
  wire [7:0] n8180;
  assign doah = n8175; //(module output)
  assign doal = n8176; //(module output)
  assign dobh = n8177; //(module output)
  assign dobl = n8178; //(module output)
  assign doch = n8179; //(module output)
  assign docl = n8180; //(module output)
  assign dor = n8102; //(module output)
  /* T80_Reg.vhd:101:16  */
  assign regsh = n8103; // (signal)
  /* T80_Reg.vhd:102:16  */
  assign regsl = n8104; // (signal)
  /* T80_Reg.vhd:110:48  */
  assign n8005 = dir[7:0]; // extract
  /* T80_Reg.vhd:111:48  */
  assign n8006 = dir[15:8]; // extract
  /* T80_Reg.vhd:113:48  */
  assign n8007 = dir[23:16]; // extract
  /* T80_Reg.vhd:114:48  */
  assign n8008 = dir[31:24]; // extract
  /* T80_Reg.vhd:116:48  */
  assign n8009 = dir[39:32]; // extract
  /* T80_Reg.vhd:117:48  */
  assign n8010 = dir[47:40]; // extract
  /* T80_Reg.vhd:119:48  */
  assign n8011 = dir[55:48]; // extract
  /* T80_Reg.vhd:120:48  */
  assign n8012 = dir[63:56]; // extract
  /* T80_Reg.vhd:122:48  */
  assign n8013 = dir[71:64]; // extract
  /* T80_Reg.vhd:123:48  */
  assign n8014 = dir[79:72]; // extract
  /* T80_Reg.vhd:125:48  */
  assign n8015 = dir[87:80]; // extract
  /* T80_Reg.vhd:126:48  */
  assign n8016 = dir[95:88]; // extract
  /* T80_Reg.vhd:128:48  */
  assign n8017 = dir[103:96]; // extract
  /* T80_Reg.vhd:129:48  */
  assign n8018 = dir[111:104]; // extract
  /* T80_Reg.vhd:131:48  */
  assign n8019 = dir[119:112]; // extract
  /* T80_Reg.vhd:132:48  */
  assign n8020 = dir[127:120]; // extract
  /* T80_Reg.vhd:135:47  */
  assign n8023 = 3'b111 - addra;
  /* T80_Reg.vhd:133:25  */
  assign n8026 = n8033 ? n8139 : regsh;
  /* T80_Reg.vhd:138:47  */
  assign n8029 = 3'b111 - addra;
  /* T80_Reg.vhd:133:25  */
  assign n8032 = n8034 ? n8174 : regsl;
  /* T80_Reg.vhd:133:25  */
  assign n8033 = weh & cen;
  /* T80_Reg.vhd:133:25  */
  assign n8034 = wel & cen;
  assign n8035 = {n8006, n8008, n8010, n8012, n8014, n8016, n8018, n8020};
  /* T80_Reg.vhd:109:25  */
  assign n8036 = dirset ? n8035 : n8026;
  /* T80_ALU.vhd:113:26  */
  assign n8037 = {n8005, n8007, n8009, n8011, n8013, n8015, n8017, n8019};
  /* T80_Reg.vhd:109:25  */
  assign n8038 = dirset ? n8037 : n8032;
  /* T80_Reg.vhd:144:23  */
  assign n8044 = 3'b111 - addra;
  /* T80_Reg.vhd:145:23  */
  assign n8049 = 3'b111 - addra;
  /* T80_Reg.vhd:146:23  */
  assign n8054 = 3'b111 - addrb;
  /* T80_Reg.vhd:147:23  */
  assign n8059 = 3'b111 - addrb;
  /* T80_Reg.vhd:148:23  */
  assign n8064 = 3'b111 - addrc;
  /* T80_Reg.vhd:149:23  */
  assign n8069 = 3'b111 - addrc;
  /* T80_Reg.vhd:150:22  */
  assign n8072 = regsh[7:0]; // extract
  /* T80_Reg.vhd:150:33  */
  assign n8073 = regsl[7:0]; // extract
  /* T80_Reg.vhd:150:26  */
  assign n8074 = {n8072, n8073};
  /* T80_Reg.vhd:150:44  */
  assign n8075 = regsh[15:8]; // extract
  /* T80_Reg.vhd:150:37  */
  assign n8076 = {n8074, n8075};
  /* T80_Reg.vhd:150:55  */
  assign n8077 = regsl[15:8]; // extract
  /* T80_Reg.vhd:150:48  */
  assign n8078 = {n8076, n8077};
  /* T80_Reg.vhd:150:66  */
  assign n8079 = regsh[23:16]; // extract
  /* T80_Reg.vhd:150:59  */
  assign n8080 = {n8078, n8079};
  /* T80_Reg.vhd:150:77  */
  assign n8081 = regsl[23:16]; // extract
  /* T80_Reg.vhd:150:70  */
  assign n8082 = {n8080, n8081};
  /* T80_Reg.vhd:150:88  */
  assign n8083 = regsh[31:24]; // extract
  /* T80_Reg.vhd:150:81  */
  assign n8084 = {n8082, n8083};
  /* T80_Reg.vhd:150:99  */
  assign n8085 = regsl[31:24]; // extract
  /* T80_Reg.vhd:150:92  */
  assign n8086 = {n8084, n8085};
  /* T80_Reg.vhd:150:110  */
  assign n8087 = regsh[39:32]; // extract
  /* T80_Reg.vhd:150:103  */
  assign n8088 = {n8086, n8087};
  /* T80_Reg.vhd:150:121  */
  assign n8089 = regsl[39:32]; // extract
  /* T80_Reg.vhd:150:114  */
  assign n8090 = {n8088, n8089};
  /* T80_Reg.vhd:150:132  */
  assign n8091 = regsh[47:40]; // extract
  /* T80_Reg.vhd:150:125  */
  assign n8092 = {n8090, n8091};
  /* T80_Reg.vhd:150:143  */
  assign n8093 = regsl[47:40]; // extract
  /* T80_Reg.vhd:150:136  */
  assign n8094 = {n8092, n8093};
  /* T80_Reg.vhd:150:154  */
  assign n8095 = regsh[55:48]; // extract
  /* T80_Reg.vhd:150:147  */
  assign n8096 = {n8094, n8095};
  /* T80_Reg.vhd:150:165  */
  assign n8097 = regsl[55:48]; // extract
  /* T80_Reg.vhd:150:158  */
  assign n8098 = {n8096, n8097};
  /* T80_Reg.vhd:150:176  */
  assign n8099 = regsh[63:56]; // extract
  /* T80_Reg.vhd:150:169  */
  assign n8100 = {n8098, n8099};
  /* T80_Reg.vhd:150:187  */
  assign n8101 = regsl[63:56]; // extract
  /* T80_Reg.vhd:150:180  */
  assign n8102 = {n8100, n8101};
  /* T80_Reg.vhd:108:17  */
  always @(posedge clk)
    n8103 <= n8036;
  /* T80_Reg.vhd:108:17  */
  always @(posedge clk)
    n8104 <= n8038;
  /* T80_Reg.vhd:135:41  */
  assign n8105 = n8023[2]; // extract
  /* T80_Reg.vhd:135:41  */
  assign n8106 = ~n8105;
  /* T80_Reg.vhd:135:41  */
  assign n8107 = n8023[1]; // extract
  /* T80_Reg.vhd:135:41  */
  assign n8108 = ~n8107;
  /* T80_Reg.vhd:135:41  */
  assign n8109 = n8106 & n8108;
  /* T80_Reg.vhd:135:41  */
  assign n8110 = n8106 & n8107;
  /* T80_Reg.vhd:135:41  */
  assign n8111 = n8105 & n8108;
  /* T80_Reg.vhd:135:41  */
  assign n8112 = n8105 & n8107;
  /* T80_Reg.vhd:135:41  */
  assign n8113 = n8023[0]; // extract
  /* T80_Reg.vhd:135:41  */
  assign n8114 = ~n8113;
  /* T80_Reg.vhd:135:41  */
  assign n8115 = n8109 & n8114;
  /* T80_Reg.vhd:135:41  */
  assign n8116 = n8109 & n8113;
  /* T80_Reg.vhd:135:41  */
  assign n8117 = n8110 & n8114;
  /* T80_Reg.vhd:135:41  */
  assign n8118 = n8110 & n8113;
  /* T80_Reg.vhd:135:41  */
  assign n8119 = n8111 & n8114;
  /* T80_Reg.vhd:135:41  */
  assign n8120 = n8111 & n8113;
  /* T80_Reg.vhd:135:41  */
  assign n8121 = n8112 & n8114;
  /* T80_Reg.vhd:135:41  */
  assign n8122 = n8112 & n8113;
  assign n8123 = regsh[7:0]; // extract
  /* T80_Reg.vhd:135:41  */
  assign n8124 = n8115 ? dih : n8123;
  assign n8125 = regsh[15:8]; // extract
  /* T80_Reg.vhd:135:41  */
  assign n8126 = n8116 ? dih : n8125;
  assign n8127 = regsh[23:16]; // extract
  /* T80_Reg.vhd:135:41  */
  assign n8128 = n8117 ? dih : n8127;
  assign n8129 = regsh[31:24]; // extract
  /* T80_Reg.vhd:135:41  */
  assign n8130 = n8118 ? dih : n8129;
  assign n8131 = regsh[39:32]; // extract
  /* T80_Reg.vhd:135:41  */
  assign n8132 = n8119 ? dih : n8131;
  assign n8133 = regsh[47:40]; // extract
  /* T80_Reg.vhd:135:41  */
  assign n8134 = n8120 ? dih : n8133;
  assign n8135 = regsh[55:48]; // extract
  /* T80_Reg.vhd:135:41  */
  assign n8136 = n8121 ? dih : n8135;
  assign n8137 = regsh[63:56]; // extract
  /* T80_Reg.vhd:135:41  */
  assign n8138 = n8122 ? dih : n8137;
  assign n8139 = {n8138, n8136, n8134, n8132, n8130, n8128, n8126, n8124};
  /* T80_Reg.vhd:138:41  */
  assign n8140 = n8029[2]; // extract
  /* T80_Reg.vhd:138:41  */
  assign n8141 = ~n8140;
  /* T80_Reg.vhd:138:41  */
  assign n8142 = n8029[1]; // extract
  /* T80_Reg.vhd:138:41  */
  assign n8143 = ~n8142;
  /* T80_Reg.vhd:138:41  */
  assign n8144 = n8141 & n8143;
  /* T80_Reg.vhd:138:41  */
  assign n8145 = n8141 & n8142;
  /* T80_Reg.vhd:138:41  */
  assign n8146 = n8140 & n8143;
  /* T80_Reg.vhd:138:41  */
  assign n8147 = n8140 & n8142;
  /* T80_Reg.vhd:138:41  */
  assign n8148 = n8029[0]; // extract
  /* T80_Reg.vhd:138:41  */
  assign n8149 = ~n8148;
  /* T80_Reg.vhd:138:41  */
  assign n8150 = n8144 & n8149;
  /* T80_Reg.vhd:138:41  */
  assign n8151 = n8144 & n8148;
  /* T80_Reg.vhd:138:41  */
  assign n8152 = n8145 & n8149;
  /* T80_Reg.vhd:138:41  */
  assign n8153 = n8145 & n8148;
  /* T80_Reg.vhd:138:41  */
  assign n8154 = n8146 & n8149;
  /* T80_Reg.vhd:138:41  */
  assign n8155 = n8146 & n8148;
  /* T80_Reg.vhd:138:41  */
  assign n8156 = n8147 & n8149;
  /* T80_Reg.vhd:138:41  */
  assign n8157 = n8147 & n8148;
  assign n8158 = regsl[7:0]; // extract
  /* T80_Reg.vhd:138:41  */
  assign n8159 = n8150 ? dil : n8158;
  assign n8160 = regsl[15:8]; // extract
  /* T80_Reg.vhd:138:41  */
  assign n8161 = n8151 ? dil : n8160;
  assign n8162 = regsl[23:16]; // extract
  /* T80_Reg.vhd:138:41  */
  assign n8163 = n8152 ? dil : n8162;
  assign n8164 = regsl[31:24]; // extract
  /* T80_Reg.vhd:138:41  */
  assign n8165 = n8153 ? dil : n8164;
  assign n8166 = regsl[39:32]; // extract
  /* T80_Reg.vhd:138:41  */
  assign n8167 = n8154 ? dil : n8166;
  assign n8168 = regsl[47:40]; // extract
  /* T80_Reg.vhd:138:41  */
  assign n8169 = n8155 ? dil : n8168;
  assign n8170 = regsl[55:48]; // extract
  /* T80_Reg.vhd:138:41  */
  assign n8171 = n8156 ? dil : n8170;
  assign n8172 = regsl[63:56]; // extract
  /* T80_Reg.vhd:138:41  */
  assign n8173 = n8157 ? dil : n8172;
  assign n8174 = {n8173, n8171, n8169, n8167, n8165, n8163, n8161, n8159};
  /* T80_Reg.vhd:144:23  */
  assign n8175 = regsh[n8044 * 8 +: 8]; //(Bmux)
  /* T80_Reg.vhd:145:23  */
  assign n8176 = regsl[n8049 * 8 +: 8]; //(Bmux)
  /* T80_Reg.vhd:146:23  */
  assign n8177 = regsh[n8054 * 8 +: 8]; //(Bmux)
  /* T80_Reg.vhd:147:23  */
  assign n8178 = regsl[n8059 * 8 +: 8]; //(Bmux)
  /* T80_Reg.vhd:148:23  */
  assign n8179 = regsh[n8064 * 8 +: 8]; //(Bmux)
  /* T80_Reg.vhd:149:23  */
  assign n8180 = regsl[n8069 * 8 +: 8]; //(Bmux)
endmodule

module t80_alu_0_0_1_2_3_4_5_6_7
  (input  arith16,
   input  z16,
   input  [15:0] wz,
   input  [1:0] xy_state,
   input  [3:0] alu_op,
   input  rot_akku,
   input  [5:0] ir,
   input  [1:0] iset,
   input  [7:0] busa,
   input  [7:0] busb,
   input  [7:0] f_in,
   output [7:0] q,
   output [7:0] f_out);
  wire usecarry;
  wire carry7_v;
  wire overflow_v;
  wire halfcarry_v;
  wire carry_v;
  wire [7:0] q_v;
  wire [7:0] bitmask;
  wire [2:0] n7417;
  wire n7420;
  wire n7423;
  wire n7426;
  wire n7429;
  wire n7432;
  wire n7435;
  wire n7438;
  wire [6:0] n7440;
  reg [7:0] n7441;
  wire n7442;
  wire n7443;
  wire n7444;
  wire n7445;
  wire [3:0] n7447;
  wire [3:0] n7448;
  wire n7449;
  wire n7450;
  wire n7451;
  wire n7452;
  wire n7453;
  wire [3:0] n7458;
  wire [3:0] n7459;
  wire [4:0] n7462;
  wire [5:0] n7463;
  wire [4:0] n7465;
  wire [5:0] n7467;
  wire [5:0] n7468;
  wire n7470;
  wire [3:0] n7471;
  wire [2:0] n7473;
  wire [2:0] n7474;
  wire n7475;
  wire [2:0] n7480;
  wire [2:0] n7481;
  wire [3:0] n7484;
  wire [4:0] n7485;
  wire [3:0] n7487;
  wire [4:0] n7489;
  wire [4:0] n7490;
  wire n7492;
  wire [2:0] n7493;
  wire n7495;
  wire n7496;
  wire n7497;
  wire n7502;
  wire n7503;
  wire [1:0] n7506;
  wire [2:0] n7507;
  wire [1:0] n7509;
  wire [2:0] n7511;
  wire [2:0] n7512;
  wire n7514;
  wire n7515;
  wire n7518;
  wire [2:0] n7526;
  wire n7528;
  wire n7530;
  wire n7531;
  wire n7533;
  wire n7534;
  wire n7536;
  wire n7538;
  wire n7539;
  wire n7541;
  wire n7542;
  wire [7:0] n7543;
  wire n7546;
  wire [7:0] n7547;
  wire n7550;
  wire [7:0] n7551;
  wire [3:0] n7553;
  reg n7554;
  reg n7555;
  wire n7556;
  reg n7557;
  reg n7558;
  reg [7:0] n7559;
  wire [2:0] n7560;
  wire n7562;
  wire n7563;
  wire n7564;
  wire n7565;
  wire n7566;
  wire n7567;
  wire n7568;
  wire n7570;
  wire n7572;
  wire n7573;
  wire n7575;
  wire n7576;
  wire [2:0] n7577;
  wire n7579;
  wire n7581;
  wire n7582;
  wire n7584;
  wire n7585;
  wire n7587;
  wire n7588;
  wire n7590;
  wire n7591;
  wire n7592;
  wire n7593;
  wire n7594;
  wire n7595;
  wire n7596;
  wire n7597;
  wire n7598;
  wire n7599;
  wire n7600;
  wire n7601;
  wire n7602;
  wire n7603;
  wire n7604;
  wire n7605;
  wire n7606;
  wire n7607;
  reg n7608;
  wire n7609;
  wire n7610;
  wire n7611;
  wire [1:0] n7612;
  wire n7613;
  wire [1:0] n7614;
  wire [1:0] n7615;
  wire n7617;
  wire n7619;
  wire n7620;
  wire n7622;
  wire n7623;
  wire n7625;
  wire n7626;
  wire n7628;
  wire n7629;
  wire n7631;
  wire n7632;
  wire n7634;
  wire n7635;
  wire n7637;
  wire n7638;
  wire n7639;
  wire n7642;
  wire n7643;
  wire [8:0] n7644;
  wire [3:0] n7645;
  wire n7647;
  wire n7648;
  wire n7649;
  wire [8:0] n7650;
  wire [3:0] n7651;
  wire n7653;
  wire n7656;
  wire [8:0] n7657;
  wire [8:0] n7659;
  wire n7660;
  wire [8:0] n7661;
  wire [8:0] n7662;
  wire [4:0] n7663;
  wire n7665;
  wire n7666;
  wire n7667;
  wire [8:0] n7669;
  wire [8:0] n7670;
  wire [8:0] n7671;
  wire [3:0] n7672;
  wire n7674;
  wire n7675;
  wire n7676;
  wire [8:0] n7677;
  wire [3:0] n7678;
  wire n7680;
  wire n7682;
  wire [8:0] n7683;
  wire [7:0] n7684;
  wire [7:0] n7686;
  wire n7687;
  wire [7:0] n7688;
  wire n7690;
  wire n7691;
  wire n7692;
  wire [8:0] n7693;
  wire [8:0] n7695;
  wire [8:0] n7696;
  wire [8:0] n7697;
  wire n7698;
  wire [8:0] n7699;
  wire n7700;
  wire n7701;
  wire n7702;
  wire n7703;
  wire n7704;
  wire [7:0] n7705;
  wire [7:0] n7706;
  wire n7708;
  wire n7711;
  wire n7712;
  wire n7713;
  wire n7714;
  wire n7715;
  wire n7716;
  wire n7717;
  wire n7718;
  wire n7719;
  wire n7720;
  wire n7721;
  wire n7722;
  wire n7723;
  wire n7724;
  wire n7725;
  wire n7726;
  wire n7727;
  wire n7728;
  wire n7730;
  wire [3:0] n7731;
  wire n7732;
  wire [3:0] n7733;
  wire [3:0] n7734;
  wire [3:0] n7735;
  wire [7:0] n7738;
  wire n7739;
  wire [7:0] n7740;
  wire n7741;
  wire [7:0] n7742;
  wire n7744;
  wire n7747;
  wire [7:0] n7748;
  wire n7749;
  wire [7:0] n7750;
  wire n7751;
  wire [7:0] n7752;
  wire n7753;
  wire n7754;
  wire [7:0] n7755;
  wire n7756;
  wire n7757;
  wire [7:0] n7758;
  wire n7759;
  wire n7760;
  wire [7:0] n7761;
  wire n7762;
  wire n7763;
  wire [7:0] n7764;
  wire n7765;
  wire n7766;
  wire [7:0] n7767;
  wire n7768;
  wire n7769;
  wire [7:0] n7770;
  wire n7771;
  wire n7772;
  wire n7773;
  wire n7775;
  wire n7777;
  wire n7778;
  wire [7:0] n7779;
  wire n7780;
  wire n7782;
  wire n7787;
  wire n7788;
  wire [2:0] n7791;
  wire n7793;
  wire n7795;
  wire n7796;
  wire n7797;
  wire n7798;
  wire n7799;
  wire n7800;
  wire n7801;
  wire n7802;
  wire n7804;
  wire [7:0] n7805;
  wire n7807;
  wire [7:0] n7808;
  wire [7:0] n7809;
  wire n7811;
  wire [2:0] n7812;
  wire [6:0] n7813;
  wire n7814;
  wire n7815;
  wire n7817;
  wire [6:0] n7818;
  wire n7819;
  wire n7820;
  wire n7822;
  wire [6:0] n7823;
  wire n7824;
  wire n7825;
  wire n7827;
  wire [6:0] n7828;
  wire n7829;
  wire n7830;
  wire n7832;
  wire [6:0] n7833;
  wire n7835;
  wire n7837;
  wire [6:0] n7838;
  wire n7840;
  wire n7842;
  wire [6:0] n7843;
  wire n7844;
  wire n7845;
  wire n7847;
  wire [6:0] n7848;
  wire n7850;
  wire [6:0] n7851;
  reg n7852;
  wire n7853;
  wire n7854;
  wire n7855;
  wire n7856;
  reg n7857;
  wire [5:0] n7858;
  wire [5:0] n7859;
  wire [5:0] n7860;
  wire [5:0] n7861;
  wire [5:0] n7862;
  wire [5:0] n7863;
  wire [5:0] n7864;
  wire [5:0] n7865;
  reg [5:0] n7866;
  wire n7867;
  wire n7868;
  wire n7869;
  wire n7870;
  reg n7871;
  wire [7:0] n7874;
  wire n7875;
  wire [7:0] n7876;
  wire n7877;
  wire [7:0] n7878;
  wire n7879;
  wire [7:0] n7880;
  wire n7882;
  wire n7885;
  wire [7:0] n7886;
  wire n7887;
  wire [7:0] n7888;
  wire n7889;
  wire n7890;
  wire [7:0] n7891;
  wire n7892;
  wire n7893;
  wire [7:0] n7894;
  wire n7895;
  wire n7896;
  wire [7:0] n7897;
  wire n7898;
  wire n7899;
  wire [7:0] n7900;
  wire n7901;
  wire n7902;
  wire [7:0] n7903;
  wire n7904;
  wire n7905;
  wire [7:0] n7906;
  wire n7907;
  wire n7908;
  wire n7909;
  wire n7911;
  wire n7912;
  wire n7913;
  wire n7914;
  wire [1:0] n7915;
  wire n7916;
  wire [1:0] n7917;
  wire [1:0] n7918;
  wire n7920;
  wire [6:0] n7921;
  wire n7922;
  reg n7923;
  wire n7924;
  reg n7925;
  wire n7926;
  reg n7927;
  wire n7928;
  reg n7929;
  wire n7930;
  reg n7931;
  wire n7932;
  reg n7933;
  wire n7934;
  wire n7935;
  wire n7936;
  reg n7937;
  wire n7938;
  wire n7939;
  wire n7940;
  reg n7941;
  wire n7949;
  wire n7950;
  wire n7951;
  wire n7952;
  wire n7953;
  wire n7954;
  reg n7956;
  wire [2:0] n7957;
  wire [2:0] n7958;
  wire [2:0] n7959;
  wire [2:0] n7960;
  wire [2:0] n7961;
  wire [2:0] n7962;
  wire [2:0] n7963;
  reg [2:0] n7965;
  wire [2:0] n7966;
  wire [2:0] n7967;
  wire [2:0] n7968;
  wire [2:0] n7969;
  wire [2:0] n7970;
  wire [2:0] n7971;
  wire [2:0] n7972;
  reg [2:0] n7974;
  wire n7975;
  wire n7976;
  wire n7977;
  wire n7978;
  wire n7979;
  wire n7980;
  reg n7982;
  wire [7:0] n7990;
  wire [7:0] n7993;
  wire [7:0] n7994;
  assign q = n7990; //(module output)
  assign f_out = n7994; //(module output)
  /* T80_ALU.vhd:127:16  */
  assign usecarry = n7445; // (signal)
  /* T80_ALU.vhd:128:16  */
  assign carry7_v = n7492; // (signal)
  /* T80_ALU.vhd:129:16  */
  assign overflow_v = n7518; // (signal)
  /* T80_ALU.vhd:130:16  */
  assign halfcarry_v = n7470; // (signal)
  /* T80_ALU.vhd:131:16  */
  assign carry_v = n7514; // (signal)
  /* T80_ALU.vhd:132:16  */
  assign q_v = n7993; // (signal)
  /* T80_ALU.vhd:134:16  */
  assign bitmask = n7441; // (signal)
  /* T80_ALU.vhd:138:16  */
  assign n7417 = ir[5:3]; // extract
  /* T80_ALU.vhd:138:58  */
  assign n7420 = n7417 == 3'b000;
  /* T80_ALU.vhd:139:94  */
  assign n7423 = n7417 == 3'b001;
  /* T80_ALU.vhd:140:94  */
  assign n7426 = n7417 == 3'b010;
  /* T80_ALU.vhd:141:94  */
  assign n7429 = n7417 == 3'b011;
  /* T80_ALU.vhd:142:94  */
  assign n7432 = n7417 == 3'b100;
  /* T80_ALU.vhd:143:94  */
  assign n7435 = n7417 == 3'b101;
  /* T80_ALU.vhd:144:94  */
  assign n7438 = n7417 == 3'b110;
  assign n7440 = {n7438, n7435, n7432, n7429, n7426, n7423, n7420};
  /* T80_ALU.vhd:138:9  */
  always @*
    case (n7440)
      7'b1000000: n7441 = 8'b01000000;
      7'b0100000: n7441 = 8'b00100000;
      7'b0010000: n7441 = 8'b00010000;
      7'b0001000: n7441 = 8'b00001000;
      7'b0000100: n7441 = 8'b00000100;
      7'b0000010: n7441 = 8'b00000010;
      7'b0000001: n7441 = 8'b00000001;
      default: n7441 = 8'b10000000;
    endcase
  /* T80_ALU.vhd:147:31  */
  assign n7442 = alu_op[2]; // extract
  /* T80_ALU.vhd:147:21  */
  assign n7443 = ~n7442;
  /* T80_ALU.vhd:147:45  */
  assign n7444 = alu_op[0]; // extract
  /* T80_ALU.vhd:147:35  */
  assign n7445 = n7443 & n7444;
  /* T80_ALU.vhd:148:20  */
  assign n7447 = busa[3:0]; // extract
  /* T80_ALU.vhd:148:38  */
  assign n7448 = busb[3:0]; // extract
  /* T80_ALU.vhd:148:58  */
  assign n7449 = alu_op[1]; // extract
  /* T80_ALU.vhd:148:69  */
  assign n7450 = alu_op[1]; // extract
  /* T80_ALU.vhd:148:95  */
  assign n7451 = f_in[0]; // extract
  /* T80_ALU.vhd:148:87  */
  assign n7452 = usecarry & n7451;
  /* T80_ALU.vhd:148:73  */
  assign n7453 = n7450 ^ n7452;
  /* T80_ALU.vhd:116:32  */
  assign n7458 = ~n7448;
  /* T80_ALU.vhd:115:17  */
  assign n7459 = n7449 ? n7458 : n7448;
  /* T80_ALU.vhd:121:39  */
  assign n7462 = {1'b0, n7447};
  /* T80_ALU.vhd:121:43  */
  assign n7463 = {n7462, n7453};
  /* T80_ALU.vhd:121:70  */
  assign n7465 = {1'b0, n7459};
  /* T80_ALU.vhd:121:76  */
  assign n7467 = {n7465, 1'b1};
  /* T80_ALU.vhd:121:55  */
  assign n7468 = n7463 + n7467;
  /* T80_ALU.vhd:122:31  */
  assign n7470 = n7468[5]; // extract
  /* T80_ALU.vhd:123:46  */
  assign n7471 = n7468[4:1]; // extract
  /* T80_ALU.vhd:149:20  */
  assign n7473 = busa[6:4]; // extract
  /* T80_ALU.vhd:149:38  */
  assign n7474 = busb[6:4]; // extract
  /* T80_ALU.vhd:149:58  */
  assign n7475 = alu_op[1]; // extract
  /* T80_ALU.vhd:116:32  */
  assign n7480 = ~n7474;
  /* T80_ALU.vhd:115:17  */
  assign n7481 = n7475 ? n7480 : n7474;
  /* T80_ALU.vhd:121:39  */
  assign n7484 = {1'b0, n7473};
  /* T80_ALU.vhd:121:43  */
  assign n7485 = {n7484, halfcarry_v};
  /* T80_ALU.vhd:121:70  */
  assign n7487 = {1'b0, n7481};
  /* T80_ALU.vhd:121:76  */
  assign n7489 = {n7487, 1'b1};
  /* T80_ALU.vhd:121:55  */
  assign n7490 = n7485 + n7489;
  /* T80_ALU.vhd:122:31  */
  assign n7492 = n7490[4]; // extract
  /* T80_ALU.vhd:123:46  */
  assign n7493 = n7490[3:1]; // extract
  /* T80_ALU.vhd:150:20  */
  assign n7495 = busa[7]; // extract
  /* T80_ALU.vhd:150:38  */
  assign n7496 = busb[7]; // extract
  /* T80_ALU.vhd:150:58  */
  assign n7497 = alu_op[1]; // extract
  /* T80_ALU.vhd:116:32  */
  assign n7502 = ~n7496;
  /* T80_ALU.vhd:115:17  */
  assign n7503 = n7497 ? n7502 : n7496;
  /* T80_ALU.vhd:121:39  */
  assign n7506 = {1'b0, n7495};
  /* T80_ALU.vhd:121:43  */
  assign n7507 = {n7506, carry7_v};
  /* T80_ALU.vhd:121:70  */
  assign n7509 = {1'b0, n7503};
  /* T80_ALU.vhd:121:76  */
  assign n7511 = {n7509, 1'b1};
  /* T80_ALU.vhd:121:55  */
  assign n7512 = n7507 + n7511;
  /* T80_ALU.vhd:122:31  */
  assign n7514 = n7512[2]; // extract
  /* T80_ALU.vhd:123:46  */
  assign n7515 = n7512[1]; // extract
  /* T80_ALU.vhd:158:47  */
  assign n7518 = carry_v ^ carry7_v;
  /* T80_ALU.vhd:173:36  */
  assign n7526 = alu_op[2:0]; // extract
  /* T80_ALU.vhd:174:25  */
  assign n7528 = n7526 == 3'b000;
  /* T80_ALU.vhd:174:36  */
  assign n7530 = n7526 == 3'b001;
  /* T80_ALU.vhd:174:36  */
  assign n7531 = n7528 | n7530;
  /* T80_ALU.vhd:182:50  */
  assign n7533 = ~carry_v;
  /* T80_ALU.vhd:183:50  */
  assign n7534 = ~halfcarry_v;
  /* T80_ALU.vhd:179:25  */
  assign n7536 = n7526 == 3'b010;
  /* T80_ALU.vhd:179:36  */
  assign n7538 = n7526 == 3'b011;
  /* T80_ALU.vhd:179:36  */
  assign n7539 = n7536 | n7538;
  /* T80_ALU.vhd:179:44  */
  assign n7541 = n7526 == 3'b111;
  /* T80_ALU.vhd:179:44  */
  assign n7542 = n7539 | n7541;
  /* T80_ALU.vhd:186:57  */
  assign n7543 = busa & busb;
  /* T80_ALU.vhd:185:25  */
  assign n7546 = n7526 == 3'b100;
  /* T80_ALU.vhd:189:57  */
  assign n7547 = busa ^ busb;
  /* T80_ALU.vhd:188:25  */
  assign n7550 = n7526 == 3'b101;
  /* T80_ALU.vhd:192:57  */
  assign n7551 = busa | busb;
  assign n7553 = {n7550, n7546, n7542, n7531};
  /* T80_ALU.vhd:173:25  */
  always @*
    case (n7553)
      4'b1000: n7554 = 1'b0;
      4'b0100: n7554 = 1'b0;
      4'b0010: n7554 = n7533;
      4'b0001: n7554 = carry_v;
      default: n7554 = 1'b0;
    endcase
  /* T80_ALU.vhd:173:25  */
  always @*
    case (n7553)
      4'b1000: n7555 = 1'b0;
      4'b0100: n7555 = 1'b0;
      4'b0010: n7555 = 1'b1;
      4'b0001: n7555 = 1'b0;
      default: n7555 = 1'b0;
    endcase
  assign n7556 = f_in[2]; // extract
  /* T80_ALU.vhd:173:25  */
  always @*
    case (n7553)
      4'b1000: n7557 = n7556;
      4'b0100: n7557 = n7556;
      4'b0010: n7557 = overflow_v;
      4'b0001: n7557 = overflow_v;
      default: n7557 = n7556;
    endcase
  /* T80_ALU.vhd:173:25  */
  always @*
    case (n7553)
      4'b1000: n7558 = 1'b0;
      4'b0100: n7558 = 1'b1;
      4'b0010: n7558 = n7534;
      4'b0001: n7558 = halfcarry_v;
      default: n7558 = 1'b0;
    endcase
  /* T80_ALU.vhd:173:25  */
  always @*
    case (n7553)
      4'b1000: n7559 = n7547;
      4'b0100: n7559 = n7543;
      4'b0010: n7559 = q_v;
      4'b0001: n7559 = q_v;
      default: n7559 = n7551;
    endcase
  /* T80_ALU.vhd:195:34  */
  assign n7560 = alu_op[2:0]; // extract
  /* T80_ALU.vhd:195:47  */
  assign n7562 = n7560 == 3'b111;
  /* T80_ALU.vhd:196:54  */
  assign n7563 = busb[3]; // extract
  /* T80_ALU.vhd:197:54  */
  assign n7564 = busb[5]; // extract
  /* T80_ALU.vhd:199:53  */
  assign n7565 = n7559[3]; // extract
  /* T80_ALU.vhd:200:53  */
  assign n7566 = n7559[5]; // extract
  /* T80_ALU.vhd:195:25  */
  assign n7567 = n7562 ? n7563 : n7565;
  /* T80_ALU.vhd:195:25  */
  assign n7568 = n7562 ? n7564 : n7566;
  /* T80_ALU.vhd:202:44  */
  assign n7570 = n7559 == 8'b00000000;
  /* T80_ALU.vhd:205:62  */
  assign n7572 = f_in[6]; // extract
  /* T80_ALU.vhd:204:33  */
  assign n7573 = z16 ? n7572 : 1'b1;
  /* T80_ALU.vhd:202:25  */
  assign n7575 = n7570 ? n7573 : 1'b0;
  /* T80_ALU.vhd:210:45  */
  assign n7576 = n7559[7]; // extract
  /* T80_ALU.vhd:211:36  */
  assign n7577 = alu_op[2:0]; // extract
  /* T80_ALU.vhd:212:25  */
  assign n7579 = n7577 == 3'b000;
  /* T80_ALU.vhd:212:36  */
  assign n7581 = n7577 == 3'b001;
  /* T80_ALU.vhd:212:36  */
  assign n7582 = n7579 | n7581;
  /* T80_ALU.vhd:212:44  */
  assign n7584 = n7577 == 3'b010;
  /* T80_ALU.vhd:212:44  */
  assign n7585 = n7582 | n7584;
  /* T80_ALU.vhd:212:52  */
  assign n7587 = n7577 == 3'b011;
  /* T80_ALU.vhd:212:52  */
  assign n7588 = n7585 | n7587;
  /* T80_ALU.vhd:212:60  */
  assign n7590 = n7577 == 3'b111;
  /* T80_ALU.vhd:212:60  */
  assign n7591 = n7588 | n7590;
  /* T80_ALU.vhd:214:58  */
  assign n7592 = n7559[0]; // extract
  /* T80_ALU.vhd:214:69  */
  assign n7593 = n7559[1]; // extract
  /* T80_ALU.vhd:214:62  */
  assign n7594 = n7592 ^ n7593;
  /* T80_ALU.vhd:214:80  */
  assign n7595 = n7559[2]; // extract
  /* T80_ALU.vhd:214:73  */
  assign n7596 = n7594 ^ n7595;
  /* T80_ALU.vhd:214:91  */
  assign n7597 = n7559[3]; // extract
  /* T80_ALU.vhd:214:84  */
  assign n7598 = n7596 ^ n7597;
  /* T80_ALU.vhd:215:44  */
  assign n7599 = n7559[4]; // extract
  /* T80_ALU.vhd:214:95  */
  assign n7600 = n7598 ^ n7599;
  /* T80_ALU.vhd:215:55  */
  assign n7601 = n7559[5]; // extract
  /* T80_ALU.vhd:215:48  */
  assign n7602 = n7600 ^ n7601;
  /* T80_ALU.vhd:215:66  */
  assign n7603 = n7559[6]; // extract
  /* T80_ALU.vhd:215:59  */
  assign n7604 = n7602 ^ n7603;
  /* T80_ALU.vhd:215:77  */
  assign n7605 = n7559[7]; // extract
  /* T80_ALU.vhd:215:70  */
  assign n7606 = n7604 ^ n7605;
  /* T80_ALU.vhd:214:50  */
  assign n7607 = ~n7606;
  /* T80_ALU.vhd:211:25  */
  always @*
    case (n7591)
      1'b1: n7608 = n7557;
      default: n7608 = n7607;
    endcase
  /* T80_ALU.vhd:218:54  */
  assign n7609 = f_in[7]; // extract
  /* T80_ALU.vhd:219:54  */
  assign n7610 = f_in[6]; // extract
  /* T80_ALU.vhd:220:54  */
  assign n7611 = f_in[2]; // extract
  assign n7612 = {n7609, n7610};
  /* T80_ALU.vhd:217:25  */
  assign n7613 = arith16 ? n7611 : n7608;
  assign n7614 = {n7576, n7575};
  /* T80_ALU.vhd:217:25  */
  assign n7615 = arith16 ? n7612 : n7614;
  /* T80_ALU.vhd:170:17  */
  assign n7617 = alu_op == 4'b0000;
  /* T80_ALU.vhd:170:29  */
  assign n7619 = alu_op == 4'b0001;
  /* T80_ALU.vhd:170:29  */
  assign n7620 = n7617 | n7619;
  /* T80_ALU.vhd:170:38  */
  assign n7622 = alu_op == 4'b0010;
  /* T80_ALU.vhd:170:38  */
  assign n7623 = n7620 | n7622;
  /* T80_ALU.vhd:170:48  */
  assign n7625 = alu_op == 4'b0011;
  /* T80_ALU.vhd:170:48  */
  assign n7626 = n7623 | n7625;
  /* T80_ALU.vhd:170:57  */
  assign n7628 = alu_op == 4'b0100;
  /* T80_ALU.vhd:170:57  */
  assign n7629 = n7626 | n7628;
  /* T80_ALU.vhd:170:66  */
  assign n7631 = alu_op == 4'b0101;
  /* T80_ALU.vhd:170:66  */
  assign n7632 = n7629 | n7631;
  /* T80_ALU.vhd:170:75  */
  assign n7634 = alu_op == 4'b0110;
  /* T80_ALU.vhd:170:75  */
  assign n7635 = n7632 | n7634;
  /* T80_ALU.vhd:170:84  */
  assign n7637 = alu_op == 4'b0111;
  /* T80_ALU.vhd:170:84  */
  assign n7638 = n7635 | n7637;
  /* T80_ALU.vhd:252:54  */
  assign n7639 = f_in[4]; // extract
  /* T80_ALU.vhd:256:40  */
  assign n7642 = f_in[1]; // extract
  /* T80_ALU.vhd:256:49  */
  assign n7643 = ~n7642;
  assign n7644 = {1'b0, busa};
  /* T80_ALU.vhd:259:49  */
  assign n7645 = n7644[3:0]; // extract
  /* T80_ALU.vhd:259:62  */
  assign n7647 = $unsigned(n7645) > $unsigned(4'b1001);
  /* T80_ALU.vhd:259:73  */
  assign n7648 = f_in[4]; // extract
  /* T80_ALU.vhd:259:66  */
  assign n7649 = n7647 | n7648;
  assign n7650 = {1'b0, busa};
  /* T80_ALU.vhd:260:58  */
  assign n7651 = n7650[3:0]; // extract
  /* T80_ALU.vhd:260:71  */
  assign n7653 = $unsigned(n7651) > $unsigned(4'b1001);
  /* T80_ALU.vhd:260:49  */
  assign n7656 = n7653 ? 1'b1 : 1'b0;
  assign n7657 = {1'b0, busa};
  /* T80_ALU.vhd:265:64  */
  assign n7659 = n7657 + 9'b000000110;
  /* T80_ALU.vhd:259:41  */
  assign n7660 = n7649 ? n7656 : n7639;
  assign n7661 = {1'b0, busa};
  /* T80_ALU.vhd:259:41  */
  assign n7662 = n7649 ? n7659 : n7661;
  /* T80_ALU.vhd:268:49  */
  assign n7663 = n7662[8:4]; // extract
  /* T80_ALU.vhd:268:62  */
  assign n7665 = $unsigned(n7663) > $unsigned(5'b01001);
  /* T80_ALU.vhd:268:73  */
  assign n7666 = f_in[0]; // extract
  /* T80_ALU.vhd:268:66  */
  assign n7667 = n7665 | n7666;
  /* T80_ALU.vhd:269:64  */
  assign n7669 = n7662 + 9'b001100000;
  /* T80_ALU.vhd:268:41  */
  assign n7670 = n7667 ? n7669 : n7662;
  assign n7671 = {1'b0, busa};
  /* T80_ALU.vhd:273:49  */
  assign n7672 = n7671[3:0]; // extract
  /* T80_ALU.vhd:273:62  */
  assign n7674 = $unsigned(n7672) > $unsigned(4'b1001);
  /* T80_ALU.vhd:273:73  */
  assign n7675 = f_in[4]; // extract
  /* T80_ALU.vhd:273:66  */
  assign n7676 = n7674 | n7675;
  assign n7677 = {1'b0, busa};
  /* T80_ALU.vhd:274:57  */
  assign n7678 = n7677[3:0]; // extract
  /* T80_ALU.vhd:274:70  */
  assign n7680 = $unsigned(n7678) > $unsigned(4'b0101);
  /* T80_ALU.vhd:273:41  */
  assign n7682 = n7687 ? 1'b0 : n7639;
  assign n7683 = {1'b0, busa};
  /* T80_ALU.vhd:277:75  */
  assign n7684 = n7683[7:0]; // extract
  /* T80_ALU.vhd:277:88  */
  assign n7686 = n7684 - 8'b00000110;
  /* T80_ALU.vhd:273:41  */
  assign n7687 = n7680 & n7676;
  /* T80_ALU.vhd:273:41  */
  assign n7688 = n7676 ? n7686 : busa;
  /* T80_ALU.vhd:279:59  */
  assign n7690 = $unsigned(busa) > $unsigned(8'b10011001);
  /* T80_ALU.vhd:279:72  */
  assign n7691 = f_in[0]; // extract
  /* T80_ALU.vhd:279:65  */
  assign n7692 = n7690 | n7691;
  assign n7693 = {1'b0, n7688};
  /* T80_ALU.vhd:280:64  */
  assign n7695 = n7693 - 9'b101100000;
  assign n7696 = {1'b0, n7688};
  /* T80_ALU.vhd:279:41  */
  assign n7697 = n7692 ? n7695 : n7696;
  /* T80_ALU.vhd:256:33  */
  assign n7698 = n7643 ? n7660 : n7682;
  /* T80_ALU.vhd:256:33  */
  assign n7699 = n7643 ? n7670 : n7697;
  /* T80_ALU.vhd:284:47  */
  assign n7700 = n7699[3]; // extract
  /* T80_ALU.vhd:285:47  */
  assign n7701 = n7699[5]; // extract
  /* T80_ALU.vhd:286:46  */
  assign n7702 = f_in[0]; // extract
  /* T80_ALU.vhd:286:63  */
  assign n7703 = n7699[8]; // extract
  /* T80_ALU.vhd:286:55  */
  assign n7704 = n7702 | n7703;
  /* T80_ALU.vhd:287:54  */
  assign n7705 = n7699[7:0]; // extract
  /* T80_ALU.vhd:288:33  */
  assign n7706 = n7699[7:0]; // extract
  /* T80_ALU.vhd:288:46  */
  assign n7708 = n7706 == 8'b00000000;
  /* T80_ALU.vhd:288:25  */
  assign n7711 = n7708 ? 1'b1 : 1'b0;
  /* T80_ALU.vhd:293:47  */
  assign n7712 = n7699[7]; // extract
  /* T80_ALU.vhd:294:52  */
  assign n7713 = n7699[0]; // extract
  /* T80_ALU.vhd:294:65  */
  assign n7714 = n7699[1]; // extract
  /* T80_ALU.vhd:294:56  */
  assign n7715 = n7713 ^ n7714;
  /* T80_ALU.vhd:294:78  */
  assign n7716 = n7699[2]; // extract
  /* T80_ALU.vhd:294:69  */
  assign n7717 = n7715 ^ n7716;
  /* T80_ALU.vhd:294:91  */
  assign n7718 = n7699[3]; // extract
  /* T80_ALU.vhd:294:82  */
  assign n7719 = n7717 ^ n7718;
  /* T80_ALU.vhd:295:38  */
  assign n7720 = n7699[4]; // extract
  /* T80_ALU.vhd:294:95  */
  assign n7721 = n7719 ^ n7720;
  /* T80_ALU.vhd:295:51  */
  assign n7722 = n7699[5]; // extract
  /* T80_ALU.vhd:295:42  */
  assign n7723 = n7721 ^ n7722;
  /* T80_ALU.vhd:295:64  */
  assign n7724 = n7699[6]; // extract
  /* T80_ALU.vhd:295:55  */
  assign n7725 = n7723 ^ n7724;
  /* T80_ALU.vhd:295:77  */
  assign n7726 = n7699[7]; // extract
  /* T80_ALU.vhd:295:68  */
  assign n7727 = n7725 ^ n7726;
  /* T80_ALU.vhd:294:42  */
  assign n7728 = ~n7727;
  /* T80_ALU.vhd:222:17  */
  assign n7730 = alu_op == 4'b1100;
  /* T80_ALU.vhd:298:48  */
  assign n7731 = busa[7:4]; // extract
  /* T80_ALU.vhd:299:34  */
  assign n7732 = alu_op[0]; // extract
  /* T80_ALU.vhd:300:56  */
  assign n7733 = busb[7:4]; // extract
  /* T80_ALU.vhd:302:56  */
  assign n7734 = busb[3:0]; // extract
  /* T80_ALU.vhd:299:25  */
  assign n7735 = n7732 ? n7733 : n7734;
  assign n7738 = {n7731, n7735};
  /* T80_ALU.vhd:306:45  */
  assign n7739 = n7738[3]; // extract
  assign n7740 = {n7731, n7735};
  /* T80_ALU.vhd:307:45  */
  assign n7741 = n7740[5]; // extract
  assign n7742 = {n7731, n7735};
  /* T80_ALU.vhd:308:44  */
  assign n7744 = n7742 == 8'b00000000;
  /* T80_ALU.vhd:308:25  */
  assign n7747 = n7744 ? 1'b1 : 1'b0;
  assign n7748 = {n7731, n7735};
  /* T80_ALU.vhd:313:45  */
  assign n7749 = n7748[7]; // extract
  assign n7750 = {n7731, n7735};
  /* T80_ALU.vhd:314:50  */
  assign n7751 = n7750[0]; // extract
  assign n7752 = {n7731, n7735};
  /* T80_ALU.vhd:314:61  */
  assign n7753 = n7752[1]; // extract
  /* T80_ALU.vhd:314:54  */
  assign n7754 = n7751 ^ n7753;
  assign n7755 = {n7731, n7735};
  /* T80_ALU.vhd:314:72  */
  assign n7756 = n7755[2]; // extract
  /* T80_ALU.vhd:314:65  */
  assign n7757 = n7754 ^ n7756;
  assign n7758 = {n7731, n7735};
  /* T80_ALU.vhd:314:83  */
  assign n7759 = n7758[3]; // extract
  /* T80_ALU.vhd:314:76  */
  assign n7760 = n7757 ^ n7759;
  assign n7761 = {n7731, n7735};
  /* T80_ALU.vhd:315:36  */
  assign n7762 = n7761[4]; // extract
  /* T80_ALU.vhd:314:87  */
  assign n7763 = n7760 ^ n7762;
  assign n7764 = {n7731, n7735};
  /* T80_ALU.vhd:315:47  */
  assign n7765 = n7764[5]; // extract
  /* T80_ALU.vhd:315:40  */
  assign n7766 = n7763 ^ n7765;
  assign n7767 = {n7731, n7735};
  /* T80_ALU.vhd:315:58  */
  assign n7768 = n7767[6]; // extract
  /* T80_ALU.vhd:315:51  */
  assign n7769 = n7766 ^ n7768;
  assign n7770 = {n7731, n7735};
  /* T80_ALU.vhd:315:69  */
  assign n7771 = n7770[7]; // extract
  /* T80_ALU.vhd:315:62  */
  assign n7772 = n7769 ^ n7771;
  /* T80_ALU.vhd:314:42  */
  assign n7773 = ~n7772;
  /* T80_ALU.vhd:296:17  */
  assign n7775 = alu_op == 4'b1101;
  /* T80_ALU.vhd:296:29  */
  assign n7777 = alu_op == 4'b1110;
  /* T80_ALU.vhd:296:29  */
  assign n7778 = n7775 | n7777;
  /* T80_ALU.vhd:318:49  */
  assign n7779 = busb & bitmask;
  /* T80_ALU.vhd:319:45  */
  assign n7780 = n7779[7]; // extract
  /* T80_ALU.vhd:320:44  */
  assign n7782 = n7779 == 8'b00000000;
  /* T80_ALU.vhd:320:25  */
  assign n7787 = n7782 ? 1'b1 : 1'b0;
  /* T80_ALU.vhd:320:25  */
  assign n7788 = n7782 ? 1'b1 : 1'b0;
  /* T80_ALU.vhd:329:30  */
  assign n7791 = ir[2:0]; // extract
  /* T80_ALU.vhd:329:43  */
  assign n7793 = n7791 == 3'b110;
  /* T80_ALU.vhd:329:63  */
  assign n7795 = xy_state != 2'b00;
  /* T80_ALU.vhd:329:51  */
  assign n7796 = n7793 | n7795;
  /* T80_ALU.vhd:330:52  */
  assign n7797 = wz[11]; // extract
  /* T80_ALU.vhd:331:52  */
  assign n7798 = wz[13]; // extract
  /* T80_ALU.vhd:333:54  */
  assign n7799 = busb[3]; // extract
  /* T80_ALU.vhd:334:54  */
  assign n7800 = busb[5]; // extract
  /* T80_ALU.vhd:329:25  */
  assign n7801 = n7796 ? n7797 : n7799;
  /* T80_ALU.vhd:329:25  */
  assign n7802 = n7796 ? n7798 : n7800;
  /* T80_ALU.vhd:316:17  */
  assign n7804 = alu_op == 4'b1001;
  /* T80_ALU.vhd:338:49  */
  assign n7805 = busb | bitmask;
  /* T80_ALU.vhd:336:17  */
  assign n7807 = alu_op == 4'b1010;
  /* T80_ALU.vhd:341:53  */
  assign n7808 = ~bitmask;
  /* T80_ALU.vhd:341:49  */
  assign n7809 = busb & n7808;
  /* T80_ALU.vhd:339:17  */
  assign n7811 = alu_op == 4'b1011;
  /* T80_ALU.vhd:344:32  */
  assign n7812 = ir[5:3]; // extract
  /* T80_ALU.vhd:346:56  */
  assign n7813 = busa[6:0]; // extract
  /* T80_ALU.vhd:347:47  */
  assign n7814 = busa[7]; // extract
  /* T80_ALU.vhd:348:54  */
  assign n7815 = busa[7]; // extract
  /* T80_ALU.vhd:345:25  */
  assign n7817 = n7812 == 3'b000;
  /* T80_ALU.vhd:350:56  */
  assign n7818 = busa[6:0]; // extract
  /* T80_ALU.vhd:351:47  */
  assign n7819 = f_in[0]; // extract
  /* T80_ALU.vhd:352:54  */
  assign n7820 = busa[7]; // extract
  /* T80_ALU.vhd:349:25  */
  assign n7822 = n7812 == 3'b010;
  /* T80_ALU.vhd:354:56  */
  assign n7823 = busa[7:1]; // extract
  /* T80_ALU.vhd:355:47  */
  assign n7824 = busa[0]; // extract
  /* T80_ALU.vhd:356:54  */
  assign n7825 = busa[0]; // extract
  /* T80_ALU.vhd:353:25  */
  assign n7827 = n7812 == 3'b001;
  /* T80_ALU.vhd:358:56  */
  assign n7828 = busa[7:1]; // extract
  /* T80_ALU.vhd:359:47  */
  assign n7829 = f_in[0]; // extract
  /* T80_ALU.vhd:360:54  */
  assign n7830 = busa[0]; // extract
  /* T80_ALU.vhd:357:25  */
  assign n7832 = n7812 == 3'b011;
  /* T80_ALU.vhd:362:56  */
  assign n7833 = busa[6:0]; // extract
  /* T80_ALU.vhd:364:54  */
  assign n7835 = busa[7]; // extract
  /* T80_ALU.vhd:361:25  */
  assign n7837 = n7812 == 3'b100;
  /* T80_ALU.vhd:371:64  */
  assign n7838 = busa[6:0]; // extract
  /* T80_ALU.vhd:373:62  */
  assign n7840 = busa[7]; // extract
  /* T80_ALU.vhd:365:25  */
  assign n7842 = n7812 == 3'b110;
  /* T80_ALU.vhd:376:56  */
  assign n7843 = busa[7:1]; // extract
  /* T80_ALU.vhd:377:47  */
  assign n7844 = busa[7]; // extract
  /* T80_ALU.vhd:378:54  */
  assign n7845 = busa[0]; // extract
  /* T80_ALU.vhd:375:25  */
  assign n7847 = n7812 == 3'b101;
  /* T80_ALU.vhd:380:56  */
  assign n7848 = busa[7:1]; // extract
  /* T80_ALU.vhd:382:54  */
  assign n7850 = busa[0]; // extract
  assign n7851 = {n7847, n7842, n7837, n7832, n7827, n7822, n7817};
  /* T80_ALU.vhd:344:25  */
  always @*
    case (n7851)
      7'b1000000: n7852 = n7845;
      7'b0100000: n7852 = n7840;
      7'b0010000: n7852 = n7835;
      7'b0001000: n7852 = n7830;
      7'b0000100: n7852 = n7825;
      7'b0000010: n7852 = n7820;
      7'b0000001: n7852 = n7815;
      default: n7852 = n7850;
    endcase
  assign n7853 = n7823[0]; // extract
  assign n7854 = n7828[0]; // extract
  assign n7855 = n7843[0]; // extract
  assign n7856 = n7848[0]; // extract
  /* T80_ALU.vhd:344:25  */
  always @*
    case (n7851)
      7'b1000000: n7857 = n7855;
      7'b0100000: n7857 = 1'b1;
      7'b0010000: n7857 = 1'b0;
      7'b0001000: n7857 = n7854;
      7'b0000100: n7857 = n7853;
      7'b0000010: n7857 = n7819;
      7'b0000001: n7857 = n7814;
      default: n7857 = n7856;
    endcase
  assign n7858 = n7813[5:0]; // extract
  assign n7859 = n7818[5:0]; // extract
  assign n7860 = n7823[6:1]; // extract
  assign n7861 = n7828[6:1]; // extract
  assign n7862 = n7833[5:0]; // extract
  assign n7863 = n7838[5:0]; // extract
  assign n7864 = n7843[6:1]; // extract
  assign n7865 = n7848[6:1]; // extract
  /* T80_ALU.vhd:344:25  */
  always @*
    case (n7851)
      7'b1000000: n7866 = n7864;
      7'b0100000: n7866 = n7863;
      7'b0010000: n7866 = n7862;
      7'b0001000: n7866 = n7861;
      7'b0000100: n7866 = n7860;
      7'b0000010: n7866 = n7859;
      7'b0000001: n7866 = n7858;
      default: n7866 = n7865;
    endcase
  assign n7867 = n7813[6]; // extract
  assign n7868 = n7818[6]; // extract
  assign n7869 = n7833[6]; // extract
  assign n7870 = n7838[6]; // extract
  /* T80_ALU.vhd:344:25  */
  always @*
    case (n7851)
      7'b1000000: n7871 = n7844;
      7'b0100000: n7871 = n7870;
      7'b0010000: n7871 = n7869;
      7'b0001000: n7871 = n7829;
      7'b0000100: n7871 = n7824;
      7'b0000010: n7871 = n7868;
      7'b0000001: n7871 = n7867;
      default: n7871 = 1'b0;
    endcase
  assign n7874 = {n7871, n7866, n7857};
  /* T80_ALU.vhd:386:45  */
  assign n7875 = n7874[3]; // extract
  assign n7876 = {n7871, n7866, n7857};
  /* T80_ALU.vhd:387:45  */
  assign n7877 = n7876[5]; // extract
  assign n7878 = {n7871, n7866, n7857};
  /* T80_ALU.vhd:388:45  */
  assign n7879 = n7878[7]; // extract
  assign n7880 = {n7871, n7866, n7857};
  /* T80_ALU.vhd:389:44  */
  assign n7882 = n7880 == 8'b00000000;
  /* T80_ALU.vhd:389:25  */
  assign n7885 = n7882 ? 1'b1 : 1'b0;
  assign n7886 = {n7871, n7866, n7857};
  /* T80_ALU.vhd:394:50  */
  assign n7887 = n7886[0]; // extract
  assign n7888 = {n7871, n7866, n7857};
  /* T80_ALU.vhd:394:61  */
  assign n7889 = n7888[1]; // extract
  /* T80_ALU.vhd:394:54  */
  assign n7890 = n7887 ^ n7889;
  assign n7891 = {n7871, n7866, n7857};
  /* T80_ALU.vhd:394:72  */
  assign n7892 = n7891[2]; // extract
  /* T80_ALU.vhd:394:65  */
  assign n7893 = n7890 ^ n7892;
  assign n7894 = {n7871, n7866, n7857};
  /* T80_ALU.vhd:394:83  */
  assign n7895 = n7894[3]; // extract
  /* T80_ALU.vhd:394:76  */
  assign n7896 = n7893 ^ n7895;
  assign n7897 = {n7871, n7866, n7857};
  /* T80_ALU.vhd:395:36  */
  assign n7898 = n7897[4]; // extract
  /* T80_ALU.vhd:394:87  */
  assign n7899 = n7896 ^ n7898;
  assign n7900 = {n7871, n7866, n7857};
  /* T80_ALU.vhd:395:47  */
  assign n7901 = n7900[5]; // extract
  /* T80_ALU.vhd:395:40  */
  assign n7902 = n7899 ^ n7901;
  assign n7903 = {n7871, n7866, n7857};
  /* T80_ALU.vhd:395:58  */
  assign n7904 = n7903[6]; // extract
  /* T80_ALU.vhd:395:51  */
  assign n7905 = n7902 ^ n7904;
  assign n7906 = {n7871, n7866, n7857};
  /* T80_ALU.vhd:395:69  */
  assign n7907 = n7906[7]; // extract
  /* T80_ALU.vhd:395:62  */
  assign n7908 = n7905 ^ n7907;
  /* T80_ALU.vhd:394:42  */
  assign n7909 = ~n7908;
  /* T80_ALU.vhd:396:33  */
  assign n7911 = iset == 2'b00;
  /* T80_ALU.vhd:397:54  */
  assign n7912 = f_in[2]; // extract
  /* T80_ALU.vhd:398:54  */
  assign n7913 = f_in[7]; // extract
  /* T80_ALU.vhd:399:54  */
  assign n7914 = f_in[6]; // extract
  assign n7915 = {n7913, n7914};
  /* T80_ALU.vhd:396:25  */
  assign n7916 = n7911 ? n7912 : n7909;
  assign n7917 = {n7879, n7885};
  /* T80_ALU.vhd:396:25  */
  assign n7918 = n7911 ? n7915 : n7917;
  /* T80_ALU.vhd:342:17  */
  assign n7920 = alu_op == 4'b1000;
  assign n7921 = {n7920, n7811, n7807, n7804, n7778, n7730, n7638};
  assign n7922 = f_in[0]; // extract
  /* T80_ALU.vhd:169:17  */
  always @*
    case (n7921)
      7'b1000000: n7923 = n7852;
      7'b0100000: n7923 = n7922;
      7'b0010000: n7923 = n7922;
      7'b0001000: n7923 = n7922;
      7'b0000100: n7923 = n7922;
      7'b0000010: n7923 = n7704;
      7'b0000001: n7923 = n7554;
      default: n7923 = n7922;
    endcase
  assign n7924 = f_in[1]; // extract
  /* T80_ALU.vhd:169:17  */
  always @*
    case (n7921)
      7'b1000000: n7925 = 1'b0;
      7'b0100000: n7925 = n7924;
      7'b0010000: n7925 = n7924;
      7'b0001000: n7925 = 1'b0;
      7'b0000100: n7925 = 1'b0;
      7'b0000010: n7925 = n7924;
      7'b0000001: n7925 = n7555;
      default: n7925 = n7924;
    endcase
  assign n7926 = f_in[2]; // extract
  /* T80_ALU.vhd:169:17  */
  always @*
    case (n7921)
      7'b1000000: n7927 = n7916;
      7'b0100000: n7927 = n7926;
      7'b0010000: n7927 = n7926;
      7'b0001000: n7927 = n7787;
      7'b0000100: n7927 = n7773;
      7'b0000010: n7927 = n7728;
      7'b0000001: n7927 = n7613;
      default: n7927 = n7926;
    endcase
  assign n7928 = f_in[3]; // extract
  /* T80_ALU.vhd:169:17  */
  always @*
    case (n7921)
      7'b1000000: n7929 = n7875;
      7'b0100000: n7929 = n7928;
      7'b0010000: n7929 = n7928;
      7'b0001000: n7929 = n7801;
      7'b0000100: n7929 = n7739;
      7'b0000010: n7929 = n7700;
      7'b0000001: n7929 = n7567;
      default: n7929 = n7928;
    endcase
  assign n7930 = f_in[4]; // extract
  /* T80_ALU.vhd:169:17  */
  always @*
    case (n7921)
      7'b1000000: n7931 = 1'b0;
      7'b0100000: n7931 = n7930;
      7'b0010000: n7931 = n7930;
      7'b0001000: n7931 = 1'b1;
      7'b0000100: n7931 = 1'b0;
      7'b0000010: n7931 = n7698;
      7'b0000001: n7931 = n7558;
      default: n7931 = n7930;
    endcase
  assign n7932 = f_in[5]; // extract
  /* T80_ALU.vhd:169:17  */
  always @*
    case (n7921)
      7'b1000000: n7933 = n7877;
      7'b0100000: n7933 = n7932;
      7'b0010000: n7933 = n7932;
      7'b0001000: n7933 = n7802;
      7'b0000100: n7933 = n7741;
      7'b0000010: n7933 = n7701;
      7'b0000001: n7933 = n7568;
      default: n7933 = n7932;
    endcase
  assign n7934 = n7615[0]; // extract
  assign n7935 = n7918[0]; // extract
  assign n7936 = f_in[6]; // extract
  /* T80_ALU.vhd:169:17  */
  always @*
    case (n7921)
      7'b1000000: n7937 = n7935;
      7'b0100000: n7937 = n7936;
      7'b0010000: n7937 = n7936;
      7'b0001000: n7937 = n7788;
      7'b0000100: n7937 = n7747;
      7'b0000010: n7937 = n7711;
      7'b0000001: n7937 = n7934;
      default: n7937 = n7936;
    endcase
  assign n7938 = n7615[1]; // extract
  assign n7939 = n7918[1]; // extract
  assign n7940 = f_in[7]; // extract
  /* T80_ALU.vhd:169:17  */
  always @*
    case (n7921)
      7'b1000000: n7941 = n7939;
      7'b0100000: n7941 = n7940;
      7'b0010000: n7941 = n7940;
      7'b0001000: n7941 = n7780;
      7'b0000100: n7941 = n7749;
      7'b0000010: n7941 = n7712;
      7'b0000001: n7941 = n7938;
      default: n7941 = n7940;
    endcase
  assign n7949 = n7559[0]; // extract
  assign n7950 = n7705[0]; // extract
  assign n7951 = n7735[0]; // extract
  assign n7952 = n7779[0]; // extract
  assign n7953 = n7805[0]; // extract
  assign n7954 = n7809[0]; // extract
  /* T80_ALU.vhd:169:17  */
  always @*
    case (n7921)
      7'b1000000: n7956 = n7857;
      7'b0100000: n7956 = n7954;
      7'b0010000: n7956 = n7953;
      7'b0001000: n7956 = n7952;
      7'b0000100: n7956 = n7951;
      7'b0000010: n7956 = n7950;
      7'b0000001: n7956 = n7949;
      default: n7956 = 1'bX;
    endcase
  assign n7957 = n7559[3:1]; // extract
  assign n7958 = n7705[3:1]; // extract
  assign n7959 = n7735[3:1]; // extract
  assign n7960 = n7779[3:1]; // extract
  assign n7961 = n7805[3:1]; // extract
  assign n7962 = n7809[3:1]; // extract
  assign n7963 = n7866[2:0]; // extract
  /* T80_ALU.vhd:169:17  */
  always @*
    case (n7921)
      7'b1000000: n7965 = n7963;
      7'b0100000: n7965 = n7962;
      7'b0010000: n7965 = n7961;
      7'b0001000: n7965 = n7960;
      7'b0000100: n7965 = n7959;
      7'b0000010: n7965 = n7958;
      7'b0000001: n7965 = n7957;
      default: n7965 = 3'bX;
    endcase
  assign n7966 = n7559[6:4]; // extract
  assign n7967 = n7705[6:4]; // extract
  assign n7968 = n7731[2:0]; // extract
  assign n7969 = n7779[6:4]; // extract
  assign n7970 = n7805[6:4]; // extract
  assign n7971 = n7809[6:4]; // extract
  assign n7972 = n7866[5:3]; // extract
  /* T80_ALU.vhd:169:17  */
  always @*
    case (n7921)
      7'b1000000: n7974 = n7972;
      7'b0100000: n7974 = n7971;
      7'b0010000: n7974 = n7970;
      7'b0001000: n7974 = n7969;
      7'b0000100: n7974 = n7968;
      7'b0000010: n7974 = n7967;
      7'b0000001: n7974 = n7966;
      default: n7974 = 3'bX;
    endcase
  assign n7975 = n7559[7]; // extract
  assign n7976 = n7705[7]; // extract
  assign n7977 = n7731[3]; // extract
  assign n7978 = n7779[7]; // extract
  assign n7979 = n7805[7]; // extract
  assign n7980 = n7809[7]; // extract
  /* T80_ALU.vhd:169:17  */
  always @*
    case (n7921)
      7'b1000000: n7982 = n7871;
      7'b0100000: n7982 = n7980;
      7'b0010000: n7982 = n7979;
      7'b0001000: n7982 = n7978;
      7'b0000100: n7982 = n7977;
      7'b0000010: n7982 = n7976;
      7'b0000001: n7982 = n7975;
      default: n7982 = 1'bX;
    endcase
  assign n7990 = {n7982, n7974, n7965, n7956};
  assign n7993 = {n7515, n7493, n7471};
  assign n7994 = {n7941, n7937, n7933, n7931, n7929, n7927, n7925, n7923};
endmodule

module t80_mcode_0_0_1_2_3_4_5_6_7
  (input  [7:0] ir,
   input  [1:0] iset,
   input  [2:0] mcycle,
   input  [7:0] f,
   input  nmicycle,
   input  intcycle,
   input  [1:0] xy_state,
   input  r800_mode,
   output [2:0] mcycles,
   output [2:0] tstates,
   output [1:0] prefix,
   output inc_pc,
   output inc_wz,
   output [3:0] incdec_16,
   output read_to_reg,
   output read_to_acc,
   output [3:0] set_busa_to,
   output [3:0] set_busb_to,
   output [3:0] alu_op,
   output save_alu,
   output rot_akku,
   output preservec,
   output arith16,
   output [2:0] set_addr_to,
   output iorq,
   output jump,
   output jumpe,
   output jumpxy,
   output call,
   output rstp,
   output ldz,
   output ldw,
   output ldsphl,
   output ldhlsp,
   output addspdd,
   output [2:0] special_ld,
   output exchangedh,
   output exchangerp,
   output exchangeaf,
   output exchangers,
   output i_djnz,
   output i_cpl,
   output i_ccf,
   output i_scf,
   output i_retn,
   output i_bt,
   output i_bc,
   output i_btr,
   output i_rld,
   output i_rrd,
   output i_inrc,
   output i_mulub,
   output i_mulu,
   output [1:0] setwz,
   output setdi,
   output setei,
   output [1:0] imode,
   output halt,
   output noread,
   output write,
   output no_pc,
   output xybit_undoc);
  wire [2:0] n2215;
  wire [2:0] n2216;
  wire [1:0] n2217;
  wire n2219;
  wire [2:0] n2222;
  wire [2:0] n2223;
  wire [3:0] n2225;
  wire n2227;
  wire n2229;
  wire n2230;
  wire n2232;
  wire n2233;
  wire n2235;
  wire n2236;
  wire n2238;
  wire n2239;
  wire n2241;
  wire n2242;
  wire n2244;
  wire n2245;
  wire n2247;
  wire n2248;
  wire n2250;
  wire n2251;
  wire n2253;
  wire n2254;
  wire n2256;
  wire n2257;
  wire n2259;
  wire n2260;
  wire n2262;
  wire n2263;
  wire n2265;
  wire n2266;
  wire n2268;
  wire n2269;
  wire n2271;
  wire n2272;
  wire n2274;
  wire n2275;
  wire n2277;
  wire n2278;
  wire n2280;
  wire n2281;
  wire n2283;
  wire n2284;
  wire n2286;
  wire n2287;
  wire n2289;
  wire n2290;
  wire n2292;
  wire n2293;
  wire n2295;
  wire n2296;
  wire n2298;
  wire n2299;
  wire n2301;
  wire n2302;
  wire n2304;
  wire n2305;
  wire n2307;
  wire n2308;
  wire n2310;
  wire n2311;
  wire n2313;
  wire n2314;
  wire n2316;
  wire n2317;
  wire n2319;
  wire n2320;
  wire n2322;
  wire n2323;
  wire n2325;
  wire n2326;
  wire n2328;
  wire n2329;
  wire n2331;
  wire n2332;
  wire n2334;
  wire n2335;
  wire n2337;
  wire n2338;
  wire n2340;
  wire n2341;
  wire n2343;
  wire n2344;
  wire n2346;
  wire n2347;
  wire n2349;
  wire n2350;
  wire n2352;
  wire n2353;
  wire n2355;
  wire n2356;
  wire n2358;
  wire n2359;
  wire n2361;
  wire n2362;
  wire n2364;
  wire n2365;
  wire n2367;
  wire n2368;
  wire n2370;
  wire n2371;
  wire [30:0] n2372;
  wire n2374;
  reg n2377;
  reg n2380;
  reg [2:0] n2382;
  wire n2384;
  wire n2386;
  wire n2387;
  wire n2389;
  wire n2390;
  wire n2392;
  wire n2393;
  wire n2395;
  wire n2396;
  wire n2398;
  wire n2399;
  wire n2401;
  wire n2402;
  wire [30:0] n2403;
  wire n2405;
  wire n2407;
  wire [1:0] n2408;
  reg n2411;
  reg [2:0] n2413;
  reg [2:0] n2416;
  wire n2418;
  wire n2420;
  wire n2421;
  wire n2423;
  wire n2424;
  wire n2426;
  wire n2427;
  wire n2429;
  wire n2430;
  wire n2432;
  wire n2433;
  wire n2435;
  wire n2436;
  wire [30:0] n2437;
  wire n2440;
  wire n2442;
  wire [1:0] n2443;
  reg [2:0] n2445;
  reg n2447;
  reg [2:0] n2450;
  reg n2453;
  wire n2455;
  wire n2457;
  wire n2458;
  wire n2460;
  wire n2461;
  wire n2463;
  wire n2464;
  wire n2466;
  wire n2467;
  wire n2469;
  wire n2470;
  wire n2472;
  wire n2473;
  wire [30:0] n2474;
  wire n2477;
  wire n2479;
  wire [1:0] n2480;
  reg n2483;
  reg [2:0] n2485;
  reg n2487;
  reg [2:0] n2490;
  reg n2493;
  wire n2495;
  wire [30:0] n2496;
  wire n2498;
  wire n2500;
  wire [1:0] n2501;
  reg n2504;
  reg [2:0] n2507;
  wire n2509;
  wire [30:0] n2510;
  wire n2512;
  wire n2514;
  wire [1:0] n2515;
  reg n2518;
  reg [2:0] n2521;
  wire n2523;
  wire [30:0] n2524;
  wire n2526;
  wire n2528;
  wire n2530;
  wire [2:0] n2531;
  reg n2535;
  reg n2538;
  reg [2:0] n2541;
  reg n2544;
  wire n2546;
  wire [30:0] n2547;
  wire n2549;
  wire n2551;
  wire [1:0] n2552;
  reg [3:0] n2555;
  reg [2:0] n2558;
  reg [1:0] n2561;
  reg n2564;
  wire n2566;
  wire [30:0] n2567;
  wire n2569;
  wire n2571;
  wire [1:0] n2572;
  reg [3:0] n2575;
  reg [2:0] n2578;
  reg [1:0] n2581;
  reg n2584;
  wire n2586;
  wire [30:0] n2587;
  wire n2589;
  wire n2591;
  wire n2593;
  wire [2:0] n2594;
  reg n2598;
  reg [3:0] n2601;
  reg [2:0] n2604;
  reg n2607;
  reg [1:0] n2610;
  reg n2613;
  wire n2615;
  wire [30:0] n2616;
  wire n2618;
  wire [2:0] n2620;
  wire [2:0] n2622;
  wire n2625;
  wire n2627;
  wire n2629;
  wire [2:0] n2631;
  wire [2:0] n2633;
  wire n2636;
  wire n2638;
  wire [1:0] n2639;
  reg n2643;
  reg n2647;
  reg [2:0] n2649;
  reg n2651;
  wire n2653;
  wire n2655;
  wire n2656;
  wire n2658;
  wire n2659;
  wire n2661;
  wire n2662;
  wire [30:0] n2663;
  wire n2665;
  wire n2667;
  wire n2670;
  wire n2673;
  wire [3:0] n2674;
  reg n2678;
  reg n2681;
  reg n2685;
  reg [2:0] n2687;
  reg [2:0] n2691;
  reg n2694;
  reg n2697;
  wire n2699;
  wire [30:0] n2700;
  wire n2702;
  wire n2704;
  wire n2706;
  wire n2708;
  wire [3:0] n2709;
  reg n2713;
  reg n2716;
  reg [3:0] n2720;
  reg [2:0] n2724;
  reg n2727;
  reg n2730;
  reg n2734;
  wire n2736;
  wire n2738;
  wire [30:0] n2739;
  wire n2741;
  wire [3:0] n2744;
  wire [3:0] n2746;
  wire n2748;
  wire n2750;
  wire [3:0] n2753;
  wire [3:0] n2755;
  wire n2757;
  wire n2759;
  wire [2:0] n2760;
  reg [2:0] n2762;
  reg [3:0] n2766;
  reg [3:0] n2768;
  reg [2:0] n2772;
  reg n2776;
  wire n2778;
  wire n2780;
  wire n2781;
  wire n2783;
  wire n2784;
  wire n2786;
  wire n2787;
  wire [30:0] n2788;
  wire n2790;
  wire n2792;
  wire [2:0] n2794;
  wire [2:0] n2796;
  wire n2799;
  wire n2801;
  wire n2803;
  wire [2:0] n2805;
  wire [2:0] n2807;
  wire n2810;
  wire n2812;
  wire [2:0] n2813;
  reg [3:0] n2817;
  reg n2821;
  reg [2:0] n2823;
  reg n2825;
  reg [2:0] n2829;
  wire n2831;
  wire n2833;
  wire n2834;
  wire n2836;
  wire n2837;
  wire n2839;
  wire n2840;
  wire n2842;
  wire n2844;
  wire n2846;
  wire [30:0] n2847;
  wire n2849;
  wire n2851;
  wire n2853;
  wire n2855;
  wire n2857;
  wire [4:0] n2858;
  reg [2:0] n2861;
  reg [3:0] n2865;
  reg n2869;
  reg [3:0] n2873;
  reg [3:0] n2877;
  reg [2:0] n2883;
  reg n2886;
  reg n2889;
  reg n2893;
  wire n2895;
  wire n2898;
  wire n2900;
  wire n2901;
  wire n2903;
  wire n2904;
  wire n2906;
  wire n2907;
  wire n2909;
  wire n2910;
  wire n2912;
  wire n2913;
  wire n2915;
  wire n2916;
  wire n2918;
  wire n2919;
  wire n2921;
  wire n2922;
  wire n2924;
  wire n2925;
  wire n2927;
  wire n2928;
  wire n2930;
  wire n2931;
  wire n2933;
  wire n2934;
  wire n2936;
  wire n2937;
  wire n2939;
  wire n2940;
  wire n2942;
  wire n2943;
  wire n2945;
  wire n2946;
  wire n2948;
  wire n2949;
  wire n2951;
  wire n2952;
  wire n2954;
  wire n2955;
  wire n2957;
  wire n2958;
  wire n2960;
  wire n2961;
  wire n2963;
  wire n2964;
  wire n2966;
  wire n2967;
  wire n2969;
  wire n2970;
  wire n2972;
  wire n2973;
  wire n2975;
  wire n2976;
  wire n2978;
  wire n2979;
  wire n2981;
  wire n2982;
  wire n2984;
  wire n2985;
  wire n2987;
  wire n2988;
  wire n2990;
  wire n2991;
  wire n2993;
  wire n2994;
  wire n2996;
  wire n2997;
  wire n2999;
  wire n3000;
  wire n3002;
  wire n3003;
  wire n3005;
  wire n3006;
  wire n3008;
  wire n3009;
  wire n3011;
  wire n3012;
  wire n3014;
  wire n3015;
  wire n3017;
  wire n3018;
  wire n3020;
  wire n3021;
  wire n3023;
  wire n3024;
  wire n3026;
  wire n3027;
  wire n3029;
  wire n3030;
  wire n3032;
  wire n3033;
  wire n3035;
  wire n3036;
  wire n3038;
  wire n3039;
  wire n3041;
  wire n3042;
  wire n3044;
  wire n3045;
  wire n3047;
  wire n3048;
  wire n3050;
  wire n3051;
  wire n3053;
  wire n3054;
  wire n3056;
  wire n3057;
  wire n3059;
  wire n3060;
  wire n3062;
  wire n3063;
  wire [30:0] n3064;
  wire n3066;
  wire n3069;
  wire [1:0] n3070;
  reg n3073;
  reg [2:0] n3075;
  reg [2:0] n3077;
  reg n3080;
  reg [2:0] n3083;
  wire n3085;
  wire n3087;
  wire n3088;
  wire n3090;
  wire n3091;
  wire n3093;
  wire n3094;
  wire n3096;
  wire n3097;
  wire n3099;
  wire n3100;
  wire n3102;
  wire n3103;
  wire n3105;
  wire n3106;
  wire n3108;
  wire n3112;
  wire n3115;
  wire [2:0] n3117;
  wire [2:0] n3119;
  wire n3122;
  wire n3124;
  wire n3126;
  wire n3127;
  wire n3129;
  wire n3130;
  wire n3132;
  wire n3133;
  wire n3135;
  wire n3136;
  wire n3138;
  wire n3139;
  wire n3141;
  wire n3142;
  wire n3144;
  wire n3145;
  wire n3147;
  wire n3149;
  wire n3150;
  wire n3152;
  wire n3153;
  wire n3155;
  wire n3156;
  wire n3158;
  wire n3159;
  wire n3161;
  wire n3162;
  wire n3164;
  wire n3165;
  wire [30:0] n3166;
  wire n3168;
  wire n3170;
  wire n3172;
  wire [2:0] n3173;
  reg [2:0] n3175;
  reg n3178;
  reg [2:0] n3180;
  reg [3:0] n3183;
  reg [3:0] n3185;
  reg n3188;
  reg n3191;
  reg [2:0] n3195;
  reg n3198;
  wire n3200;
  wire n3202;
  wire n3204;
  wire n3205;
  wire n3207;
  wire n3208;
  wire n3210;
  wire n3211;
  wire n3213;
  wire n3214;
  wire n3216;
  wire n3217;
  wire n3219;
  wire n3220;
  wire [30:0] n3221;
  wire n3223;
  wire n3225;
  wire n3227;
  wire [2:0] n3228;
  reg [2:0] n3230;
  reg n3233;
  reg [2:0] n3235;
  reg [3:0] n3238;
  reg [3:0] n3240;
  reg n3243;
  reg n3246;
  reg [2:0] n3250;
  reg n3253;
  wire n3255;
  wire n3258;
  wire n3260;
  wire n3262;
  wire n3264;
  wire [30:0] n3265;
  wire n3267;
  wire n3269;
  wire n3271;
  wire [2:0] n3272;
  reg [2:0] n3274;
  reg [3:0] n3278;
  reg [3:0] n3282;
  reg [2:0] n3286;
  reg n3290;
  wire [30:0] n3291;
  wire n3293;
  wire n3295;
  wire n3297;
  wire n3299;
  wire n3301;
  wire [4:0] n3302;
  reg [2:0] n3304;
  reg n3307;
  reg [3:0] n3311;
  reg [3:0] n3315;
  reg [2:0] n3319;
  reg n3322;
  reg n3326;
  reg n3330;
  wire [2:0] n3333;
  wire [2:0] n3334;
  wire n3336;
  wire [3:0] n3338;
  wire [3:0] n3340;
  wire [2:0] n3342;
  wire n3344;
  wire n3346;
  wire n3348;
  wire [2:0] n3350;
  wire [2:0] n3351;
  wire n3353;
  wire [3:0] n3354;
  wire [3:0] n3355;
  wire [2:0] n3356;
  wire n3358;
  wire n3360;
  wire n3361;
  wire n3363;
  wire n3365;
  wire n3367;
  wire n3369;
  wire [30:0] n3370;
  wire n3372;
  wire [1:0] n3374;
  wire [30:0] n3375;
  wire [1:0] n3376;
  wire n3379;
  wire n3381;
  wire n3382;
  wire n3384;
  wire n3385;
  reg n3387;
  reg [1:0] n3389;
  reg n3392;
  wire n3394;
  wire [1:0] n3396;
  wire [30:0] n3397;
  wire [1:0] n3398;
  wire n3400;
  wire n3402;
  wire n3403;
  wire n3405;
  wire n3406;
  reg n3409;
  reg [1:0] n3411;
  reg n3414;
  wire n3416;
  wire [2:0] n3417;
  reg [2:0] n3419;
  reg n3423;
  reg [2:0] n3425;
  reg n3427;
  reg [1:0] n3429;
  reg n3431;
  reg [3:0] n3434;
  reg n3438;
  reg n3442;
  reg [1:0] n3445;
  reg n3449;
  reg n3453;
  wire n3455;
  wire n3457;
  wire n3458;
  wire n3460;
  wire n3461;
  wire n3463;
  wire n3464;
  wire n3467;
  wire n3469;
  wire n3470;
  wire n3472;
  wire n3473;
  wire n3475;
  wire n3476;
  wire n3479;
  wire n3481;
  wire n3482;
  wire n3484;
  wire n3485;
  wire n3487;
  wire n3488;
  wire n3491;
  wire n3493;
  wire n3494;
  wire n3496;
  wire n3497;
  wire n3499;
  wire n3500;
  wire [30:0] n3501;
  wire n3503;
  wire n3505;
  wire [1:0] n3506;
  reg n3510;
  reg n3513;
  reg n3516;
  reg n3519;
  wire n3521;
  wire [30:0] n3523;
  wire n3525;
  wire [2:0] n3527;
  wire n3532;
  wire n3533;
  wire n3535;
  wire n3536;
  wire n3538;
  wire n3539;
  wire n3540;
  wire n3542;
  wire n3543;
  wire n3545;
  wire n3546;
  wire n3547;
  wire n3549;
  wire n3550;
  wire n3552;
  wire n3553;
  wire n3554;
  wire n3556;
  wire n3557;
  wire n3559;
  wire [7:0] n3560;
  reg n3562;
  wire n3565;
  wire n3567;
  wire [1:0] n3568;
  reg n3572;
  reg n3574;
  reg n3577;
  reg n3580;
  wire n3582;
  wire n3584;
  wire n3585;
  wire n3587;
  wire n3588;
  wire n3590;
  wire n3591;
  wire n3593;
  wire n3594;
  wire n3596;
  wire n3597;
  wire n3599;
  wire n3600;
  wire n3602;
  wire n3603;
  wire [30:0] n3604;
  wire n3606;
  wire n3608;
  wire [1:0] n3609;
  reg [2:0] n3611;
  reg n3614;
  reg n3617;
  reg n3620;
  reg n3623;
  wire n3625;
  wire [30:0] n3626;
  wire n3627;
  wire n3628;
  wire [2:0] n3631;
  wire n3634;
  wire n3636;
  wire n3638;
  wire [1:0] n3639;
  reg [2:0] n3641;
  reg [2:0] n3644;
  reg n3647;
  reg n3650;
  reg n3653;
  reg n3655;
  wire n3657;
  wire [30:0] n3658;
  wire n3659;
  wire [2:0] n3662;
  wire n3665;
  wire n3667;
  wire n3669;
  wire [1:0] n3670;
  reg [2:0] n3672;
  reg [2:0] n3675;
  reg n3678;
  reg n3681;
  reg n3684;
  reg n3686;
  wire n3688;
  wire [30:0] n3689;
  wire n3690;
  wire n3691;
  wire [2:0] n3694;
  wire n3697;
  wire n3699;
  wire n3701;
  wire [1:0] n3702;
  reg [2:0] n3704;
  reg [2:0] n3707;
  reg n3710;
  reg n3713;
  reg n3716;
  reg n3718;
  wire n3720;
  wire [30:0] n3721;
  wire n3722;
  wire [2:0] n3725;
  wire n3728;
  wire n3730;
  wire n3732;
  wire [1:0] n3733;
  reg [2:0] n3735;
  reg [2:0] n3738;
  reg n3741;
  reg n3744;
  reg n3747;
  reg n3749;
  wire n3751;
  wire n3753;
  wire [30:0] n3754;
  wire n3757;
  wire n3759;
  wire n3761;
  wire [2:0] n3762;
  reg [2:0] n3765;
  reg n3768;
  reg n3771;
  reg [2:0] n3773;
  reg [3:0] n3776;
  reg [3:0] n3778;
  reg n3781;
  reg n3784;
  reg n3788;
  reg n3791;
  reg n3794;
  wire n3796;
  wire [30:0] n3797;
  wire n3799;
  wire n3801;
  wire n3803;
  wire n3805;
  wire [3:0] n3806;
  reg [2:0] n3808;
  reg n3812;
  reg [3:0] n3816;
  reg [3:0] n3820;
  reg [2:0] n3824;
  reg n3827;
  reg n3830;
  reg n3833;
  reg n3837;
  wire n3839;
  wire [30:0] n3842;
  wire n3844;
  wire [2:0] n3846;
  wire n3851;
  wire n3852;
  wire n3854;
  wire n3855;
  wire n3857;
  wire n3858;
  wire n3859;
  wire n3861;
  wire n3862;
  wire n3864;
  wire n3865;
  wire n3866;
  wire n3868;
  wire n3869;
  wire n3871;
  wire n3872;
  wire n3873;
  wire n3875;
  wire n3876;
  wire n3878;
  wire [7:0] n3879;
  reg n3881;
  wire [2:0] n3884;
  wire [2:0] n3886;
  wire [3:0] n3889;
  wire [3:0] n3892;
  wire [2:0] n3895;
  wire n3897;
  wire n3899;
  wire n3901;
  wire [3:0] n3902;
  reg [2:0] n3904;
  reg [2:0] n3906;
  reg n3910;
  reg [3:0] n3913;
  reg [3:0] n3916;
  reg [2:0] n3919;
  reg n3922;
  reg n3925;
  reg n3928;
  reg n3932;
  wire n3934;
  wire n3936;
  wire n3937;
  wire n3939;
  wire n3940;
  wire n3942;
  wire n3943;
  wire n3945;
  wire n3946;
  wire n3948;
  wire n3949;
  wire n3951;
  wire n3952;
  wire n3954;
  wire n3955;
  wire [30:0] n3956;
  wire n3958;
  wire n3960;
  wire n3962;
  wire [2:0] n3963;
  reg [3:0] n3967;
  reg [2:0] n3971;
  reg n3974;
  reg n3977;
  wire n3979;
  wire [30:0] n3981;
  wire [2:0] n3983;
  wire n3988;
  wire n3989;
  wire n3991;
  wire n3992;
  wire n3994;
  wire n3995;
  wire n3996;
  wire n3998;
  wire n3999;
  wire n4001;
  wire n4002;
  wire n4003;
  wire n4005;
  wire n4006;
  wire n4008;
  wire n4009;
  wire n4010;
  wire n4012;
  wire n4013;
  wire n4015;
  wire [7:0] n4016;
  reg n4018;
  wire [2:0] n4021;
  wire [2:0] n4024;
  wire n4026;
  wire n4028;
  wire n4030;
  wire [2:0] n4031;
  reg [2:0] n4033;
  reg [2:0] n4036;
  reg [3:0] n4040;
  reg [2:0] n4043;
  reg n4046;
  reg n4049;
  wire n4051;
  wire n4053;
  wire n4054;
  wire n4056;
  wire n4057;
  wire n4059;
  wire n4060;
  wire n4062;
  wire n4063;
  wire n4065;
  wire n4066;
  wire n4068;
  wire n4069;
  wire n4071;
  wire n4072;
  wire [30:0] n4073;
  wire n4075;
  wire n4077;
  wire n4079;
  wire [2:0] n4080;
  reg [2:0] n4082;
  reg [3:0] n4086;
  reg [3:0] n4090;
  reg [2:0] n4094;
  reg n4097;
  reg n4101;
  wire n4103;
  wire n4105;
  wire n4106;
  wire n4108;
  wire n4109;
  wire n4111;
  wire n4112;
  wire n4114;
  wire n4115;
  wire n4117;
  wire n4118;
  wire n4120;
  wire n4121;
  wire n4123;
  wire n4124;
  wire [30:0] n4125;
  wire n4127;
  wire n4129;
  wire [1:0] n4130;
  reg n4133;
  reg n4136;
  reg [2:0] n4139;
  reg n4142;
  wire n4144;
  wire [30:0] n4145;
  wire n4147;
  wire n4149;
  wire [1:0] n4150;
  reg n4153;
  reg [3:0] n4156;
  reg [2:0] n4159;
  reg n4162;
  reg n4165;
  wire n4167;
  wire n4169;
  wire n4171;
  wire n4173;
  wire n4175;
  wire n4176;
  wire [58:0] n4177;
  reg [2:0] n4210;
  reg [2:0] n4215;
  reg [1:0] n4221;
  reg n4224;
  reg n4227;
  wire [1:0] n4228;
  wire [1:0] n4229;
  wire [1:0] n4230;
  wire [1:0] n4231;
  wire [1:0] n4232;
  wire [1:0] n4233;
  wire [1:0] n4234;
  wire [1:0] n4235;
  wire [1:0] n4236;
  reg [1:0] n4239;
  wire [1:0] n4240;
  wire [1:0] n4241;
  wire [1:0] n4242;
  wire [1:0] n4243;
  wire [1:0] n4244;
  wire [1:0] n4245;
  wire [1:0] n4246;
  wire [1:0] n4247;
  wire [1:0] n4248;
  reg [1:0] n4251;
  reg n4260;
  reg n4263;
  wire [2:0] n4264;
  reg [2:0] n4267;
  wire n4268;
  reg n4271;
  wire n4272;
  wire n4273;
  wire n4274;
  wire n4275;
  wire n4276;
  wire n4277;
  wire n4278;
  wire n4279;
  wire n4280;
  wire n4281;
  wire n4282;
  wire n4283;
  wire n4285;
  wire n4287;
  wire n4288;
  wire n4289;
  wire n4290;
  wire n4291;
  wire n4292;
  wire n4293;
  reg n4296;
  wire [1:0] n4297;
  wire [1:0] n4298;
  wire [1:0] n4299;
  wire [1:0] n4300;
  wire [1:0] n4301;
  wire [1:0] n4302;
  wire [1:0] n4303;
  wire [1:0] n4304;
  wire [1:0] n4305;
  wire [1:0] n4306;
  wire [1:0] n4307;
  wire [1:0] n4308;
  wire [1:0] n4310;
  wire [1:0] n4312;
  wire [1:0] n4313;
  wire [1:0] n4314;
  wire [1:0] n4315;
  wire [1:0] n4316;
  wire [1:0] n4317;
  wire [1:0] n4318;
  reg [1:0] n4321;
  wire n4322;
  wire n4323;
  wire n4324;
  wire n4325;
  wire n4326;
  wire n4327;
  wire n4329;
  wire n4331;
  wire n4332;
  wire n4333;
  wire n4334;
  wire n4335;
  wire n4336;
  wire n4337;
  reg n4340;
  reg [3:0] n4346;
  reg n4354;
  reg n4358;
  reg n4363;
  reg n4366;
  reg [2:0] n4369;
  reg n4372;
  reg n4375;
  reg n4378;
  reg n4382;
  reg n4385;
  reg n4388;
  reg n4391;
  reg n4394;
  reg n4398;
  reg n4402;
  reg n4406;
  reg n4410;
  reg n4414;
  reg n4417;
  reg n4421;
  reg n4425;
  reg n4429;
  reg [1:0] n4432;
  reg n4436;
  reg n4440;
  reg n4444;
  reg n4447;
  reg n4450;
  reg n4453;
  wire n4455;
  wire [2:0] n4456;
  wire [2:0] n4457;
  wire n4459;
  wire n4461;
  wire n4464;
  wire [3:0] n4466;
  wire n4469;
  wire [30:0] n4470;
  wire n4472;
  wire n4474;
  wire n4475;
  wire n4477;
  wire n4479;
  wire [2:0] n4480;
  reg [2:0] n4482;
  reg n4485;
  reg [3:0] n4487;
  reg n4490;
  reg [2:0] n4494;
  reg n4497;
  wire [2:0] n4500;
  wire [2:0] n4501;
  wire n4502;
  wire [3:0] n4503;
  wire n4504;
  wire [2:0] n4506;
  wire n4508;
  wire n4511;
  wire n4513;
  wire n4515;
  wire n4516;
  wire n4518;
  wire n4519;
  wire n4521;
  wire n4522;
  wire n4524;
  wire n4525;
  wire n4527;
  wire n4528;
  wire n4530;
  wire n4531;
  wire n4533;
  wire n4534;
  wire n4536;
  wire n4537;
  wire n4539;
  wire n4540;
  wire n4542;
  wire n4543;
  wire n4545;
  wire n4546;
  wire n4548;
  wire n4549;
  wire n4551;
  wire n4552;
  wire n4554;
  wire n4555;
  wire n4557;
  wire n4558;
  wire n4560;
  wire n4561;
  wire n4563;
  wire n4564;
  wire n4566;
  wire n4567;
  wire n4569;
  wire n4570;
  wire n4572;
  wire n4573;
  wire n4575;
  wire n4576;
  wire n4578;
  wire n4579;
  wire n4581;
  wire n4582;
  wire n4584;
  wire n4585;
  wire n4587;
  wire n4588;
  wire n4590;
  wire n4591;
  wire n4593;
  wire n4594;
  wire n4596;
  wire n4597;
  wire n4599;
  wire n4600;
  wire n4602;
  wire n4603;
  wire n4605;
  wire n4606;
  wire n4608;
  wire n4609;
  wire n4611;
  wire n4612;
  wire n4614;
  wire n4615;
  wire n4617;
  wire n4618;
  wire n4620;
  wire n4621;
  wire n4623;
  wire n4624;
  wire n4626;
  wire n4627;
  wire n4629;
  wire n4630;
  wire n4632;
  wire n4633;
  wire n4635;
  wire n4636;
  wire n4638;
  wire n4639;
  wire n4641;
  wire n4642;
  wire n4644;
  wire n4645;
  wire n4647;
  wire n4648;
  wire n4650;
  wire n4651;
  wire n4653;
  wire n4654;
  wire n4656;
  wire n4657;
  wire n4659;
  wire n4660;
  wire n4662;
  wire n4663;
  wire n4665;
  wire n4666;
  wire n4668;
  wire n4669;
  wire n4671;
  wire n4672;
  wire n4674;
  wire n4675;
  wire n4677;
  wire n4678;
  wire [30:0] n4679;
  wire n4681;
  wire n4683;
  wire n4684;
  wire n4686;
  wire n4688;
  wire [2:0] n4689;
  reg [2:0] n4691;
  reg n4694;
  reg [3:0] n4696;
  reg n4699;
  reg [2:0] n4703;
  reg n4706;
  wire n4708;
  wire n4710;
  wire n4711;
  wire n4713;
  wire n4714;
  wire n4716;
  wire n4717;
  wire n4719;
  wire n4720;
  wire n4722;
  wire n4723;
  wire n4725;
  wire n4726;
  wire n4728;
  wire n4729;
  wire n4731;
  wire n4733;
  wire [2:0] n4734;
  wire [2:0] n4735;
  wire [3:0] n4737;
  wire [30:0] n4738;
  wire n4740;
  wire n4742;
  wire n4743;
  wire n4745;
  wire [1:0] n4746;
  reg [2:0] n4748;
  reg [3:0] n4750;
  reg [2:0] n4753;
  wire [2:0] n4756;
  wire [2:0] n4757;
  wire n4758;
  wire [3:0] n4759;
  wire [2:0] n4761;
  wire n4764;
  wire n4766;
  wire n4768;
  wire n4769;
  wire n4771;
  wire n4772;
  wire n4774;
  wire n4775;
  wire n4777;
  wire n4778;
  wire n4780;
  wire n4781;
  wire n4783;
  wire n4784;
  wire n4786;
  wire n4787;
  wire n4789;
  wire n4790;
  wire n4792;
  wire n4793;
  wire n4795;
  wire n4796;
  wire n4798;
  wire n4799;
  wire n4801;
  wire n4802;
  wire n4804;
  wire n4805;
  wire n4807;
  wire n4808;
  wire n4810;
  wire n4811;
  wire n4813;
  wire n4814;
  wire n4816;
  wire n4817;
  wire n4819;
  wire n4820;
  wire n4822;
  wire n4823;
  wire n4825;
  wire n4826;
  wire n4828;
  wire n4829;
  wire n4831;
  wire n4832;
  wire n4834;
  wire n4835;
  wire n4837;
  wire n4838;
  wire n4840;
  wire n4841;
  wire n4843;
  wire n4844;
  wire n4846;
  wire n4847;
  wire n4849;
  wire n4850;
  wire n4852;
  wire n4853;
  wire n4855;
  wire n4856;
  wire n4858;
  wire n4859;
  wire n4861;
  wire n4862;
  wire n4864;
  wire n4865;
  wire n4867;
  wire n4868;
  wire n4870;
  wire n4871;
  wire n4873;
  wire n4874;
  wire n4876;
  wire n4877;
  wire n4879;
  wire n4880;
  wire n4882;
  wire n4883;
  wire n4885;
  wire n4886;
  wire n4888;
  wire n4889;
  wire n4891;
  wire n4892;
  wire n4894;
  wire n4895;
  wire n4897;
  wire n4898;
  wire n4900;
  wire n4901;
  wire n4903;
  wire n4904;
  wire n4906;
  wire n4907;
  wire n4909;
  wire n4910;
  wire n4912;
  wire n4913;
  wire n4915;
  wire n4916;
  wire n4918;
  wire n4919;
  wire n4921;
  wire n4922;
  wire n4924;
  wire n4925;
  wire n4927;
  wire n4928;
  wire n4930;
  wire n4931;
  wire [30:0] n4932;
  wire n4934;
  wire n4936;
  wire n4937;
  wire n4939;
  wire [1:0] n4940;
  reg [2:0] n4942;
  reg [3:0] n4944;
  reg [2:0] n4947;
  wire n4949;
  wire n4951;
  wire n4952;
  wire n4954;
  wire n4955;
  wire n4957;
  wire n4958;
  wire n4960;
  wire n4961;
  wire n4963;
  wire n4964;
  wire n4966;
  wire n4967;
  wire n4969;
  wire n4970;
  wire n4972;
  wire n4974;
  wire n4977;
  wire [3:0] n4979;
  wire n4982;
  wire [30:0] n4983;
  wire n4985;
  wire n4987;
  wire n4988;
  wire n4990;
  wire n4992;
  wire [2:0] n4993;
  reg [2:0] n4995;
  reg n4998;
  reg [3:0] n5000;
  reg n5003;
  reg [2:0] n5007;
  reg n5010;
  wire [2:0] n5013;
  wire [2:0] n5014;
  wire n5015;
  wire [3:0] n5016;
  wire n5017;
  wire [2:0] n5019;
  wire n5021;
  wire n5024;
  wire n5026;
  wire n5028;
  wire n5029;
  wire n5031;
  wire n5032;
  wire n5034;
  wire n5035;
  wire n5037;
  wire n5038;
  wire n5040;
  wire n5041;
  wire n5043;
  wire n5044;
  wire n5046;
  wire n5047;
  wire n5049;
  wire n5050;
  wire n5052;
  wire n5053;
  wire n5055;
  wire n5056;
  wire n5058;
  wire n5059;
  wire n5061;
  wire n5062;
  wire n5064;
  wire n5065;
  wire n5067;
  wire n5068;
  wire n5070;
  wire n5071;
  wire n5073;
  wire n5074;
  wire n5076;
  wire n5077;
  wire n5079;
  wire n5080;
  wire n5082;
  wire n5083;
  wire n5085;
  wire n5086;
  wire n5088;
  wire n5089;
  wire n5091;
  wire n5092;
  wire n5094;
  wire n5095;
  wire n5097;
  wire n5098;
  wire n5100;
  wire n5101;
  wire n5103;
  wire n5104;
  wire n5106;
  wire n5107;
  wire n5109;
  wire n5110;
  wire n5112;
  wire n5113;
  wire n5115;
  wire n5116;
  wire n5118;
  wire n5119;
  wire n5121;
  wire n5122;
  wire n5124;
  wire n5125;
  wire n5127;
  wire n5128;
  wire n5130;
  wire n5131;
  wire n5133;
  wire n5134;
  wire n5136;
  wire n5137;
  wire n5139;
  wire n5140;
  wire n5142;
  wire n5143;
  wire n5145;
  wire n5146;
  wire n5148;
  wire n5149;
  wire n5151;
  wire n5152;
  wire n5154;
  wire n5155;
  wire n5157;
  wire n5158;
  wire n5160;
  wire n5161;
  wire n5163;
  wire n5164;
  wire n5166;
  wire n5167;
  wire n5169;
  wire n5170;
  wire n5172;
  wire n5173;
  wire n5175;
  wire n5176;
  wire n5178;
  wire n5179;
  wire n5181;
  wire n5182;
  wire n5184;
  wire n5185;
  wire n5187;
  wire n5188;
  wire n5190;
  wire n5191;
  wire [30:0] n5192;
  wire n5194;
  wire n5196;
  wire n5197;
  wire n5199;
  wire n5201;
  wire [2:0] n5202;
  reg [2:0] n5204;
  reg n5207;
  reg [3:0] n5209;
  reg n5212;
  reg [2:0] n5216;
  reg n5219;
  wire n5221;
  wire n5223;
  wire n5224;
  wire n5226;
  wire n5227;
  wire n5229;
  wire n5230;
  wire n5232;
  wire n5233;
  wire n5235;
  wire n5236;
  wire n5238;
  wire n5239;
  wire n5241;
  wire n5242;
  wire n5244;
  wire n5246;
  wire n5249;
  wire [3:0] n5251;
  wire n5254;
  wire [30:0] n5255;
  wire n5257;
  wire n5259;
  wire n5260;
  wire n5262;
  wire n5264;
  wire [2:0] n5265;
  reg [2:0] n5267;
  reg n5270;
  reg [3:0] n5272;
  reg n5275;
  reg [2:0] n5279;
  reg n5282;
  wire [2:0] n5285;
  wire [2:0] n5286;
  wire n5287;
  wire [3:0] n5288;
  wire n5289;
  wire [2:0] n5291;
  wire n5293;
  wire n5296;
  wire n5298;
  wire n5300;
  wire n5301;
  wire n5303;
  wire n5304;
  wire n5306;
  wire n5307;
  wire n5309;
  wire n5310;
  wire n5312;
  wire n5313;
  wire n5315;
  wire n5316;
  wire n5318;
  wire n5319;
  wire n5321;
  wire n5322;
  wire n5324;
  wire n5325;
  wire n5327;
  wire n5328;
  wire n5330;
  wire n5331;
  wire n5333;
  wire n5334;
  wire n5336;
  wire n5337;
  wire n5339;
  wire n5340;
  wire n5342;
  wire n5343;
  wire n5345;
  wire n5346;
  wire n5348;
  wire n5349;
  wire n5351;
  wire n5352;
  wire n5354;
  wire n5355;
  wire n5357;
  wire n5358;
  wire n5360;
  wire n5361;
  wire n5363;
  wire n5364;
  wire n5366;
  wire n5367;
  wire n5369;
  wire n5370;
  wire n5372;
  wire n5373;
  wire n5375;
  wire n5376;
  wire n5378;
  wire n5379;
  wire n5381;
  wire n5382;
  wire n5384;
  wire n5385;
  wire n5387;
  wire n5388;
  wire n5390;
  wire n5391;
  wire n5393;
  wire n5394;
  wire n5396;
  wire n5397;
  wire n5399;
  wire n5400;
  wire n5402;
  wire n5403;
  wire n5405;
  wire n5406;
  wire n5408;
  wire n5409;
  wire n5411;
  wire n5412;
  wire n5414;
  wire n5415;
  wire n5417;
  wire n5418;
  wire n5420;
  wire n5421;
  wire n5423;
  wire n5424;
  wire n5426;
  wire n5427;
  wire n5429;
  wire n5430;
  wire n5432;
  wire n5433;
  wire n5435;
  wire n5436;
  wire n5438;
  wire n5439;
  wire n5441;
  wire n5442;
  wire n5444;
  wire n5445;
  wire n5447;
  wire n5448;
  wire n5450;
  wire n5451;
  wire n5453;
  wire n5454;
  wire n5456;
  wire n5457;
  wire n5459;
  wire n5460;
  wire n5462;
  wire n5463;
  wire [30:0] n5464;
  wire n5466;
  wire n5468;
  wire n5469;
  wire n5471;
  wire n5473;
  wire [2:0] n5474;
  reg [2:0] n5476;
  reg n5479;
  reg [3:0] n5481;
  reg n5484;
  reg [2:0] n5488;
  reg n5491;
  wire n5493;
  wire n5495;
  wire n5496;
  wire n5498;
  wire n5499;
  wire n5501;
  wire n5502;
  wire n5504;
  wire n5505;
  wire n5507;
  wire n5508;
  wire n5510;
  wire n5511;
  wire n5513;
  wire n5514;
  wire [7:0] n5515;
  reg [2:0] n5521;
  reg [2:0] n5523;
  reg n5526;
  reg [2:0] n5528;
  reg [3:0] n5530;
  reg n5533;
  reg [2:0] n5535;
  reg n5538;
  reg n5541;
  wire n5543;
  wire n5545;
  wire n5547;
  wire n5548;
  wire n5550;
  wire n5551;
  wire n5553;
  wire n5554;
  wire n5556;
  wire n5557;
  wire n5559;
  wire n5560;
  wire n5562;
  wire n5563;
  wire n5565;
  wire n5566;
  wire n5568;
  wire n5569;
  wire n5571;
  wire n5572;
  wire n5574;
  wire n5575;
  wire n5577;
  wire n5578;
  wire n5580;
  wire n5581;
  wire n5583;
  wire n5584;
  wire n5586;
  wire n5587;
  wire n5589;
  wire n5590;
  wire n5592;
  wire n5593;
  wire n5595;
  wire n5596;
  wire n5598;
  wire n5599;
  wire n5601;
  wire n5602;
  wire n5604;
  wire n5605;
  wire n5607;
  wire n5608;
  wire n5610;
  wire n5611;
  wire n5613;
  wire n5614;
  wire n5616;
  wire n5617;
  wire n5619;
  wire n5620;
  wire n5622;
  wire n5623;
  wire n5625;
  wire n5626;
  wire n5628;
  wire n5629;
  wire n5631;
  wire n5632;
  wire n5634;
  wire n5635;
  wire n5637;
  wire n5638;
  wire n5640;
  wire n5641;
  wire n5643;
  wire n5644;
  wire n5646;
  wire n5647;
  wire n5649;
  wire n5650;
  wire n5652;
  wire n5653;
  wire n5655;
  wire n5656;
  wire n5658;
  wire n5659;
  wire n5661;
  wire n5662;
  wire n5664;
  wire n5665;
  wire n5667;
  wire n5668;
  wire n5670;
  wire n5671;
  wire n5673;
  wire n5674;
  wire n5676;
  wire n5677;
  wire n5679;
  wire n5680;
  wire n5682;
  wire n5683;
  wire n5685;
  wire n5686;
  wire n5688;
  wire n5689;
  wire n5691;
  wire n5692;
  wire n5694;
  wire n5695;
  wire n5697;
  wire n5698;
  wire n5700;
  wire n5701;
  wire n5703;
  wire n5704;
  wire n5706;
  wire n5707;
  wire n5709;
  wire n5710;
  wire n5712;
  wire n5713;
  wire n5715;
  wire n5716;
  wire n5718;
  wire n5719;
  wire n5721;
  wire n5722;
  wire n5724;
  wire n5725;
  wire n5727;
  wire n5728;
  wire n5730;
  wire n5731;
  wire n5733;
  wire n5734;
  wire n5736;
  wire n5737;
  wire n5739;
  wire n5740;
  wire n5742;
  wire n5743;
  wire n5745;
  wire n5746;
  wire n5748;
  wire n5749;
  wire n5751;
  wire n5752;
  wire n5754;
  wire n5755;
  wire n5757;
  wire n5758;
  wire n5760;
  wire n5761;
  wire n5763;
  wire n5764;
  wire n5766;
  wire n5767;
  wire n5769;
  wire n5770;
  wire n5772;
  wire n5773;
  wire n5775;
  wire n5776;
  wire n5778;
  wire n5779;
  wire n5781;
  wire n5782;
  wire n5784;
  wire n5785;
  wire n5787;
  wire n5788;
  wire n5790;
  wire n5791;
  wire n5793;
  wire n5794;
  wire n5796;
  wire n5797;
  wire n5799;
  wire n5800;
  wire n5802;
  wire n5803;
  wire n5805;
  wire n5806;
  wire n5808;
  wire n5809;
  wire n5811;
  wire n5812;
  wire n5814;
  wire n5815;
  wire n5817;
  wire n5818;
  wire n5820;
  wire n5821;
  wire n5823;
  wire n5824;
  wire n5826;
  wire n5827;
  wire n5829;
  wire n5830;
  wire n5832;
  wire n5833;
  wire n5835;
  wire n5836;
  wire n5838;
  wire n5839;
  wire n5841;
  wire n5842;
  wire n5844;
  wire n5845;
  wire n5847;
  wire n5848;
  wire n5850;
  wire n5851;
  wire n5853;
  wire n5854;
  wire n5856;
  wire n5857;
  wire n5859;
  wire n5860;
  wire n5862;
  wire n5863;
  wire n5865;
  wire n5866;
  wire n5868;
  wire n5869;
  wire n5871;
  wire n5872;
  wire n5874;
  wire n5875;
  wire n5877;
  wire n5878;
  wire n5880;
  wire n5881;
  wire n5883;
  wire n5884;
  wire n5886;
  wire n5887;
  wire n5889;
  wire n5890;
  wire n5892;
  wire n5893;
  wire n5895;
  wire n5896;
  wire n5898;
  wire n5899;
  wire n5901;
  wire n5902;
  wire n5904;
  wire n5905;
  wire n5907;
  wire n5908;
  wire n5910;
  wire n5911;
  wire n5913;
  wire n5914;
  wire n5916;
  wire n5917;
  wire n5919;
  wire n5920;
  wire n5922;
  wire n5923;
  wire n5925;
  wire n5926;
  wire n5928;
  wire n5929;
  wire n5931;
  wire n5932;
  wire n5934;
  wire n5935;
  wire n5937;
  wire n5938;
  wire n5940;
  wire n5941;
  wire n5943;
  wire n5944;
  wire n5946;
  wire n5947;
  wire n5949;
  wire n5950;
  wire n5952;
  wire n5953;
  wire n5955;
  wire n5956;
  wire n5958;
  wire n5959;
  wire n5961;
  wire n5962;
  wire n5964;
  wire n5965;
  wire n5967;
  wire n5968;
  wire n5970;
  wire n5971;
  wire n5973;
  wire n5974;
  wire n5976;
  wire n5977;
  wire n5979;
  wire n5980;
  wire n5982;
  wire n5983;
  wire n5985;
  wire n5986;
  wire n5988;
  wire n5989;
  wire n5991;
  wire n5992;
  wire n5994;
  wire n5995;
  wire n5997;
  wire n5998;
  wire n6000;
  wire n6001;
  wire n6003;
  wire n6004;
  wire n6006;
  wire n6007;
  wire n6009;
  wire n6010;
  wire n6012;
  wire n6013;
  wire n6015;
  wire n6016;
  wire n6018;
  wire n6019;
  wire n6021;
  wire n6022;
  wire n6024;
  wire n6025;
  wire n6027;
  wire n6028;
  wire n6030;
  wire n6031;
  wire n6033;
  wire n6034;
  wire n6036;
  wire n6037;
  wire n6039;
  wire n6040;
  wire n6042;
  wire n6043;
  wire n6045;
  wire n6046;
  wire n6048;
  wire n6049;
  wire n6051;
  wire n6052;
  wire n6054;
  wire n6056;
  wire n6057;
  wire n6059;
  wire n6061;
  wire n6063;
  wire n6065;
  wire [30:0] n6066;
  wire n6068;
  wire n6070;
  wire [1:0] n6071;
  wire n6073;
  wire [1:0] n6074;
  wire [2:0] n6076;
  wire [2:0] n6078;
  wire n6081;
  wire n6083;
  wire [1:0] n6084;
  wire n6086;
  wire [1:0] n6087;
  wire [2:0] n6089;
  wire [2:0] n6091;
  wire n6094;
  wire n6096;
  wire [3:0] n6097;
  reg n6101;
  reg n6104;
  reg n6108;
  reg [2:0] n6110;
  reg n6112;
  reg [2:0] n6116;
  reg n6119;
  reg n6122;
  wire n6124;
  wire n6126;
  wire n6127;
  wire n6129;
  wire n6130;
  wire n6132;
  wire n6133;
  wire [30:0] n6134;
  wire n6136;
  wire [1:0] n6137;
  wire n6139;
  wire [1:0] n6140;
  wire [3:0] n6143;
  wire [3:0] n6145;
  wire n6147;
  wire [1:0] n6148;
  wire n6150;
  wire [1:0] n6151;
  wire [3:0] n6154;
  wire [3:0] n6156;
  wire n6158;
  wire n6160;
  wire [3:0] n6161;
  reg n6165;
  reg n6168;
  reg [3:0] n6170;
  reg [2:0] n6174;
  reg n6177;
  reg n6180;
  reg n6184;
  wire n6186;
  wire n6188;
  wire n6189;
  wire n6191;
  wire n6192;
  wire n6194;
  wire n6195;
  wire [30:0] n6196;
  wire n6198;
  wire n6200;
  wire n6201;
  wire [3:0] n6204;
  wire n6206;
  wire n6207;
  wire n6208;
  wire [3:0] n6211;
  wire n6213;
  wire n6215;
  wire [3:0] n6216;
  reg [2:0] n6219;
  reg [3:0] n6222;
  reg [2:0] n6224;
  reg [3:0] n6227;
  reg [3:0] n6229;
  reg [2:0] n6233;
  reg n6236;
  reg n6239;
  reg n6242;
  reg n6245;
  wire n6247;
  wire n6249;
  wire n6250;
  wire n6252;
  wire n6253;
  wire n6255;
  wire n6256;
  wire [30:0] n6257;
  wire n6259;
  wire n6261;
  wire n6262;
  wire [3:0] n6265;
  wire n6267;
  wire n6269;
  wire n6271;
  wire [3:0] n6272;
  reg [2:0] n6275;
  reg [3:0] n6278;
  reg [2:0] n6280;
  reg [3:0] n6283;
  reg [3:0] n6285;
  reg n6288;
  reg n6291;
  reg [2:0] n6294;
  reg n6297;
  reg n6301;
  reg n6305;
  wire n6307;
  wire n6309;
  wire n6310;
  wire n6312;
  wire n6313;
  wire n6315;
  wire n6316;
  wire n6318;
  wire n6320;
  wire n6321;
  wire n6323;
  wire n6324;
  wire n6326;
  wire n6327;
  wire n6329;
  wire n6330;
  wire n6332;
  wire n6333;
  wire n6335;
  wire n6336;
  wire n6338;
  wire n6339;
  wire n6341;
  wire n6343;
  wire n6344;
  wire n6346;
  wire n6347;
  wire n6349;
  wire n6350;
  wire n6352;
  wire n6354;
  wire n6355;
  wire n6357;
  wire n6359;
  wire n6360;
  wire [30:0] n6361;
  wire n6363;
  wire [1:0] n6365;
  wire [30:0] n6366;
  wire [1:0] n6367;
  wire n6370;
  wire n6372;
  wire n6373;
  wire n6375;
  wire n6376;
  reg n6378;
  reg [1:0] n6380;
  reg n6383;
  wire n6385;
  wire [1:0] n6387;
  wire [30:0] n6388;
  wire [1:0] n6389;
  wire n6392;
  wire n6394;
  wire n6395;
  wire n6397;
  wire n6398;
  reg n6400;
  reg [1:0] n6402;
  reg n6405;
  wire n6407;
  wire [2:0] n6408;
  reg [2:0] n6410;
  reg n6414;
  reg [2:0] n6416;
  reg n6418;
  reg [1:0] n6420;
  reg n6422;
  reg [3:0] n6425;
  reg n6429;
  reg [1:0] n6432;
  reg n6436;
  reg n6440;
  wire n6442;
  wire n6444;
  wire n6445;
  wire n6447;
  wire n6448;
  wire n6450;
  wire n6451;
  wire [30:0] n6452;
  wire n6454;
  wire [1:0] n6456;
  wire [30:0] n6457;
  wire [1:0] n6458;
  wire n6461;
  wire n6463;
  wire n6464;
  wire n6466;
  wire n6467;
  reg n6469;
  reg [1:0] n6471;
  reg n6474;
  wire n6476;
  wire [1:0] n6478;
  wire [30:0] n6479;
  wire [1:0] n6480;
  wire n6482;
  wire n6484;
  wire n6485;
  wire n6487;
  wire n6488;
  reg n6491;
  reg [1:0] n6493;
  reg n6496;
  wire n6498;
  wire [2:0] n6499;
  reg [2:0] n6501;
  reg n6505;
  reg [2:0] n6507;
  reg n6509;
  reg [1:0] n6511;
  reg n6513;
  reg [3:0] n6516;
  reg n6520;
  reg [1:0] n6523;
  reg n6527;
  reg n6531;
  wire n6533;
  wire n6535;
  wire n6536;
  wire n6538;
  wire n6539;
  wire n6541;
  wire n6542;
  wire [30:0] n6543;
  wire n6545;
  wire n6549;
  wire n6551;
  wire n6553;
  wire [3:0] n6554;
  reg [2:0] n6556;
  reg n6559;
  reg [2:0] n6561;
  reg [2:0] n6563;
  reg [3:0] n6565;
  reg n6568;
  reg [2:0] n6572;
  reg n6575;
  reg n6578;
  reg n6581;
  reg n6584;
  wire n6586;
  wire [30:0] n6587;
  wire n6589;
  wire n6593;
  wire n6595;
  wire n6597;
  wire [3:0] n6598;
  reg [2:0] n6600;
  reg n6603;
  reg [2:0] n6605;
  reg [2:0] n6607;
  reg [3:0] n6609;
  reg n6612;
  reg [2:0] n6616;
  reg n6619;
  reg n6622;
  reg n6625;
  reg n6628;
  wire n6630;
  wire [30:0] n6631;
  wire n6633;
  wire n6635;
  wire n6637;
  wire [2:0] n6638;
  reg [3:0] n6642;
  reg [2:0] n6646;
  reg n6649;
  reg n6652;
  reg n6655;
  reg n6658;
  wire n6660;
  wire n6662;
  wire n6663;
  wire n6665;
  wire n6666;
  wire n6668;
  wire n6669;
  wire n6671;
  wire n6672;
  wire n6674;
  wire n6675;
  wire n6677;
  wire n6678;
  wire n6680;
  wire n6681;
  wire [30:0] n6682;
  wire n6684;
  wire [2:0] n6685;
  wire n6687;
  wire [2:0] n6688;
  wire n6691;
  wire [2:0] n6693;
  wire n6695;
  wire [1:0] n6696;
  reg n6698;
  reg [2:0] n6700;
  reg [2:0] n6703;
  reg n6706;
  reg n6709;
  reg [1:0] n6712;
  wire n6714;
  wire n6716;
  wire n6717;
  wire n6719;
  wire n6720;
  wire n6722;
  wire n6723;
  wire n6725;
  wire n6726;
  wire n6728;
  wire n6729;
  wire n6731;
  wire n6732;
  wire n6734;
  wire n6735;
  wire [30:0] n6736;
  wire [2:0] n6737;
  wire [2:0] n6738;
  wire n6740;
  wire n6743;
  wire n6745;
  wire n6747;
  wire [1:0] n6748;
  reg [2:0] n6750;
  reg n6752;
  reg [2:0] n6755;
  reg n6758;
  reg [1:0] n6761;
  reg n6764;
  wire n6766;
  wire n6768;
  wire n6769;
  wire n6771;
  wire n6772;
  wire n6774;
  wire n6775;
  wire n6777;
  wire n6778;
  wire n6780;
  wire n6781;
  wire n6783;
  wire n6784;
  wire n6786;
  wire n6787;
  wire [30:0] n6788;
  wire n6789;
  wire n6791;
  wire n6793;
  wire n6794;
  wire n6795;
  wire [3:0] n6798;
  wire n6800;
  wire n6802;
  wire [3:0] n6803;
  reg [2:0] n6806;
  wire [2:0] n6807;
  reg [2:0] n6809;
  wire n6810;
  reg n6812;
  reg n6815;
  reg [3:0] n6818;
  reg [3:0] n6822;
  reg [3:0] n6824;
  reg n6827;
  reg [2:0] n6831;
  reg n6834;
  reg n6837;
  reg [1:0] n6840;
  reg n6843;
  reg n6846;
  wire n6848;
  wire n6850;
  wire n6851;
  wire n6853;
  wire n6854;
  wire n6856;
  wire n6857;
  wire [30:0] n6858;
  wire n6860;
  wire n6861;
  wire n6863;
  wire n6864;
  wire n6865;
  wire [3:0] n6868;
  wire n6870;
  wire n6872;
  wire [3:0] n6873;
  reg [2:0] n6876;
  wire [2:0] n6877;
  reg [2:0] n6879;
  wire n6880;
  reg n6882;
  reg n6885;
  reg [3:0] n6888;
  reg [3:0] n6892;
  reg [3:0] n6894;
  reg n6897;
  reg [2:0] n6901;
  reg n6904;
  reg n6907;
  reg [1:0] n6910;
  reg n6913;
  reg n6916;
  wire n6918;
  wire n6920;
  wire n6921;
  wire n6923;
  wire n6924;
  wire n6926;
  wire n6927;
  wire [30:0] n6928;
  wire [2:0] n6929;
  wire n6932;
  wire n6935;
  wire [1:0] n6936;
  reg [2:0] n6938;
  reg [2:0] n6940;
  reg n6942;
  reg n6945;
  reg n6948;
  reg n6952;
  wire [2:0] n6955;
  wire [2:0] n6957;
  wire [3:0] n6958;
  wire [3:0] n6960;
  wire n6962;
  wire n6964;
  wire n6966;
  wire n6968;
  wire n6970;
  wire n6971;
  wire n6973;
  wire n6974;
  wire n6976;
  wire n6977;
  wire [30:0] n6978;
  wire n6980;
  wire [3:0] n6983;
  wire [3:0] n6985;
  wire n6988;
  wire n6991;
  wire [1:0] n6992;
  reg [2:0] n6994;
  reg [2:0] n6996;
  reg [3:0] n6998;
  reg n7001;
  reg n7005;
  wire [2:0] n7008;
  wire [2:0] n7009;
  wire [2:0] n7011;
  wire [3:0] n7013;
  wire n7015;
  wire n7017;
  wire n7019;
  wire n7021;
  wire n7022;
  wire [24:0] n7023;
  reg [2:0] n7039;
  reg [2:0] n7045;
  reg n7048;
  reg n7051;
  wire [2:0] n7052;
  wire [2:0] n7053;
  wire [2:0] n7054;
  reg [2:0] n7057;
  wire n7058;
  wire n7059;
  wire n7060;
  reg n7063;
  reg n7066;
  reg n7070;
  wire [2:0] n7072;
  wire [2:0] n7073;
  reg [2:0] n7076;
  wire n7078;
  wire n7079;
  reg n7082;
  wire n7083;
  wire n7084;
  wire n7085;
  wire n7087;
  wire n7088;
  wire n7089;
  wire n7090;
  wire n7091;
  wire n7092;
  wire n7093;
  reg n7096;
  wire [1:0] n7097;
  wire [1:0] n7098;
  wire [1:0] n7099;
  wire [1:0] n7101;
  wire [1:0] n7102;
  wire [1:0] n7103;
  wire [1:0] n7104;
  wire [1:0] n7105;
  wire [1:0] n7106;
  wire [1:0] n7107;
  reg [1:0] n7110;
  wire n7111;
  wire n7112;
  wire n7113;
  wire n7115;
  wire n7116;
  wire n7117;
  wire n7118;
  reg n7121;
  reg [3:0] n7124;
  reg n7128;
  reg n7131;
  reg [2:0] n7134;
  reg n7137;
  reg n7140;
  reg n7143;
  reg n7146;
  reg [2:0] n7153;
  reg n7156;
  reg n7159;
  reg n7162;
  reg n7165;
  reg n7168;
  reg n7171;
  reg n7174;
  reg n7177;
  reg n7180;
  reg [1:0] n7183;
  reg [1:0] n7189;
  reg n7192;
  reg n7195;
  reg n7198;
  wire [1:0] n7199;
  reg [2:0] n7200;
  reg [2:0] n7202;
  reg [1:0] n7204;
  reg n7207;
  reg n7210;
  wire [1:0] n7212;
  reg [1:0] n7214;
  wire n7215;
  wire n7216;
  reg n7218;
  wire n7219;
  reg n7221;
  reg n7225;
  reg n7228;
  reg [2:0] n7230;
  reg n7232;
  wire n7235;
  reg n7236;
  wire [1:0] n7237;
  reg [1:0] n7238;
  reg n7240;
  reg [3:0] n7244;
  reg n7245;
  reg n7248;
  reg n7251;
  reg n7254;
  reg [2:0] n7256;
  reg n7259;
  reg n7262;
  reg n7265;
  reg n7268;
  reg n7271;
  reg n7274;
  reg n7277;
  reg n7280;
  reg n7283;
  reg [2:0] n7286;
  reg n7289;
  reg n7292;
  reg n7295;
  reg n7298;
  reg n7301;
  reg n7304;
  reg n7307;
  reg n7310;
  reg n7313;
  reg n7316;
  reg n7319;
  reg n7322;
  reg n7325;
  reg n7328;
  reg n7331;
  reg n7334;
  reg n7337;
  reg [1:0] n7340;
  reg n7343;
  reg n7346;
  reg [1:0] n7349;
  reg n7352;
  reg n7355;
  reg n7357;
  reg n7360;
  reg n7363;
  wire n7366;
  wire n7368;
  wire n7370;
  wire n7371;
  wire [2:0] n7373;
  wire n7375;
  wire n7377;
  wire n7378;
  wire n7379;
  wire n7381;
  wire n7383;
  wire n7384;
  wire n7385;
  wire n7387;
  wire n7389;
  wire [2:0] n7391;
  wire n7394;
  wire n7396;
  wire n7397;
  wire n7399;
  wire n7401;
  wire [2:0] n7403;
  wire n7404;
  wire [3:0] n7405;
  wire [3:0] n7406;
  wire [3:0] n7407;
  wire n7408;
  wire n7409;
  localparam n7411 = 1'b0;
  localparam n7412 = 1'b0;
  wire [3:0] n7413;
  wire [3:0] n7414;
  assign mcycles = n7200; //(module output)
  assign tstates = n7403; //(module output)
  assign prefix = n7204; //(module output)
  assign inc_pc = n7399; //(module output)
  assign inc_wz = n7210; //(module output)
  assign incdec_16 = n7413; //(module output)
  assign read_to_reg = n7225; //(module output)
  assign read_to_acc = n7228; //(module output)
  assign set_busa_to = n7414; //(module output)
  assign set_busb_to = n7407; //(module output)
  assign alu_op = n7244; //(module output)
  assign save_alu = n7245; //(module output)
  assign rot_akku = n7248; //(module output)
  assign preservec = n7251; //(module output)
  assign arith16 = n7254; //(module output)
  assign set_addr_to = n7391; //(module output)
  assign iorq = n7259; //(module output)
  assign jump = n7262; //(module output)
  assign jumpe = n7265; //(module output)
  assign jumpxy = n7268; //(module output)
  assign call = n7271; //(module output)
  assign rstp = n7274; //(module output)
  assign ldz = n7277; //(module output)
  assign ldw = n7280; //(module output)
  assign ldsphl = n7283; //(module output)
  assign ldhlsp = n7411; //(module output)
  assign addspdd = n7412; //(module output)
  assign special_ld = n7286; //(module output)
  assign exchangedh = n7289; //(module output)
  assign exchangerp = n7292; //(module output)
  assign exchangeaf = n7295; //(module output)
  assign exchangers = n7298; //(module output)
  assign i_djnz = n7301; //(module output)
  assign i_cpl = n7304; //(module output)
  assign i_ccf = n7307; //(module output)
  assign i_scf = n7310; //(module output)
  assign i_retn = n7313; //(module output)
  assign i_bt = n7316; //(module output)
  assign i_bc = n7319; //(module output)
  assign i_btr = n7322; //(module output)
  assign i_rld = n7325; //(module output)
  assign i_rrd = n7328; //(module output)
  assign i_inrc = n7331; //(module output)
  assign i_mulub = n7334; //(module output)
  assign i_mulu = n7337; //(module output)
  assign setwz = n7340; //(module output)
  assign setdi = n7343; //(module output)
  assign setei = n7346; //(module output)
  assign imode = n7349; //(module output)
  assign halt = n7352; //(module output)
  assign noread = n7409; //(module output)
  assign write = n7357; //(module output)
  assign no_pc = n7381; //(module output)
  assign xybit_undoc = n7363; //(module output)
  /* T80_MCode.vhd:199:26  */
  assign n2215 = ir[5:3]; // extract
  /* T80_MCode.vhd:200:26  */
  assign n2216 = ir[2:0]; // extract
  /* T80_MCode.vhd:201:28  */
  assign n2217 = ir[5:4]; // extract
  /* T80_MCode.vhd:205:27  */
  assign n2219 = mcycle == 3'b001;
  /* T80_MCode.vhd:205:17  */
  assign n2222 = n2219 ? 3'b100 : 3'b011;
  /* T80_MCode.vhd:218:35  */
  assign n2223 = ir[5:3]; // extract
  /* T80_MCode.vhd:218:31  */
  assign n2225 = {1'b0, n2223};
  /* T80_MCode.vhd:274:17  */
  assign n2227 = ir == 8'b01000000;
  /* T80_MCode.vhd:274:32  */
  assign n2229 = ir == 8'b01000001;
  /* T80_MCode.vhd:274:32  */
  assign n2230 = n2227 | n2229;
  /* T80_MCode.vhd:274:43  */
  assign n2232 = ir == 8'b01000010;
  /* T80_MCode.vhd:274:43  */
  assign n2233 = n2230 | n2232;
  /* T80_MCode.vhd:274:54  */
  assign n2235 = ir == 8'b01000011;
  /* T80_MCode.vhd:274:54  */
  assign n2236 = n2233 | n2235;
  /* T80_MCode.vhd:274:65  */
  assign n2238 = ir == 8'b01000100;
  /* T80_MCode.vhd:274:65  */
  assign n2239 = n2236 | n2238;
  /* T80_MCode.vhd:274:76  */
  assign n2241 = ir == 8'b01000101;
  /* T80_MCode.vhd:274:76  */
  assign n2242 = n2239 | n2241;
  /* T80_MCode.vhd:274:87  */
  assign n2244 = ir == 8'b01000111;
  /* T80_MCode.vhd:274:87  */
  assign n2245 = n2242 | n2244;
  /* T80_MCode.vhd:275:25  */
  assign n2247 = ir == 8'b01001000;
  /* T80_MCode.vhd:275:25  */
  assign n2248 = n2245 | n2247;
  /* T80_MCode.vhd:275:36  */
  assign n2250 = ir == 8'b01001001;
  /* T80_MCode.vhd:275:36  */
  assign n2251 = n2248 | n2250;
  /* T80_MCode.vhd:275:47  */
  assign n2253 = ir == 8'b01001010;
  /* T80_MCode.vhd:275:47  */
  assign n2254 = n2251 | n2253;
  /* T80_MCode.vhd:275:58  */
  assign n2256 = ir == 8'b01001011;
  /* T80_MCode.vhd:275:58  */
  assign n2257 = n2254 | n2256;
  /* T80_MCode.vhd:275:69  */
  assign n2259 = ir == 8'b01001100;
  /* T80_MCode.vhd:275:69  */
  assign n2260 = n2257 | n2259;
  /* T80_MCode.vhd:275:80  */
  assign n2262 = ir == 8'b01001101;
  /* T80_MCode.vhd:275:80  */
  assign n2263 = n2260 | n2262;
  /* T80_MCode.vhd:275:91  */
  assign n2265 = ir == 8'b01001111;
  /* T80_MCode.vhd:275:91  */
  assign n2266 = n2263 | n2265;
  /* T80_MCode.vhd:276:25  */
  assign n2268 = ir == 8'b01010000;
  /* T80_MCode.vhd:276:25  */
  assign n2269 = n2266 | n2268;
  /* T80_MCode.vhd:276:36  */
  assign n2271 = ir == 8'b01010001;
  /* T80_MCode.vhd:276:36  */
  assign n2272 = n2269 | n2271;
  /* T80_MCode.vhd:276:47  */
  assign n2274 = ir == 8'b01010010;
  /* T80_MCode.vhd:276:47  */
  assign n2275 = n2272 | n2274;
  /* T80_MCode.vhd:276:58  */
  assign n2277 = ir == 8'b01010011;
  /* T80_MCode.vhd:276:58  */
  assign n2278 = n2275 | n2277;
  /* T80_MCode.vhd:276:69  */
  assign n2280 = ir == 8'b01010100;
  /* T80_MCode.vhd:276:69  */
  assign n2281 = n2278 | n2280;
  /* T80_MCode.vhd:276:80  */
  assign n2283 = ir == 8'b01010101;
  /* T80_MCode.vhd:276:80  */
  assign n2284 = n2281 | n2283;
  /* T80_MCode.vhd:276:91  */
  assign n2286 = ir == 8'b01010111;
  /* T80_MCode.vhd:276:91  */
  assign n2287 = n2284 | n2286;
  /* T80_MCode.vhd:277:25  */
  assign n2289 = ir == 8'b01011000;
  /* T80_MCode.vhd:277:25  */
  assign n2290 = n2287 | n2289;
  /* T80_MCode.vhd:277:36  */
  assign n2292 = ir == 8'b01011001;
  /* T80_MCode.vhd:277:36  */
  assign n2293 = n2290 | n2292;
  /* T80_MCode.vhd:277:47  */
  assign n2295 = ir == 8'b01011010;
  /* T80_MCode.vhd:277:47  */
  assign n2296 = n2293 | n2295;
  /* T80_MCode.vhd:277:58  */
  assign n2298 = ir == 8'b01011011;
  /* T80_MCode.vhd:277:58  */
  assign n2299 = n2296 | n2298;
  /* T80_MCode.vhd:277:69  */
  assign n2301 = ir == 8'b01011100;
  /* T80_MCode.vhd:277:69  */
  assign n2302 = n2299 | n2301;
  /* T80_MCode.vhd:277:80  */
  assign n2304 = ir == 8'b01011101;
  /* T80_MCode.vhd:277:80  */
  assign n2305 = n2302 | n2304;
  /* T80_MCode.vhd:277:91  */
  assign n2307 = ir == 8'b01011111;
  /* T80_MCode.vhd:277:91  */
  assign n2308 = n2305 | n2307;
  /* T80_MCode.vhd:278:25  */
  assign n2310 = ir == 8'b01100000;
  /* T80_MCode.vhd:278:25  */
  assign n2311 = n2308 | n2310;
  /* T80_MCode.vhd:278:36  */
  assign n2313 = ir == 8'b01100001;
  /* T80_MCode.vhd:278:36  */
  assign n2314 = n2311 | n2313;
  /* T80_MCode.vhd:278:47  */
  assign n2316 = ir == 8'b01100010;
  /* T80_MCode.vhd:278:47  */
  assign n2317 = n2314 | n2316;
  /* T80_MCode.vhd:278:58  */
  assign n2319 = ir == 8'b01100011;
  /* T80_MCode.vhd:278:58  */
  assign n2320 = n2317 | n2319;
  /* T80_MCode.vhd:278:69  */
  assign n2322 = ir == 8'b01100100;
  /* T80_MCode.vhd:278:69  */
  assign n2323 = n2320 | n2322;
  /* T80_MCode.vhd:278:80  */
  assign n2325 = ir == 8'b01100101;
  /* T80_MCode.vhd:278:80  */
  assign n2326 = n2323 | n2325;
  /* T80_MCode.vhd:278:91  */
  assign n2328 = ir == 8'b01100111;
  /* T80_MCode.vhd:278:91  */
  assign n2329 = n2326 | n2328;
  /* T80_MCode.vhd:279:25  */
  assign n2331 = ir == 8'b01101000;
  /* T80_MCode.vhd:279:25  */
  assign n2332 = n2329 | n2331;
  /* T80_MCode.vhd:279:36  */
  assign n2334 = ir == 8'b01101001;
  /* T80_MCode.vhd:279:36  */
  assign n2335 = n2332 | n2334;
  /* T80_MCode.vhd:279:47  */
  assign n2337 = ir == 8'b01101010;
  /* T80_MCode.vhd:279:47  */
  assign n2338 = n2335 | n2337;
  /* T80_MCode.vhd:279:58  */
  assign n2340 = ir == 8'b01101011;
  /* T80_MCode.vhd:279:58  */
  assign n2341 = n2338 | n2340;
  /* T80_MCode.vhd:279:69  */
  assign n2343 = ir == 8'b01101100;
  /* T80_MCode.vhd:279:69  */
  assign n2344 = n2341 | n2343;
  /* T80_MCode.vhd:279:80  */
  assign n2346 = ir == 8'b01101101;
  /* T80_MCode.vhd:279:80  */
  assign n2347 = n2344 | n2346;
  /* T80_MCode.vhd:279:91  */
  assign n2349 = ir == 8'b01101111;
  /* T80_MCode.vhd:279:91  */
  assign n2350 = n2347 | n2349;
  /* T80_MCode.vhd:280:25  */
  assign n2352 = ir == 8'b01111000;
  /* T80_MCode.vhd:280:25  */
  assign n2353 = n2350 | n2352;
  /* T80_MCode.vhd:280:36  */
  assign n2355 = ir == 8'b01111001;
  /* T80_MCode.vhd:280:36  */
  assign n2356 = n2353 | n2355;
  /* T80_MCode.vhd:280:47  */
  assign n2358 = ir == 8'b01111010;
  /* T80_MCode.vhd:280:47  */
  assign n2359 = n2356 | n2358;
  /* T80_MCode.vhd:280:58  */
  assign n2361 = ir == 8'b01111011;
  /* T80_MCode.vhd:280:58  */
  assign n2362 = n2359 | n2361;
  /* T80_MCode.vhd:280:69  */
  assign n2364 = ir == 8'b01111100;
  /* T80_MCode.vhd:280:69  */
  assign n2365 = n2362 | n2364;
  /* T80_MCode.vhd:280:80  */
  assign n2367 = ir == 8'b01111101;
  /* T80_MCode.vhd:280:80  */
  assign n2368 = n2365 | n2367;
  /* T80_MCode.vhd:280:91  */
  assign n2370 = ir == 8'b01111111;
  /* T80_MCode.vhd:280:91  */
  assign n2371 = n2368 | n2370;
  /* T80_MCode.vhd:289:30  */
  assign n2372 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:290:25  */
  assign n2374 = n2372 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:289:25  */
  always @*
    case (n2374)
      1'b1: n2377 = 1'b1;
      default: n2377 = 1'b0;
    endcase
  /* T80_MCode.vhd:289:25  */
  always @*
    case (n2374)
      1'b1: n2380 = 1'b1;
      default: n2380 = 1'b0;
    endcase
  /* T80_MCode.vhd:289:25  */
  always @*
    case (n2374)
      1'b1: n2382 = n2215;
      default: n2382 = 3'b000;
    endcase
  /* T80_MCode.vhd:286:17  */
  assign n2384 = ir == 8'b00000110;
  /* T80_MCode.vhd:286:32  */
  assign n2386 = ir == 8'b00001110;
  /* T80_MCode.vhd:286:32  */
  assign n2387 = n2384 | n2386;
  /* T80_MCode.vhd:286:43  */
  assign n2389 = ir == 8'b00010110;
  /* T80_MCode.vhd:286:43  */
  assign n2390 = n2387 | n2389;
  /* T80_MCode.vhd:286:54  */
  assign n2392 = ir == 8'b00011110;
  /* T80_MCode.vhd:286:54  */
  assign n2393 = n2390 | n2392;
  /* T80_MCode.vhd:286:65  */
  assign n2395 = ir == 8'b00100110;
  /* T80_MCode.vhd:286:65  */
  assign n2396 = n2393 | n2395;
  /* T80_MCode.vhd:286:76  */
  assign n2398 = ir == 8'b00101110;
  /* T80_MCode.vhd:286:76  */
  assign n2399 = n2396 | n2398;
  /* T80_MCode.vhd:286:87  */
  assign n2401 = ir == 8'b00111110;
  /* T80_MCode.vhd:286:87  */
  assign n2402 = n2399 | n2401;
  /* T80_MCode.vhd:299:30  */
  assign n2403 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:300:25  */
  assign n2405 = n2403 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:302:25  */
  assign n2407 = n2403 == 31'b0000000000000000000000000000010;
  assign n2408 = {n2407, n2405};
  /* T80_MCode.vhd:299:25  */
  always @*
    case (n2408)
      2'b10: n2411 = 1'b1;
      2'b01: n2411 = 1'b0;
      default: n2411 = 1'b0;
    endcase
  /* T80_MCode.vhd:299:25  */
  always @*
    case (n2408)
      2'b10: n2413 = n2215;
      2'b01: n2413 = 3'b000;
      default: n2413 = 3'b000;
    endcase
  /* T80_MCode.vhd:299:25  */
  always @*
    case (n2408)
      2'b10: n2416 = 3'b111;
      2'b01: n2416 = 3'b010;
      default: n2416 = 3'b111;
    endcase
  /* T80_MCode.vhd:296:17  */
  assign n2418 = ir == 8'b01000110;
  /* T80_MCode.vhd:296:32  */
  assign n2420 = ir == 8'b01001110;
  /* T80_MCode.vhd:296:32  */
  assign n2421 = n2418 | n2420;
  /* T80_MCode.vhd:296:43  */
  assign n2423 = ir == 8'b01010110;
  /* T80_MCode.vhd:296:43  */
  assign n2424 = n2421 | n2423;
  /* T80_MCode.vhd:296:54  */
  assign n2426 = ir == 8'b01011110;
  /* T80_MCode.vhd:296:54  */
  assign n2427 = n2424 | n2426;
  /* T80_MCode.vhd:296:65  */
  assign n2429 = ir == 8'b01100110;
  /* T80_MCode.vhd:296:65  */
  assign n2430 = n2427 | n2429;
  /* T80_MCode.vhd:296:76  */
  assign n2432 = ir == 8'b01101110;
  /* T80_MCode.vhd:296:76  */
  assign n2433 = n2430 | n2432;
  /* T80_MCode.vhd:296:87  */
  assign n2435 = ir == 8'b01111110;
  /* T80_MCode.vhd:296:87  */
  assign n2436 = n2433 | n2435;
  /* T80_MCode.vhd:310:30  */
  assign n2437 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:311:25  */
  assign n2440 = n2437 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:315:25  */
  assign n2442 = n2437 == 31'b0000000000000000000000000000010;
  assign n2443 = {n2442, n2440};
  /* T80_MCode.vhd:310:25  */
  always @*
    case (n2443)
      2'b10: n2445 = 3'b000;
      2'b01: n2445 = n2216;
      default: n2445 = 3'b000;
    endcase
  /* T80_MCode.vhd:310:25  */
  always @*
    case (n2443)
      2'b10: n2447 = 1'b0;
      2'b01: n2447 = 1'b0;
      default: n2447 = 1'b0;
    endcase
  /* T80_MCode.vhd:310:25  */
  always @*
    case (n2443)
      2'b10: n2450 = 3'b111;
      2'b01: n2450 = 3'b010;
      default: n2450 = 3'b111;
    endcase
  /* T80_MCode.vhd:310:25  */
  always @*
    case (n2443)
      2'b10: n2453 = 1'b1;
      2'b01: n2453 = 1'b0;
      default: n2453 = 1'b0;
    endcase
  /* T80_MCode.vhd:307:17  */
  assign n2455 = ir == 8'b01110000;
  /* T80_MCode.vhd:307:32  */
  assign n2457 = ir == 8'b01110001;
  /* T80_MCode.vhd:307:32  */
  assign n2458 = n2455 | n2457;
  /* T80_MCode.vhd:307:43  */
  assign n2460 = ir == 8'b01110010;
  /* T80_MCode.vhd:307:43  */
  assign n2461 = n2458 | n2460;
  /* T80_MCode.vhd:307:54  */
  assign n2463 = ir == 8'b01110011;
  /* T80_MCode.vhd:307:54  */
  assign n2464 = n2461 | n2463;
  /* T80_MCode.vhd:307:65  */
  assign n2466 = ir == 8'b01110100;
  /* T80_MCode.vhd:307:65  */
  assign n2467 = n2464 | n2466;
  /* T80_MCode.vhd:307:76  */
  assign n2469 = ir == 8'b01110101;
  /* T80_MCode.vhd:307:76  */
  assign n2470 = n2467 | n2469;
  /* T80_MCode.vhd:307:87  */
  assign n2472 = ir == 8'b01110111;
  /* T80_MCode.vhd:307:87  */
  assign n2473 = n2470 | n2472;
  /* T80_MCode.vhd:322:30  */
  assign n2474 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:323:25  */
  assign n2477 = n2474 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:328:25  */
  assign n2479 = n2474 == 31'b0000000000000000000000000000011;
  assign n2480 = {n2479, n2477};
  /* T80_MCode.vhd:322:25  */
  always @*
    case (n2480)
      2'b10: n2483 = 1'b0;
      2'b01: n2483 = 1'b1;
      default: n2483 = 1'b0;
    endcase
  /* T80_MCode.vhd:322:25  */
  always @*
    case (n2480)
      2'b10: n2485 = 3'b000;
      2'b01: n2485 = n2216;
      default: n2485 = 3'b000;
    endcase
  /* T80_MCode.vhd:322:25  */
  always @*
    case (n2480)
      2'b10: n2487 = 1'b0;
      2'b01: n2487 = 1'b0;
      default: n2487 = 1'b0;
    endcase
  /* T80_MCode.vhd:322:25  */
  always @*
    case (n2480)
      2'b10: n2490 = 3'b111;
      2'b01: n2490 = 3'b010;
      default: n2490 = 3'b111;
    endcase
  /* T80_MCode.vhd:322:25  */
  always @*
    case (n2480)
      2'b10: n2493 = 1'b1;
      2'b01: n2493 = 1'b0;
      default: n2493 = 1'b0;
    endcase
  /* T80_MCode.vhd:319:17  */
  assign n2495 = ir == 8'b00110110;
  /* T80_MCode.vhd:335:30  */
  assign n2496 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:336:25  */
  assign n2498 = n2496 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:338:25  */
  assign n2500 = n2496 == 31'b0000000000000000000000000000010;
  assign n2501 = {n2500, n2498};
  /* T80_MCode.vhd:335:25  */
  always @*
    case (n2501)
      2'b10: n2504 = 1'b1;
      2'b01: n2504 = 1'b0;
      default: n2504 = 1'b0;
    endcase
  /* T80_MCode.vhd:335:25  */
  always @*
    case (n2501)
      2'b10: n2507 = 3'b111;
      2'b01: n2507 = 3'b000;
      default: n2507 = 3'b111;
    endcase
  /* T80_MCode.vhd:332:17  */
  assign n2509 = ir == 8'b00001010;
  /* T80_MCode.vhd:345:30  */
  assign n2510 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:346:25  */
  assign n2512 = n2510 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:348:25  */
  assign n2514 = n2510 == 31'b0000000000000000000000000000010;
  assign n2515 = {n2514, n2512};
  /* T80_MCode.vhd:345:25  */
  always @*
    case (n2515)
      2'b10: n2518 = 1'b1;
      2'b01: n2518 = 1'b0;
      default: n2518 = 1'b0;
    endcase
  /* T80_MCode.vhd:345:25  */
  always @*
    case (n2515)
      2'b10: n2521 = 3'b111;
      2'b01: n2521 = 3'b001;
      default: n2521 = 3'b111;
    endcase
  /* T80_MCode.vhd:342:17  */
  assign n2523 = ir == 8'b00011010;
  /* T80_MCode.vhd:367:38  */
  assign n2524 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:368:33  */
  assign n2526 = n2524 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:371:33  */
  assign n2528 = n2524 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:374:33  */
  assign n2530 = n2524 == 31'b0000000000000000000000000000100;
  assign n2531 = {n2530, n2528, n2526};
  /* T80_MCode.vhd:367:33  */
  always @*
    case (n2531)
      3'b100: n2535 = 1'b0;
      3'b010: n2535 = 1'b1;
      3'b001: n2535 = 1'b1;
      default: n2535 = 1'b0;
    endcase
  /* T80_MCode.vhd:367:33  */
  always @*
    case (n2531)
      3'b100: n2538 = 1'b1;
      3'b010: n2538 = 1'b0;
      3'b001: n2538 = 1'b0;
      default: n2538 = 1'b0;
    endcase
  /* T80_MCode.vhd:367:33  */
  always @*
    case (n2531)
      3'b100: n2541 = 3'b111;
      3'b010: n2541 = 3'b110;
      3'b001: n2541 = 3'b111;
      default: n2541 = 3'b111;
    endcase
  /* T80_MCode.vhd:367:33  */
  always @*
    case (n2531)
      3'b100: n2544 = 1'b0;
      3'b010: n2544 = 1'b0;
      3'b001: n2544 = 1'b1;
      default: n2544 = 1'b0;
    endcase
  /* T80_MCode.vhd:352:17  */
  assign n2546 = ir == 8'b00111010;
  /* T80_MCode.vhd:382:30  */
  assign n2547 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:383:25  */
  assign n2549 = n2547 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:387:25  */
  assign n2551 = n2547 == 31'b0000000000000000000000000000010;
  assign n2552 = {n2551, n2549};
  /* T80_MCode.vhd:382:25  */
  always @*
    case (n2552)
      2'b10: n2555 = 4'b0000;
      2'b01: n2555 = 4'b0111;
      default: n2555 = 4'b0000;
    endcase
  /* T80_MCode.vhd:382:25  */
  always @*
    case (n2552)
      2'b10: n2558 = 3'b111;
      2'b01: n2558 = 3'b000;
      default: n2558 = 3'b111;
    endcase
  /* T80_MCode.vhd:382:25  */
  always @*
    case (n2552)
      2'b10: n2561 = 2'b00;
      2'b01: n2561 = 2'b10;
      default: n2561 = 2'b00;
    endcase
  /* T80_MCode.vhd:382:25  */
  always @*
    case (n2552)
      2'b10: n2564 = 1'b1;
      2'b01: n2564 = 1'b0;
      default: n2564 = 1'b0;
    endcase
  /* T80_MCode.vhd:379:17  */
  assign n2566 = ir == 8'b00000010;
  /* T80_MCode.vhd:394:30  */
  assign n2567 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:395:25  */
  assign n2569 = n2567 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:399:25  */
  assign n2571 = n2567 == 31'b0000000000000000000000000000010;
  assign n2572 = {n2571, n2569};
  /* T80_MCode.vhd:394:25  */
  always @*
    case (n2572)
      2'b10: n2575 = 4'b0000;
      2'b01: n2575 = 4'b0111;
      default: n2575 = 4'b0000;
    endcase
  /* T80_MCode.vhd:394:25  */
  always @*
    case (n2572)
      2'b10: n2578 = 3'b111;
      2'b01: n2578 = 3'b001;
      default: n2578 = 3'b111;
    endcase
  /* T80_MCode.vhd:394:25  */
  always @*
    case (n2572)
      2'b10: n2581 = 2'b00;
      2'b01: n2581 = 2'b10;
      default: n2581 = 2'b00;
    endcase
  /* T80_MCode.vhd:394:25  */
  always @*
    case (n2572)
      2'b10: n2584 = 1'b1;
      2'b01: n2584 = 1'b0;
      default: n2584 = 1'b0;
    endcase
  /* T80_MCode.vhd:391:17  */
  assign n2586 = ir == 8'b00010010;
  /* T80_MCode.vhd:419:38  */
  assign n2587 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:420:33  */
  assign n2589 = n2587 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:423:33  */
  assign n2591 = n2587 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:428:33  */
  assign n2593 = n2587 == 31'b0000000000000000000000000000100;
  assign n2594 = {n2593, n2591, n2589};
  /* T80_MCode.vhd:419:33  */
  always @*
    case (n2594)
      3'b100: n2598 = 1'b0;
      3'b010: n2598 = 1'b1;
      3'b001: n2598 = 1'b1;
      default: n2598 = 1'b0;
    endcase
  /* T80_MCode.vhd:419:33  */
  always @*
    case (n2594)
      3'b100: n2601 = 4'b0000;
      3'b010: n2601 = 4'b0111;
      3'b001: n2601 = 4'b0000;
      default: n2601 = 4'b0000;
    endcase
  /* T80_MCode.vhd:419:33  */
  always @*
    case (n2594)
      3'b100: n2604 = 3'b111;
      3'b010: n2604 = 3'b110;
      3'b001: n2604 = 3'b111;
      default: n2604 = 3'b111;
    endcase
  /* T80_MCode.vhd:419:33  */
  always @*
    case (n2594)
      3'b100: n2607 = 1'b0;
      3'b010: n2607 = 1'b0;
      3'b001: n2607 = 1'b1;
      default: n2607 = 1'b0;
    endcase
  /* T80_MCode.vhd:419:33  */
  always @*
    case (n2594)
      3'b100: n2610 = 2'b00;
      3'b010: n2610 = 2'b10;
      3'b001: n2610 = 2'b00;
      default: n2610 = 2'b00;
    endcase
  /* T80_MCode.vhd:419:33  */
  always @*
    case (n2594)
      3'b100: n2613 = 1'b1;
      3'b010: n2613 = 1'b0;
      3'b001: n2613 = 1'b0;
      default: n2613 = 1'b0;
    endcase
  /* T80_MCode.vhd:403:17  */
  assign n2615 = ir == 8'b00110010;
  /* T80_MCode.vhd:438:30  */
  assign n2616 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:442:42  */
  assign n2618 = n2217 == 2'b11;
  assign n2620 = {n2217, 1'b1};
  /* T80_MCode.vhd:442:33  */
  assign n2622 = n2618 ? 3'b000 : n2620;
  /* T80_MCode.vhd:442:33  */
  assign n2625 = n2618 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:439:25  */
  assign n2627 = n2616 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:451:42  */
  assign n2629 = n2217 == 2'b11;
  assign n2631 = {n2217, 1'b0};
  /* T80_MCode.vhd:451:33  */
  assign n2633 = n2629 ? 3'b001 : n2631;
  /* T80_MCode.vhd:451:33  */
  assign n2636 = n2629 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:448:25  */
  assign n2638 = n2616 == 31'b0000000000000000000000000000011;
  assign n2639 = {n2638, n2627};
  /* T80_MCode.vhd:438:25  */
  always @*
    case (n2639)
      2'b10: n2643 = 1'b1;
      2'b01: n2643 = 1'b1;
      default: n2643 = 1'b0;
    endcase
  /* T80_MCode.vhd:438:25  */
  always @*
    case (n2639)
      2'b10: n2647 = 1'b1;
      2'b01: n2647 = 1'b1;
      default: n2647 = 1'b0;
    endcase
  /* T80_MCode.vhd:438:25  */
  always @*
    case (n2639)
      2'b10: n2649 = n2633;
      2'b01: n2649 = n2622;
      default: n2649 = 3'b000;
    endcase
  /* T80_MCode.vhd:438:25  */
  always @*
    case (n2639)
      2'b10: n2651 = n2636;
      2'b01: n2651 = n2625;
      default: n2651 = 1'b0;
    endcase
  /* T80_MCode.vhd:435:17  */
  assign n2653 = ir == 8'b00000001;
  /* T80_MCode.vhd:435:32  */
  assign n2655 = ir == 8'b00010001;
  /* T80_MCode.vhd:435:32  */
  assign n2656 = n2653 | n2655;
  /* T80_MCode.vhd:435:43  */
  assign n2658 = ir == 8'b00100001;
  /* T80_MCode.vhd:435:43  */
  assign n2659 = n2656 | n2658;
  /* T80_MCode.vhd:435:54  */
  assign n2661 = ir == 8'b00110001;
  /* T80_MCode.vhd:435:54  */
  assign n2662 = n2659 | n2661;
  /* T80_MCode.vhd:474:38  */
  assign n2663 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:475:33  */
  assign n2665 = n2663 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:478:33  */
  assign n2667 = n2663 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:482:33  */
  assign n2670 = n2663 == 31'b0000000000000000000000000000100;
  /* T80_MCode.vhd:487:33  */
  assign n2673 = n2663 == 31'b0000000000000000000000000000101;
  assign n2674 = {n2673, n2670, n2667, n2665};
  /* T80_MCode.vhd:474:33  */
  always @*
    case (n2674)
      4'b1000: n2678 = 1'b0;
      4'b0100: n2678 = 1'b0;
      4'b0010: n2678 = 1'b1;
      4'b0001: n2678 = 1'b1;
      default: n2678 = 1'b0;
    endcase
  /* T80_MCode.vhd:474:33  */
  always @*
    case (n2674)
      4'b1000: n2681 = 1'b0;
      4'b0100: n2681 = 1'b1;
      4'b0010: n2681 = 1'b0;
      4'b0001: n2681 = 1'b0;
      default: n2681 = 1'b0;
    endcase
  /* T80_MCode.vhd:474:33  */
  always @*
    case (n2674)
      4'b1000: n2685 = 1'b1;
      4'b0100: n2685 = 1'b1;
      4'b0010: n2685 = 1'b0;
      4'b0001: n2685 = 1'b0;
      default: n2685 = 1'b0;
    endcase
  /* T80_MCode.vhd:474:33  */
  always @*
    case (n2674)
      4'b1000: n2687 = 3'b100;
      4'b0100: n2687 = 3'b101;
      4'b0010: n2687 = 3'b000;
      4'b0001: n2687 = 3'b000;
      default: n2687 = 3'b000;
    endcase
  /* T80_MCode.vhd:474:33  */
  always @*
    case (n2674)
      4'b1000: n2691 = 3'b111;
      4'b0100: n2691 = 3'b110;
      4'b0010: n2691 = 3'b110;
      4'b0001: n2691 = 3'b111;
      default: n2691 = 3'b111;
    endcase
  /* T80_MCode.vhd:474:33  */
  always @*
    case (n2674)
      4'b1000: n2694 = 1'b0;
      4'b0100: n2694 = 1'b0;
      4'b0010: n2694 = 1'b0;
      4'b0001: n2694 = 1'b1;
      default: n2694 = 1'b0;
    endcase
  /* T80_MCode.vhd:474:33  */
  always @*
    case (n2674)
      4'b1000: n2697 = 1'b0;
      4'b0100: n2697 = 1'b0;
      4'b0010: n2697 = 1'b1;
      4'b0001: n2697 = 1'b0;
      default: n2697 = 1'b0;
    endcase
  /* T80_MCode.vhd:459:17  */
  assign n2699 = ir == 8'b00101010;
  /* T80_MCode.vhd:509:38  */
  assign n2700 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:510:33  */
  assign n2702 = n2700 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:513:33  */
  assign n2704 = n2700 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:518:33  */
  assign n2706 = n2700 == 31'b0000000000000000000000000000100;
  /* T80_MCode.vhd:523:33  */
  assign n2708 = n2700 == 31'b0000000000000000000000000000101;
  assign n2709 = {n2708, n2706, n2704, n2702};
  /* T80_MCode.vhd:509:33  */
  always @*
    case (n2709)
      4'b1000: n2713 = 1'b0;
      4'b0100: n2713 = 1'b0;
      4'b0010: n2713 = 1'b1;
      4'b0001: n2713 = 1'b1;
      default: n2713 = 1'b0;
    endcase
  /* T80_MCode.vhd:509:33  */
  always @*
    case (n2709)
      4'b1000: n2716 = 1'b0;
      4'b0100: n2716 = 1'b1;
      4'b0010: n2716 = 1'b0;
      4'b0001: n2716 = 1'b0;
      default: n2716 = 1'b0;
    endcase
  /* T80_MCode.vhd:509:33  */
  always @*
    case (n2709)
      4'b1000: n2720 = 4'b0000;
      4'b0100: n2720 = 4'b0100;
      4'b0010: n2720 = 4'b0101;
      4'b0001: n2720 = 4'b0000;
      default: n2720 = 4'b0000;
    endcase
  /* T80_MCode.vhd:509:33  */
  always @*
    case (n2709)
      4'b1000: n2724 = 3'b111;
      4'b0100: n2724 = 3'b110;
      4'b0010: n2724 = 3'b110;
      4'b0001: n2724 = 3'b111;
      default: n2724 = 3'b111;
    endcase
  /* T80_MCode.vhd:509:33  */
  always @*
    case (n2709)
      4'b1000: n2727 = 1'b0;
      4'b0100: n2727 = 1'b0;
      4'b0010: n2727 = 1'b0;
      4'b0001: n2727 = 1'b1;
      default: n2727 = 1'b0;
    endcase
  /* T80_MCode.vhd:509:33  */
  always @*
    case (n2709)
      4'b1000: n2730 = 1'b0;
      4'b0100: n2730 = 1'b0;
      4'b0010: n2730 = 1'b1;
      4'b0001: n2730 = 1'b0;
      default: n2730 = 1'b0;
    endcase
  /* T80_MCode.vhd:509:33  */
  always @*
    case (n2709)
      4'b1000: n2734 = 1'b1;
      4'b0100: n2734 = 1'b1;
      4'b0010: n2734 = 1'b0;
      4'b0001: n2734 = 1'b0;
      default: n2734 = 1'b0;
    endcase
  /* T80_MCode.vhd:493:17  */
  assign n2736 = ir == 8'b00100010;
  /* T80_MCode.vhd:528:17  */
  assign n2738 = ir == 8'b11111001;
  /* T80_MCode.vhd:572:38  */
  assign n2739 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:577:50  */
  assign n2741 = n2217 == 2'b11;
  assign n2744 = {1'b0, n2217, 1'b0};
  /* T80_MCode.vhd:577:41  */
  assign n2746 = n2741 ? 4'b0111 : n2744;
  /* T80_MCode.vhd:573:33  */
  assign n2748 = n2739 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:587:50  */
  assign n2750 = n2217 == 2'b11;
  assign n2753 = {1'b0, n2217, 1'b1};
  /* T80_MCode.vhd:587:41  */
  assign n2755 = n2750 ? 4'b1011 : n2753;
  /* T80_MCode.vhd:584:33  */
  assign n2757 = n2739 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:595:33  */
  assign n2759 = n2739 == 31'b0000000000000000000000000000011;
  assign n2760 = {n2759, n2757, n2748};
  /* T80_MCode.vhd:572:33  */
  always @*
    case (n2760)
      3'b100: n2762 = n2222;
      3'b010: n2762 = n2222;
      3'b001: n2762 = 3'b101;
      default: n2762 = n2222;
    endcase
  /* T80_MCode.vhd:572:33  */
  always @*
    case (n2760)
      3'b100: n2766 = 4'b0000;
      3'b010: n2766 = 4'b1111;
      3'b001: n2766 = 4'b1111;
      default: n2766 = 4'b0000;
    endcase
  /* T80_MCode.vhd:572:33  */
  always @*
    case (n2760)
      3'b100: n2768 = 4'b0000;
      3'b010: n2768 = n2755;
      3'b001: n2768 = n2746;
      default: n2768 = 4'b0000;
    endcase
  /* T80_MCode.vhd:572:33  */
  always @*
    case (n2760)
      3'b100: n2772 = 3'b111;
      3'b010: n2772 = 3'b101;
      3'b001: n2772 = 3'b101;
      default: n2772 = 3'b111;
    endcase
  /* T80_MCode.vhd:572:33  */
  always @*
    case (n2760)
      3'b100: n2776 = 1'b1;
      3'b010: n2776 = 1'b1;
      3'b001: n2776 = 1'b0;
      default: n2776 = 1'b0;
    endcase
  /* T80_MCode.vhd:539:17  */
  assign n2778 = ir == 8'b11000101;
  /* T80_MCode.vhd:539:32  */
  assign n2780 = ir == 8'b11010101;
  /* T80_MCode.vhd:539:32  */
  assign n2781 = n2778 | n2780;
  /* T80_MCode.vhd:539:43  */
  assign n2783 = ir == 8'b11100101;
  /* T80_MCode.vhd:539:43  */
  assign n2784 = n2781 | n2783;
  /* T80_MCode.vhd:539:54  */
  assign n2786 = ir == 8'b11110101;
  /* T80_MCode.vhd:539:54  */
  assign n2787 = n2784 | n2786;
  /* T80_MCode.vhd:603:30  */
  assign n2788 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:604:25  */
  assign n2790 = n2788 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:610:42  */
  assign n2792 = n2217 == 2'b11;
  assign n2794 = {n2217, 1'b1};
  /* T80_MCode.vhd:610:33  */
  assign n2796 = n2792 ? 3'b011 : n2794;
  /* T80_MCode.vhd:610:33  */
  assign n2799 = n2792 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:606:25  */
  assign n2801 = n2788 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:619:42  */
  assign n2803 = n2217 == 2'b11;
  assign n2805 = {n2217, 1'b0};
  /* T80_MCode.vhd:619:33  */
  assign n2807 = n2803 ? 3'b111 : n2805;
  /* T80_MCode.vhd:619:33  */
  assign n2810 = n2803 ? 1'b0 : 1'b0;
  /* T80_MCode.vhd:616:25  */
  assign n2812 = n2788 == 31'b0000000000000000000000000000011;
  assign n2813 = {n2812, n2801, n2790};
  /* T80_MCode.vhd:603:25  */
  always @*
    case (n2813)
      3'b100: n2817 = 4'b0111;
      3'b010: n2817 = 4'b0111;
      3'b001: n2817 = 4'b0000;
      default: n2817 = 4'b0000;
    endcase
  /* T80_MCode.vhd:603:25  */
  always @*
    case (n2813)
      3'b100: n2821 = 1'b1;
      3'b010: n2821 = 1'b1;
      3'b001: n2821 = 1'b0;
      default: n2821 = 1'b0;
    endcase
  /* T80_MCode.vhd:603:25  */
  always @*
    case (n2813)
      3'b100: n2823 = n2807;
      3'b010: n2823 = n2796;
      3'b001: n2823 = 3'b000;
      default: n2823 = 3'b000;
    endcase
  /* T80_MCode.vhd:603:25  */
  always @*
    case (n2813)
      3'b100: n2825 = n2810;
      3'b010: n2825 = n2799;
      3'b001: n2825 = 1'b0;
      default: n2825 = 1'b0;
    endcase
  /* T80_MCode.vhd:603:25  */
  always @*
    case (n2813)
      3'b100: n2829 = 3'b111;
      3'b010: n2829 = 3'b101;
      3'b001: n2829 = 3'b101;
      default: n2829 = 3'b111;
    endcase
  /* T80_MCode.vhd:600:17  */
  assign n2831 = ir == 8'b11000001;
  /* T80_MCode.vhd:600:32  */
  assign n2833 = ir == 8'b11010001;
  /* T80_MCode.vhd:600:32  */
  assign n2834 = n2831 | n2833;
  /* T80_MCode.vhd:600:43  */
  assign n2836 = ir == 8'b11100001;
  /* T80_MCode.vhd:600:43  */
  assign n2837 = n2834 | n2836;
  /* T80_MCode.vhd:600:54  */
  assign n2839 = ir == 8'b11110001;
  /* T80_MCode.vhd:600:54  */
  assign n2840 = n2837 | n2839;
  /* T80_MCode.vhd:629:17  */
  assign n2842 = ir == 8'b11101011;
  /* T80_MCode.vhd:634:17  */
  assign n2844 = ir == 8'b00001000;
  /* T80_MCode.vhd:660:17  */
  assign n2846 = ir == 8'b11011001;
  /* T80_MCode.vhd:686:38  */
  assign n2847 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:687:33  */
  assign n2849 = n2847 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:689:33  */
  assign n2851 = n2847 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:695:33  */
  assign n2853 = n2847 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:700:33  */
  assign n2855 = n2847 == 31'b0000000000000000000000000000100;
  /* T80_MCode.vhd:706:33  */
  assign n2857 = n2847 == 31'b0000000000000000000000000000101;
  assign n2858 = {n2857, n2855, n2853, n2851, n2849};
  /* T80_MCode.vhd:686:33  */
  always @*
    case (n2858)
      5'b10000: n2861 = 3'b101;
      5'b01000: n2861 = n2222;
      5'b00100: n2861 = 3'b100;
      5'b00010: n2861 = n2222;
      5'b00001: n2861 = n2222;
      default: n2861 = n2222;
    endcase
  /* T80_MCode.vhd:686:33  */
  always @*
    case (n2858)
      5'b10000: n2865 = 4'b1111;
      5'b01000: n2865 = 4'b0000;
      5'b00100: n2865 = 4'b0111;
      5'b00010: n2865 = 4'b0000;
      5'b00001: n2865 = 4'b0000;
      default: n2865 = 4'b0000;
    endcase
  /* T80_MCode.vhd:686:33  */
  always @*
    case (n2858)
      5'b10000: n2869 = 1'b0;
      5'b01000: n2869 = 1'b1;
      5'b00100: n2869 = 1'b0;
      5'b00010: n2869 = 1'b1;
      5'b00001: n2869 = 1'b0;
      default: n2869 = 1'b0;
    endcase
  /* T80_MCode.vhd:686:33  */
  always @*
    case (n2858)
      5'b10000: n2873 = 4'b0000;
      5'b01000: n2873 = 4'b0100;
      5'b00100: n2873 = 4'b0000;
      5'b00010: n2873 = 4'b0101;
      5'b00001: n2873 = 4'b0000;
      default: n2873 = 4'b0000;
    endcase
  /* T80_MCode.vhd:686:33  */
  always @*
    case (n2858)
      5'b10000: n2877 = 4'b0000;
      5'b01000: n2877 = 4'b0100;
      5'b00100: n2877 = 4'b0000;
      5'b00010: n2877 = 4'b0101;
      5'b00001: n2877 = 4'b0000;
      default: n2877 = 4'b0000;
    endcase
  /* T80_MCode.vhd:686:33  */
  always @*
    case (n2858)
      5'b10000: n2883 = 3'b111;
      5'b01000: n2883 = 3'b101;
      5'b00100: n2883 = 3'b101;
      5'b00010: n2883 = 3'b101;
      5'b00001: n2883 = 3'b101;
      default: n2883 = 3'b111;
    endcase
  /* T80_MCode.vhd:686:33  */
  always @*
    case (n2858)
      5'b10000: n2886 = 1'b0;
      5'b01000: n2886 = 1'b0;
      5'b00100: n2886 = 1'b0;
      5'b00010: n2886 = 1'b1;
      5'b00001: n2886 = 1'b0;
      default: n2886 = 1'b0;
    endcase
  /* T80_MCode.vhd:686:33  */
  always @*
    case (n2858)
      5'b10000: n2889 = 1'b0;
      5'b01000: n2889 = 1'b1;
      5'b00100: n2889 = 1'b0;
      5'b00010: n2889 = 1'b0;
      5'b00001: n2889 = 1'b0;
      default: n2889 = 1'b0;
    endcase
  /* T80_MCode.vhd:686:33  */
  always @*
    case (n2858)
      5'b10000: n2893 = 1'b1;
      5'b01000: n2893 = 1'b0;
      5'b00100: n2893 = 1'b1;
      5'b00010: n2893 = 1'b0;
      5'b00001: n2893 = 1'b0;
      default: n2893 = 1'b0;
    endcase
  /* T80_MCode.vhd:682:17  */
  assign n2895 = ir == 8'b11100011;
  /* T80_MCode.vhd:715:17  */
  assign n2898 = ir == 8'b10000000;
  /* T80_MCode.vhd:715:32  */
  assign n2900 = ir == 8'b10000001;
  /* T80_MCode.vhd:715:32  */
  assign n2901 = n2898 | n2900;
  /* T80_MCode.vhd:715:43  */
  assign n2903 = ir == 8'b10000010;
  /* T80_MCode.vhd:715:43  */
  assign n2904 = n2901 | n2903;
  /* T80_MCode.vhd:715:54  */
  assign n2906 = ir == 8'b10000011;
  /* T80_MCode.vhd:715:54  */
  assign n2907 = n2904 | n2906;
  /* T80_MCode.vhd:715:65  */
  assign n2909 = ir == 8'b10000100;
  /* T80_MCode.vhd:715:65  */
  assign n2910 = n2907 | n2909;
  /* T80_MCode.vhd:715:76  */
  assign n2912 = ir == 8'b10000101;
  /* T80_MCode.vhd:715:76  */
  assign n2913 = n2910 | n2912;
  /* T80_MCode.vhd:715:87  */
  assign n2915 = ir == 8'b10000111;
  /* T80_MCode.vhd:715:87  */
  assign n2916 = n2913 | n2915;
  /* T80_MCode.vhd:716:25  */
  assign n2918 = ir == 8'b10001000;
  /* T80_MCode.vhd:716:25  */
  assign n2919 = n2916 | n2918;
  /* T80_MCode.vhd:716:36  */
  assign n2921 = ir == 8'b10001001;
  /* T80_MCode.vhd:716:36  */
  assign n2922 = n2919 | n2921;
  /* T80_MCode.vhd:716:47  */
  assign n2924 = ir == 8'b10001010;
  /* T80_MCode.vhd:716:47  */
  assign n2925 = n2922 | n2924;
  /* T80_MCode.vhd:716:58  */
  assign n2927 = ir == 8'b10001011;
  /* T80_MCode.vhd:716:58  */
  assign n2928 = n2925 | n2927;
  /* T80_MCode.vhd:716:69  */
  assign n2930 = ir == 8'b10001100;
  /* T80_MCode.vhd:716:69  */
  assign n2931 = n2928 | n2930;
  /* T80_MCode.vhd:716:80  */
  assign n2933 = ir == 8'b10001101;
  /* T80_MCode.vhd:716:80  */
  assign n2934 = n2931 | n2933;
  /* T80_MCode.vhd:716:91  */
  assign n2936 = ir == 8'b10001111;
  /* T80_MCode.vhd:716:91  */
  assign n2937 = n2934 | n2936;
  /* T80_MCode.vhd:717:25  */
  assign n2939 = ir == 8'b10010000;
  /* T80_MCode.vhd:717:25  */
  assign n2940 = n2937 | n2939;
  /* T80_MCode.vhd:717:36  */
  assign n2942 = ir == 8'b10010001;
  /* T80_MCode.vhd:717:36  */
  assign n2943 = n2940 | n2942;
  /* T80_MCode.vhd:717:47  */
  assign n2945 = ir == 8'b10010010;
  /* T80_MCode.vhd:717:47  */
  assign n2946 = n2943 | n2945;
  /* T80_MCode.vhd:717:58  */
  assign n2948 = ir == 8'b10010011;
  /* T80_MCode.vhd:717:58  */
  assign n2949 = n2946 | n2948;
  /* T80_MCode.vhd:717:69  */
  assign n2951 = ir == 8'b10010100;
  /* T80_MCode.vhd:717:69  */
  assign n2952 = n2949 | n2951;
  /* T80_MCode.vhd:717:80  */
  assign n2954 = ir == 8'b10010101;
  /* T80_MCode.vhd:717:80  */
  assign n2955 = n2952 | n2954;
  /* T80_MCode.vhd:717:91  */
  assign n2957 = ir == 8'b10010111;
  /* T80_MCode.vhd:717:91  */
  assign n2958 = n2955 | n2957;
  /* T80_MCode.vhd:718:25  */
  assign n2960 = ir == 8'b10011000;
  /* T80_MCode.vhd:718:25  */
  assign n2961 = n2958 | n2960;
  /* T80_MCode.vhd:718:36  */
  assign n2963 = ir == 8'b10011001;
  /* T80_MCode.vhd:718:36  */
  assign n2964 = n2961 | n2963;
  /* T80_MCode.vhd:718:47  */
  assign n2966 = ir == 8'b10011010;
  /* T80_MCode.vhd:718:47  */
  assign n2967 = n2964 | n2966;
  /* T80_MCode.vhd:718:58  */
  assign n2969 = ir == 8'b10011011;
  /* T80_MCode.vhd:718:58  */
  assign n2970 = n2967 | n2969;
  /* T80_MCode.vhd:718:69  */
  assign n2972 = ir == 8'b10011100;
  /* T80_MCode.vhd:718:69  */
  assign n2973 = n2970 | n2972;
  /* T80_MCode.vhd:718:80  */
  assign n2975 = ir == 8'b10011101;
  /* T80_MCode.vhd:718:80  */
  assign n2976 = n2973 | n2975;
  /* T80_MCode.vhd:718:91  */
  assign n2978 = ir == 8'b10011111;
  /* T80_MCode.vhd:718:91  */
  assign n2979 = n2976 | n2978;
  /* T80_MCode.vhd:719:25  */
  assign n2981 = ir == 8'b10100000;
  /* T80_MCode.vhd:719:25  */
  assign n2982 = n2979 | n2981;
  /* T80_MCode.vhd:719:36  */
  assign n2984 = ir == 8'b10100001;
  /* T80_MCode.vhd:719:36  */
  assign n2985 = n2982 | n2984;
  /* T80_MCode.vhd:719:47  */
  assign n2987 = ir == 8'b10100010;
  /* T80_MCode.vhd:719:47  */
  assign n2988 = n2985 | n2987;
  /* T80_MCode.vhd:719:58  */
  assign n2990 = ir == 8'b10100011;
  /* T80_MCode.vhd:719:58  */
  assign n2991 = n2988 | n2990;
  /* T80_MCode.vhd:719:69  */
  assign n2993 = ir == 8'b10100100;
  /* T80_MCode.vhd:719:69  */
  assign n2994 = n2991 | n2993;
  /* T80_MCode.vhd:719:80  */
  assign n2996 = ir == 8'b10100101;
  /* T80_MCode.vhd:719:80  */
  assign n2997 = n2994 | n2996;
  /* T80_MCode.vhd:719:91  */
  assign n2999 = ir == 8'b10100111;
  /* T80_MCode.vhd:719:91  */
  assign n3000 = n2997 | n2999;
  /* T80_MCode.vhd:720:25  */
  assign n3002 = ir == 8'b10101000;
  /* T80_MCode.vhd:720:25  */
  assign n3003 = n3000 | n3002;
  /* T80_MCode.vhd:720:36  */
  assign n3005 = ir == 8'b10101001;
  /* T80_MCode.vhd:720:36  */
  assign n3006 = n3003 | n3005;
  /* T80_MCode.vhd:720:47  */
  assign n3008 = ir == 8'b10101010;
  /* T80_MCode.vhd:720:47  */
  assign n3009 = n3006 | n3008;
  /* T80_MCode.vhd:720:58  */
  assign n3011 = ir == 8'b10101011;
  /* T80_MCode.vhd:720:58  */
  assign n3012 = n3009 | n3011;
  /* T80_MCode.vhd:720:69  */
  assign n3014 = ir == 8'b10101100;
  /* T80_MCode.vhd:720:69  */
  assign n3015 = n3012 | n3014;
  /* T80_MCode.vhd:720:80  */
  assign n3017 = ir == 8'b10101101;
  /* T80_MCode.vhd:720:80  */
  assign n3018 = n3015 | n3017;
  /* T80_MCode.vhd:720:91  */
  assign n3020 = ir == 8'b10101111;
  /* T80_MCode.vhd:720:91  */
  assign n3021 = n3018 | n3020;
  /* T80_MCode.vhd:721:25  */
  assign n3023 = ir == 8'b10110000;
  /* T80_MCode.vhd:721:25  */
  assign n3024 = n3021 | n3023;
  /* T80_MCode.vhd:721:36  */
  assign n3026 = ir == 8'b10110001;
  /* T80_MCode.vhd:721:36  */
  assign n3027 = n3024 | n3026;
  /* T80_MCode.vhd:721:47  */
  assign n3029 = ir == 8'b10110010;
  /* T80_MCode.vhd:721:47  */
  assign n3030 = n3027 | n3029;
  /* T80_MCode.vhd:721:58  */
  assign n3032 = ir == 8'b10110011;
  /* T80_MCode.vhd:721:58  */
  assign n3033 = n3030 | n3032;
  /* T80_MCode.vhd:721:69  */
  assign n3035 = ir == 8'b10110100;
  /* T80_MCode.vhd:721:69  */
  assign n3036 = n3033 | n3035;
  /* T80_MCode.vhd:721:80  */
  assign n3038 = ir == 8'b10110101;
  /* T80_MCode.vhd:721:80  */
  assign n3039 = n3036 | n3038;
  /* T80_MCode.vhd:721:91  */
  assign n3041 = ir == 8'b10110111;
  /* T80_MCode.vhd:721:91  */
  assign n3042 = n3039 | n3041;
  /* T80_MCode.vhd:722:25  */
  assign n3044 = ir == 8'b10111000;
  /* T80_MCode.vhd:722:25  */
  assign n3045 = n3042 | n3044;
  /* T80_MCode.vhd:722:36  */
  assign n3047 = ir == 8'b10111001;
  /* T80_MCode.vhd:722:36  */
  assign n3048 = n3045 | n3047;
  /* T80_MCode.vhd:722:47  */
  assign n3050 = ir == 8'b10111010;
  /* T80_MCode.vhd:722:47  */
  assign n3051 = n3048 | n3050;
  /* T80_MCode.vhd:722:58  */
  assign n3053 = ir == 8'b10111011;
  /* T80_MCode.vhd:722:58  */
  assign n3054 = n3051 | n3053;
  /* T80_MCode.vhd:722:69  */
  assign n3056 = ir == 8'b10111100;
  /* T80_MCode.vhd:722:69  */
  assign n3057 = n3054 | n3056;
  /* T80_MCode.vhd:722:80  */
  assign n3059 = ir == 8'b10111101;
  /* T80_MCode.vhd:722:80  */
  assign n3060 = n3057 | n3059;
  /* T80_MCode.vhd:722:91  */
  assign n3062 = ir == 8'b10111111;
  /* T80_MCode.vhd:722:91  */
  assign n3063 = n3060 | n3062;
  /* T80_MCode.vhd:745:30  */
  assign n3064 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:746:25  */
  assign n3066 = n3064 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:748:25  */
  assign n3069 = n3064 == 31'b0000000000000000000000000000010;
  assign n3070 = {n3069, n3066};
  /* T80_MCode.vhd:745:25  */
  always @*
    case (n3070)
      2'b10: n3073 = 1'b1;
      2'b01: n3073 = 1'b0;
      default: n3073 = 1'b0;
    endcase
  /* T80_MCode.vhd:745:25  */
  always @*
    case (n3070)
      2'b10: n3075 = 3'b111;
      2'b01: n3075 = 3'b000;
      default: n3075 = 3'b000;
    endcase
  /* T80_MCode.vhd:745:25  */
  always @*
    case (n3070)
      2'b10: n3077 = n2216;
      2'b01: n3077 = 3'b000;
      default: n3077 = 3'b000;
    endcase
  /* T80_MCode.vhd:745:25  */
  always @*
    case (n3070)
      2'b10: n3080 = 1'b1;
      2'b01: n3080 = 1'b0;
      default: n3080 = 1'b0;
    endcase
  /* T80_MCode.vhd:745:25  */
  always @*
    case (n3070)
      2'b10: n3083 = 3'b111;
      2'b01: n3083 = 3'b010;
      default: n3083 = 3'b111;
    endcase
  /* T80_MCode.vhd:735:17  */
  assign n3085 = ir == 8'b10000110;
  /* T80_MCode.vhd:735:32  */
  assign n3087 = ir == 8'b10001110;
  /* T80_MCode.vhd:735:32  */
  assign n3088 = n3085 | n3087;
  /* T80_MCode.vhd:735:43  */
  assign n3090 = ir == 8'b10010110;
  /* T80_MCode.vhd:735:43  */
  assign n3091 = n3088 | n3090;
  /* T80_MCode.vhd:735:54  */
  assign n3093 = ir == 8'b10011110;
  /* T80_MCode.vhd:735:54  */
  assign n3094 = n3091 | n3093;
  /* T80_MCode.vhd:735:65  */
  assign n3096 = ir == 8'b10100110;
  /* T80_MCode.vhd:735:65  */
  assign n3097 = n3094 | n3096;
  /* T80_MCode.vhd:735:76  */
  assign n3099 = ir == 8'b10101110;
  /* T80_MCode.vhd:735:76  */
  assign n3100 = n3097 | n3099;
  /* T80_MCode.vhd:735:87  */
  assign n3102 = ir == 8'b10110110;
  /* T80_MCode.vhd:735:87  */
  assign n3103 = n3100 | n3102;
  /* T80_MCode.vhd:735:98  */
  assign n3105 = ir == 8'b10111110;
  /* T80_MCode.vhd:735:98  */
  assign n3106 = n3103 | n3105;
  /* T80_MCode.vhd:765:35  */
  assign n3108 = mcycle == 3'b010;
  /* T80_MCode.vhd:765:25  */
  assign n3112 = n3108 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:765:25  */
  assign n3115 = n3108 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:765:25  */
  assign n3117 = n3108 ? 3'b111 : 3'b000;
  /* T80_MCode.vhd:765:25  */
  assign n3119 = n3108 ? n2216 : 3'b000;
  /* T80_MCode.vhd:765:25  */
  assign n3122 = n3108 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:755:17  */
  assign n3124 = ir == 8'b11000110;
  /* T80_MCode.vhd:755:32  */
  assign n3126 = ir == 8'b11001110;
  /* T80_MCode.vhd:755:32  */
  assign n3127 = n3124 | n3126;
  /* T80_MCode.vhd:755:43  */
  assign n3129 = ir == 8'b11010110;
  /* T80_MCode.vhd:755:43  */
  assign n3130 = n3127 | n3129;
  /* T80_MCode.vhd:755:54  */
  assign n3132 = ir == 8'b11011110;
  /* T80_MCode.vhd:755:54  */
  assign n3133 = n3130 | n3132;
  /* T80_MCode.vhd:755:65  */
  assign n3135 = ir == 8'b11100110;
  /* T80_MCode.vhd:755:65  */
  assign n3136 = n3133 | n3135;
  /* T80_MCode.vhd:755:76  */
  assign n3138 = ir == 8'b11101110;
  /* T80_MCode.vhd:755:76  */
  assign n3139 = n3136 | n3138;
  /* T80_MCode.vhd:755:87  */
  assign n3141 = ir == 8'b11110110;
  /* T80_MCode.vhd:755:87  */
  assign n3142 = n3139 | n3141;
  /* T80_MCode.vhd:755:98  */
  assign n3144 = ir == 8'b11111110;
  /* T80_MCode.vhd:755:98  */
  assign n3145 = n3142 | n3144;
  /* T80_MCode.vhd:772:17  */
  assign n3147 = ir == 8'b00000100;
  /* T80_MCode.vhd:772:32  */
  assign n3149 = ir == 8'b00001100;
  /* T80_MCode.vhd:772:32  */
  assign n3150 = n3147 | n3149;
  /* T80_MCode.vhd:772:43  */
  assign n3152 = ir == 8'b00010100;
  /* T80_MCode.vhd:772:43  */
  assign n3153 = n3150 | n3152;
  /* T80_MCode.vhd:772:54  */
  assign n3155 = ir == 8'b00011100;
  /* T80_MCode.vhd:772:54  */
  assign n3156 = n3153 | n3155;
  /* T80_MCode.vhd:772:65  */
  assign n3158 = ir == 8'b00100100;
  /* T80_MCode.vhd:772:65  */
  assign n3159 = n3156 | n3158;
  /* T80_MCode.vhd:772:76  */
  assign n3161 = ir == 8'b00101100;
  /* T80_MCode.vhd:772:76  */
  assign n3162 = n3159 | n3161;
  /* T80_MCode.vhd:772:87  */
  assign n3164 = ir == 8'b00111100;
  /* T80_MCode.vhd:772:87  */
  assign n3165 = n3162 | n3164;
  /* T80_MCode.vhd:783:30  */
  assign n3166 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:784:25  */
  assign n3168 = n3166 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:786:25  */
  assign n3170 = n3166 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:795:25  */
  assign n3172 = n3166 == 31'b0000000000000000000000000000011;
  assign n3173 = {n3172, n3170, n3168};
  /* T80_MCode.vhd:783:25  */
  always @*
    case (n3173)
      3'b100: n3175 = n2222;
      3'b010: n3175 = 3'b100;
      3'b001: n3175 = n2222;
      default: n3175 = n2222;
    endcase
  /* T80_MCode.vhd:783:25  */
  always @*
    case (n3173)
      3'b100: n3178 = 1'b0;
      3'b010: n3178 = 1'b1;
      3'b001: n3178 = 1'b0;
      default: n3178 = 1'b0;
    endcase
  /* T80_MCode.vhd:783:25  */
  always @*
    case (n3173)
      3'b100: n3180 = 3'b000;
      3'b010: n3180 = n2215;
      3'b001: n3180 = 3'b000;
      default: n3180 = 3'b000;
    endcase
  /* T80_MCode.vhd:783:25  */
  always @*
    case (n3173)
      3'b100: n3183 = 4'b0000;
      3'b010: n3183 = 4'b1010;
      3'b001: n3183 = 4'b0000;
      default: n3183 = 4'b0000;
    endcase
  /* T80_MCode.vhd:783:25  */
  always @*
    case (n3173)
      3'b100: n3185 = n2225;
      3'b010: n3185 = 4'b0000;
      3'b001: n3185 = n2225;
      default: n3185 = n2225;
    endcase
  /* T80_MCode.vhd:783:25  */
  always @*
    case (n3173)
      3'b100: n3188 = 1'b0;
      3'b010: n3188 = 1'b1;
      3'b001: n3188 = 1'b0;
      default: n3188 = 1'b0;
    endcase
  /* T80_MCode.vhd:783:25  */
  always @*
    case (n3173)
      3'b100: n3191 = 1'b0;
      3'b010: n3191 = 1'b1;
      3'b001: n3191 = 1'b0;
      default: n3191 = 1'b0;
    endcase
  /* T80_MCode.vhd:783:25  */
  always @*
    case (n3173)
      3'b100: n3195 = 3'b111;
      3'b010: n3195 = 3'b010;
      3'b001: n3195 = 3'b010;
      default: n3195 = 3'b111;
    endcase
  /* T80_MCode.vhd:783:25  */
  always @*
    case (n3173)
      3'b100: n3198 = 1'b1;
      3'b010: n3198 = 1'b0;
      3'b001: n3198 = 1'b0;
      default: n3198 = 1'b0;
    endcase
  /* T80_MCode.vhd:780:17  */
  assign n3200 = ir == 8'b00110100;
  /* T80_MCode.vhd:799:17  */
  assign n3202 = ir == 8'b00000101;
  /* T80_MCode.vhd:799:32  */
  assign n3204 = ir == 8'b00001101;
  /* T80_MCode.vhd:799:32  */
  assign n3205 = n3202 | n3204;
  /* T80_MCode.vhd:799:43  */
  assign n3207 = ir == 8'b00010101;
  /* T80_MCode.vhd:799:43  */
  assign n3208 = n3205 | n3207;
  /* T80_MCode.vhd:799:54  */
  assign n3210 = ir == 8'b00011101;
  /* T80_MCode.vhd:799:54  */
  assign n3211 = n3208 | n3210;
  /* T80_MCode.vhd:799:65  */
  assign n3213 = ir == 8'b00100101;
  /* T80_MCode.vhd:799:65  */
  assign n3214 = n3211 | n3213;
  /* T80_MCode.vhd:799:76  */
  assign n3216 = ir == 8'b00101101;
  /* T80_MCode.vhd:799:76  */
  assign n3217 = n3214 | n3216;
  /* T80_MCode.vhd:799:87  */
  assign n3219 = ir == 8'b00111101;
  /* T80_MCode.vhd:799:87  */
  assign n3220 = n3217 | n3219;
  /* T80_MCode.vhd:810:30  */
  assign n3221 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:811:25  */
  assign n3223 = n3221 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:813:25  */
  assign n3225 = n3221 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:822:25  */
  assign n3227 = n3221 == 31'b0000000000000000000000000000011;
  assign n3228 = {n3227, n3225, n3223};
  /* T80_MCode.vhd:810:25  */
  always @*
    case (n3228)
      3'b100: n3230 = n2222;
      3'b010: n3230 = 3'b100;
      3'b001: n3230 = n2222;
      default: n3230 = n2222;
    endcase
  /* T80_MCode.vhd:810:25  */
  always @*
    case (n3228)
      3'b100: n3233 = 1'b0;
      3'b010: n3233 = 1'b1;
      3'b001: n3233 = 1'b0;
      default: n3233 = 1'b0;
    endcase
  /* T80_MCode.vhd:810:25  */
  always @*
    case (n3228)
      3'b100: n3235 = 3'b000;
      3'b010: n3235 = n2215;
      3'b001: n3235 = 3'b000;
      default: n3235 = 3'b000;
    endcase
  /* T80_MCode.vhd:810:25  */
  always @*
    case (n3228)
      3'b100: n3238 = 4'b0000;
      3'b010: n3238 = 4'b1010;
      3'b001: n3238 = 4'b0000;
      default: n3238 = 4'b0000;
    endcase
  /* T80_MCode.vhd:810:25  */
  always @*
    case (n3228)
      3'b100: n3240 = n2225;
      3'b010: n3240 = 4'b0010;
      3'b001: n3240 = n2225;
      default: n3240 = n2225;
    endcase
  /* T80_MCode.vhd:810:25  */
  always @*
    case (n3228)
      3'b100: n3243 = 1'b0;
      3'b010: n3243 = 1'b1;
      3'b001: n3243 = 1'b0;
      default: n3243 = 1'b0;
    endcase
  /* T80_MCode.vhd:810:25  */
  always @*
    case (n3228)
      3'b100: n3246 = 1'b0;
      3'b010: n3246 = 1'b1;
      3'b001: n3246 = 1'b0;
      default: n3246 = 1'b0;
    endcase
  /* T80_MCode.vhd:810:25  */
  always @*
    case (n3228)
      3'b100: n3250 = 3'b111;
      3'b010: n3250 = 3'b010;
      3'b001: n3250 = 3'b010;
      default: n3250 = 3'b111;
    endcase
  /* T80_MCode.vhd:810:25  */
  always @*
    case (n3228)
      3'b100: n3253 = 1'b1;
      3'b010: n3253 = 1'b0;
      3'b001: n3253 = 1'b0;
      default: n3253 = 1'b0;
    endcase
  /* T80_MCode.vhd:807:17  */
  assign n3255 = ir == 8'b00110101;
  /* T80_MCode.vhd:828:17  */
  assign n3258 = ir == 8'b00100111;
  /* T80_MCode.vhd:834:17  */
  assign n3260 = ir == 8'b00101111;
  /* T80_MCode.vhd:837:17  */
  assign n3262 = ir == 8'b00111111;
  /* T80_MCode.vhd:840:17  */
  assign n3264 = ir == 8'b00110111;
  /* T80_MCode.vhd:847:38  */
  assign n3265 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:848:33  */
  assign n3267 = n3265 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:853:33  */
  assign n3269 = n3265 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:858:33  */
  assign n3271 = n3265 == 31'b0000000000000000000000000000011;
  assign n3272 = {n3271, n3269, n3267};
  /* T80_MCode.vhd:847:33  */
  always @*
    case (n3272)
      3'b100: n3274 = n2222;
      3'b010: n3274 = n2222;
      3'b001: n3274 = 3'b101;
      default: n3274 = n2222;
    endcase
  /* T80_MCode.vhd:847:33  */
  always @*
    case (n3272)
      3'b100: n3278 = 4'b0000;
      3'b010: n3278 = 4'b1111;
      3'b001: n3278 = 4'b1111;
      default: n3278 = 4'b0000;
    endcase
  /* T80_MCode.vhd:847:33  */
  always @*
    case (n3272)
      3'b100: n3282 = 4'b0000;
      3'b010: n3282 = 4'b1100;
      3'b001: n3282 = 4'b1101;
      default: n3282 = 4'b0000;
    endcase
  /* T80_MCode.vhd:847:33  */
  always @*
    case (n3272)
      3'b100: n3286 = 3'b111;
      3'b010: n3286 = 3'b101;
      3'b001: n3286 = 3'b101;
      default: n3286 = 3'b111;
    endcase
  /* T80_MCode.vhd:847:33  */
  always @*
    case (n3272)
      3'b100: n3290 = 1'b1;
      3'b010: n3290 = 1'b1;
      3'b001: n3290 = 1'b0;
      default: n3290 = 1'b0;
    endcase
  /* T80_MCode.vhd:885:46  */
  assign n3291 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:886:41  */
  assign n3293 = n3291 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:892:41  */
  assign n3295 = n3291 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:898:41  */
  assign n3297 = n3291 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:901:41  */
  assign n3299 = n3291 == 31'b0000000000000000000000000000100;
  /* T80_MCode.vhd:904:41  */
  assign n3301 = n3291 == 31'b0000000000000000000000000000101;
  assign n3302 = {n3301, n3299, n3297, n3295, n3293};
  /* T80_MCode.vhd:885:41  */
  always @*
    case (n3302)
      5'b10000: n3304 = n2222;
      5'b01000: n3304 = n2222;
      5'b00100: n3304 = n2222;
      5'b00010: n3304 = n2222;
      5'b00001: n3304 = 3'b101;
      default: n3304 = n2222;
    endcase
  /* T80_MCode.vhd:885:41  */
  always @*
    case (n3302)
      5'b10000: n3307 = 1'b0;
      5'b01000: n3307 = 1'b1;
      5'b00100: n3307 = 1'b0;
      5'b00010: n3307 = 1'b0;
      5'b00001: n3307 = 1'b0;
      default: n3307 = 1'b0;
    endcase
  /* T80_MCode.vhd:885:41  */
  always @*
    case (n3302)
      5'b10000: n3311 = 4'b0000;
      5'b01000: n3311 = 4'b0000;
      5'b00100: n3311 = 4'b0000;
      5'b00010: n3311 = 4'b1111;
      5'b00001: n3311 = 4'b1111;
      default: n3311 = 4'b0000;
    endcase
  /* T80_MCode.vhd:885:41  */
  always @*
    case (n3302)
      5'b10000: n3315 = 4'b0000;
      5'b01000: n3315 = 4'b0000;
      5'b00100: n3315 = 4'b0000;
      5'b00010: n3315 = 4'b1100;
      5'b00001: n3315 = 4'b1101;
      default: n3315 = 4'b0000;
    endcase
  /* T80_MCode.vhd:885:41  */
  always @*
    case (n3302)
      5'b10000: n3319 = 3'b111;
      5'b01000: n3319 = 3'b111;
      5'b00100: n3319 = 3'b111;
      5'b00010: n3319 = 3'b101;
      5'b00001: n3319 = 3'b101;
      default: n3319 = 3'b111;
    endcase
  /* T80_MCode.vhd:885:41  */
  always @*
    case (n3302)
      5'b10000: n3322 = 1'b1;
      5'b01000: n3322 = 1'b0;
      5'b00100: n3322 = 1'b0;
      5'b00010: n3322 = 1'b0;
      5'b00001: n3322 = 1'b0;
      default: n3322 = 1'b0;
    endcase
  /* T80_MCode.vhd:885:41  */
  always @*
    case (n3302)
      5'b10000: n3326 = 1'b0;
      5'b01000: n3326 = 1'b1;
      5'b00100: n3326 = 1'b0;
      5'b00010: n3326 = 1'b0;
      5'b00001: n3326 = 1'b1;
      default: n3326 = 1'b0;
    endcase
  /* T80_MCode.vhd:885:41  */
  always @*
    case (n3302)
      5'b10000: n3330 = 1'b0;
      5'b01000: n3330 = 1'b0;
      5'b00100: n3330 = 1'b1;
      5'b00010: n3330 = 1'b1;
      5'b00001: n3330 = 1'b0;
      default: n3330 = 1'b0;
    endcase
  /* T80_MCode.vhd:862:25  */
  assign n3333 = intcycle ? 3'b101 : 3'b001;
  /* T80_MCode.vhd:862:25  */
  assign n3334 = intcycle ? n3304 : n2222;
  /* T80_MCode.vhd:862:25  */
  assign n3336 = intcycle ? n3307 : 1'b0;
  /* T80_MCode.vhd:862:25  */
  assign n3338 = intcycle ? n3311 : 4'b0000;
  /* T80_MCode.vhd:862:25  */
  assign n3340 = intcycle ? n3315 : 4'b0000;
  /* T80_MCode.vhd:862:25  */
  assign n3342 = intcycle ? n3319 : 3'b111;
  /* T80_MCode.vhd:862:25  */
  assign n3344 = intcycle ? n3322 : 1'b0;
  /* T80_MCode.vhd:862:25  */
  assign n3346 = intcycle ? n3326 : 1'b0;
  /* T80_MCode.vhd:862:25  */
  assign n3348 = intcycle ? n3330 : 1'b0;
  /* T80_MCode.vhd:844:25  */
  assign n3350 = nmicycle ? 3'b011 : n3333;
  /* T80_MCode.vhd:844:25  */
  assign n3351 = nmicycle ? n3274 : n3334;
  /* T80_MCode.vhd:844:25  */
  assign n3353 = nmicycle ? 1'b0 : n3336;
  /* T80_MCode.vhd:844:25  */
  assign n3354 = nmicycle ? n3278 : n3338;
  /* T80_MCode.vhd:844:25  */
  assign n3355 = nmicycle ? n3282 : n3340;
  /* T80_MCode.vhd:844:25  */
  assign n3356 = nmicycle ? n3286 : n3342;
  /* T80_MCode.vhd:844:25  */
  assign n3358 = nmicycle ? 1'b0 : n3344;
  /* T80_MCode.vhd:844:25  */
  assign n3360 = nmicycle ? 1'b0 : n3346;
  /* T80_MCode.vhd:844:25  */
  assign n3361 = nmicycle ? n3290 : n3348;
  /* T80_MCode.vhd:843:17  */
  assign n3363 = ir == 8'b00000000;
  /* T80_MCode.vhd:912:17  */
  assign n3365 = ir == 8'b01110110;
  /* T80_MCode.vhd:915:17  */
  assign n3367 = ir == 8'b11110011;
  /* T80_MCode.vhd:918:17  */
  assign n3369 = ir == 8'b11111011;
  /* T80_MCode.vhd:961:38  */
  assign n3370 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:962:33  */
  assign n3372 = n3370 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:970:68  */
  assign n3374 = ir[5:4]; // extract
  /* T80_MCode.vhd:970:46  */
  assign n3375 = {29'b0, n3374};  //  uext
  /* T80_MCode.vhd:972:78  */
  assign n3376 = ir[5:4]; // extract
  /* T80_MCode.vhd:971:41  */
  assign n3379 = n3375 == 31'b0000000000000000000000000000000;
  /* T80_MCode.vhd:971:47  */
  assign n3381 = n3375 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:971:47  */
  assign n3382 = n3379 | n3381;
  /* T80_MCode.vhd:971:49  */
  assign n3384 = n3375 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:971:49  */
  assign n3385 = n3382 | n3384;
  /* T80_MCode.vhd:970:41  */
  always @*
    case (n3385)
      1'b1: n3387 = 1'b1;
      default: n3387 = 1'b0;
    endcase
  /* T80_MCode.vhd:970:41  */
  always @*
    case (n3385)
      1'b1: n3389 = n3376;
      default: n3389 = 2'b00;
    endcase
  /* T80_MCode.vhd:970:41  */
  always @*
    case (n3385)
      1'b1: n3392 = 1'b0;
      default: n3392 = 1'b1;
    endcase
  /* T80_MCode.vhd:964:33  */
  assign n3394 = n3370 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:987:68  */
  assign n3396 = ir[5:4]; // extract
  /* T80_MCode.vhd:987:46  */
  assign n3397 = {29'b0, n3396};  //  uext
  /* T80_MCode.vhd:989:78  */
  assign n3398 = ir[5:4]; // extract
  /* T80_MCode.vhd:988:41  */
  assign n3400 = n3397 == 31'b0000000000000000000000000000000;
  /* T80_MCode.vhd:988:47  */
  assign n3402 = n3397 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:988:47  */
  assign n3403 = n3400 | n3402;
  /* T80_MCode.vhd:988:49  */
  assign n3405 = n3397 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:988:49  */
  assign n3406 = n3403 | n3405;
  /* T80_MCode.vhd:987:41  */
  always @*
    case (n3406)
      1'b1: n3409 = 1'b0;
      default: n3409 = 1'b1;
    endcase
  /* T80_MCode.vhd:987:41  */
  always @*
    case (n3406)
      1'b1: n3411 = n3398;
      default: n3411 = 2'b00;
    endcase
  /* T80_MCode.vhd:987:41  */
  always @*
    case (n3406)
      1'b1: n3414 = 1'b0;
      default: n3414 = 1'b1;
    endcase
  /* T80_MCode.vhd:981:33  */
  assign n3416 = n3370 == 31'b0000000000000000000000000000011;
  assign n3417 = {n3416, n3394, n3372};
  /* T80_MCode.vhd:961:33  */
  always @*
    case (n3417)
      3'b100: n3419 = n2222;
      3'b010: n3419 = 3'b100;
      3'b001: n3419 = n2222;
      default: n3419 = n2222;
    endcase
  /* T80_MCode.vhd:961:33  */
  always @*
    case (n3417)
      3'b100: n3423 = 1'b1;
      3'b010: n3423 = 1'b1;
      3'b001: n3423 = 1'b0;
      default: n3423 = 1'b0;
    endcase
  /* T80_MCode.vhd:961:33  */
  always @*
    case (n3417)
      3'b100: n3425 = 3'b100;
      3'b010: n3425 = 3'b101;
      3'b001: n3425 = 3'b000;
      default: n3425 = 3'b000;
    endcase
  /* T80_MCode.vhd:961:33  */
  always @*
    case (n3417)
      3'b100: n3427 = n3409;
      3'b010: n3427 = n3387;
      3'b001: n3427 = 1'b0;
      default: n3427 = 1'b0;
    endcase
  /* T80_MCode.vhd:961:33  */
  always @*
    case (n3417)
      3'b100: n3429 = n3411;
      3'b010: n3429 = n3389;
      3'b001: n3429 = 2'b00;
      default: n3429 = 2'b00;
    endcase
  /* T80_MCode.vhd:961:33  */
  always @*
    case (n3417)
      3'b100: n3431 = n3414;
      3'b010: n3431 = n3392;
      3'b001: n3431 = 1'b0;
      default: n3431 = 1'b0;
    endcase
  /* T80_MCode.vhd:961:33  */
  always @*
    case (n3417)
      3'b100: n3434 = 4'b0001;
      3'b010: n3434 = 4'b0000;
      3'b001: n3434 = n2225;
      default: n3434 = n2225;
    endcase
  /* T80_MCode.vhd:961:33  */
  always @*
    case (n3417)
      3'b100: n3438 = 1'b1;
      3'b010: n3438 = 1'b1;
      3'b001: n3438 = 1'b0;
      default: n3438 = 1'b0;
    endcase
  /* T80_MCode.vhd:961:33  */
  always @*
    case (n3417)
      3'b100: n3442 = 1'b1;
      3'b010: n3442 = 1'b1;
      3'b001: n3442 = 1'b0;
      default: n3442 = 1'b0;
    endcase
  /* T80_MCode.vhd:961:33  */
  always @*
    case (n3417)
      3'b100: n3445 = 2'b00;
      3'b010: n3445 = 2'b11;
      3'b001: n3445 = 2'b00;
      default: n3445 = 2'b00;
    endcase
  /* T80_MCode.vhd:961:33  */
  always @*
    case (n3417)
      3'b100: n3449 = 1'b1;
      3'b010: n3449 = 1'b1;
      3'b001: n3449 = 1'b0;
      default: n3449 = 1'b0;
    endcase
  /* T80_MCode.vhd:961:33  */
  always @*
    case (n3417)
      3'b100: n3453 = 1'b0;
      3'b010: n3453 = 1'b1;
      3'b001: n3453 = 1'b1;
      default: n3453 = 1'b0;
    endcase
  /* T80_MCode.vhd:923:17  */
  assign n3455 = ir == 8'b00001001;
  /* T80_MCode.vhd:923:32  */
  assign n3457 = ir == 8'b00011001;
  /* T80_MCode.vhd:923:32  */
  assign n3458 = n3455 | n3457;
  /* T80_MCode.vhd:923:43  */
  assign n3460 = ir == 8'b00101001;
  /* T80_MCode.vhd:923:43  */
  assign n3461 = n3458 | n3460;
  /* T80_MCode.vhd:923:54  */
  assign n3463 = ir == 8'b00111001;
  /* T80_MCode.vhd:923:54  */
  assign n3464 = n3461 | n3463;
  /* T80_MCode.vhd:997:17  */
  assign n3467 = ir == 8'b00000011;
  /* T80_MCode.vhd:997:32  */
  assign n3469 = ir == 8'b00010011;
  /* T80_MCode.vhd:997:32  */
  assign n3470 = n3467 | n3469;
  /* T80_MCode.vhd:997:43  */
  assign n3472 = ir == 8'b00100011;
  /* T80_MCode.vhd:997:43  */
  assign n3473 = n3470 | n3472;
  /* T80_MCode.vhd:997:54  */
  assign n3475 = ir == 8'b00110011;
  /* T80_MCode.vhd:997:54  */
  assign n3476 = n3473 | n3475;
  /* T80_MCode.vhd:1012:17  */
  assign n3479 = ir == 8'b00001011;
  /* T80_MCode.vhd:1012:32  */
  assign n3481 = ir == 8'b00011011;
  /* T80_MCode.vhd:1012:32  */
  assign n3482 = n3479 | n3481;
  /* T80_MCode.vhd:1012:43  */
  assign n3484 = ir == 8'b00101011;
  /* T80_MCode.vhd:1012:43  */
  assign n3485 = n3482 | n3484;
  /* T80_MCode.vhd:1012:54  */
  assign n3487 = ir == 8'b00111011;
  /* T80_MCode.vhd:1012:54  */
  assign n3488 = n3485 | n3487;
  /* T80_MCode.vhd:1029:17  */
  assign n3491 = ir == 8'b00000111;
  /* T80_MCode.vhd:1031:25  */
  assign n3493 = ir == 8'b00010111;
  /* T80_MCode.vhd:1031:25  */
  assign n3494 = n3491 | n3493;
  /* T80_MCode.vhd:1033:25  */
  assign n3496 = ir == 8'b00001111;
  /* T80_MCode.vhd:1033:25  */
  assign n3497 = n3494 | n3496;
  /* T80_MCode.vhd:1035:25  */
  assign n3499 = ir == 8'b00011111;
  /* T80_MCode.vhd:1035:25  */
  assign n3500 = n3497 | n3499;
  /* T80_MCode.vhd:1051:30  */
  assign n3501 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1052:25  */
  assign n3503 = n3501 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1055:25  */
  assign n3505 = n3501 == 31'b0000000000000000000000000000011;
  assign n3506 = {n3505, n3503};
  /* T80_MCode.vhd:1051:25  */
  always @*
    case (n3506)
      2'b10: n3510 = 1'b1;
      2'b01: n3510 = 1'b1;
      default: n3510 = 1'b0;
    endcase
  /* T80_MCode.vhd:1051:25  */
  always @*
    case (n3506)
      2'b10: n3513 = 1'b1;
      2'b01: n3513 = 1'b0;
      default: n3513 = 1'b0;
    endcase
  /* T80_MCode.vhd:1051:25  */
  always @*
    case (n3506)
      2'b10: n3516 = 1'b0;
      2'b01: n3516 = 1'b1;
      default: n3516 = 1'b0;
    endcase
  /* T80_MCode.vhd:1051:25  */
  always @*
    case (n3506)
      2'b10: n3519 = 1'b1;
      2'b01: n3519 = 1'b0;
      default: n3519 = 1'b0;
    endcase
  /* T80_MCode.vhd:1044:17  */
  assign n3521 = ir == 8'b11000011;
  /* T80_MCode.vhd:1126:38  */
  assign n3523 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1127:33  */
  assign n3525 = n3523 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1135:73  */
  assign n3527 = ir[5:3]; // extract
  /* T80_MCode.vhd:179:47  */
  assign n3532 = f[6]; // extract
  /* T80_MCode.vhd:179:56  */
  assign n3533 = ~n3532;
  /* T80_MCode.vhd:179:25  */
  assign n3535 = n3527 == 3'b000;
  /* T80_MCode.vhd:180:47  */
  assign n3536 = f[6]; // extract
  /* T80_MCode.vhd:180:25  */
  assign n3538 = n3527 == 3'b001;
  /* T80_MCode.vhd:181:47  */
  assign n3539 = f[0]; // extract
  /* T80_MCode.vhd:181:56  */
  assign n3540 = ~n3539;
  /* T80_MCode.vhd:181:25  */
  assign n3542 = n3527 == 3'b010;
  /* T80_MCode.vhd:182:47  */
  assign n3543 = f[0]; // extract
  /* T80_MCode.vhd:182:25  */
  assign n3545 = n3527 == 3'b011;
  /* T80_MCode.vhd:183:47  */
  assign n3546 = f[2]; // extract
  /* T80_MCode.vhd:183:56  */
  assign n3547 = ~n3546;
  /* T80_MCode.vhd:183:25  */
  assign n3549 = n3527 == 3'b100;
  /* T80_MCode.vhd:184:47  */
  assign n3550 = f[2]; // extract
  /* T80_MCode.vhd:184:25  */
  assign n3552 = n3527 == 3'b101;
  /* T80_MCode.vhd:185:47  */
  assign n3553 = f[7]; // extract
  /* T80_MCode.vhd:185:56  */
  assign n3554 = ~n3553;
  /* T80_MCode.vhd:185:25  */
  assign n3556 = n3527 == 3'b110;
  /* T80_MCode.vhd:186:47  */
  assign n3557 = f[7]; // extract
  /* T80_MCode.vhd:186:25  */
  assign n3559 = n3527 == 3'b111;
  assign n3560 = {n3559, n3556, n3552, n3549, n3545, n3542, n3538, n3535};
  /* T80_MCode.vhd:178:25  */
  always @*
    case (n3560)
      8'b10000000: n3562 = n3557;
      8'b01000000: n3562 = n3554;
      8'b00100000: n3562 = n3550;
      8'b00010000: n3562 = n3547;
      8'b00001000: n3562 = n3543;
      8'b00000100: n3562 = n3540;
      8'b00000010: n3562 = n3536;
      8'b00000001: n3562 = n3533;
      default: n3562 = 1'bX;
    endcase
  /* T80_MCode.vhd:1135:41  */
  assign n3565 = n3562 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:1130:33  */
  assign n3567 = n3523 == 31'b0000000000000000000000000000011;
  assign n3568 = {n3567, n3525};
  /* T80_MCode.vhd:1126:33  */
  always @*
    case (n3568)
      2'b10: n3572 = 1'b1;
      2'b01: n3572 = 1'b1;
      default: n3572 = 1'b0;
    endcase
  /* T80_MCode.vhd:1126:33  */
  always @*
    case (n3568)
      2'b10: n3574 = n3565;
      2'b01: n3574 = 1'b0;
      default: n3574 = 1'b0;
    endcase
  /* T80_MCode.vhd:1126:33  */
  always @*
    case (n3568)
      2'b10: n3577 = 1'b0;
      2'b01: n3577 = 1'b1;
      default: n3577 = 1'b0;
    endcase
  /* T80_MCode.vhd:1126:33  */
  always @*
    case (n3568)
      2'b10: n3580 = 1'b1;
      2'b01: n3580 = 1'b0;
      default: n3580 = 1'b0;
    endcase
  /* T80_MCode.vhd:1063:17  */
  assign n3582 = ir == 8'b11000010;
  /* T80_MCode.vhd:1063:32  */
  assign n3584 = ir == 8'b11001010;
  /* T80_MCode.vhd:1063:32  */
  assign n3585 = n3582 | n3584;
  /* T80_MCode.vhd:1063:43  */
  assign n3587 = ir == 8'b11010010;
  /* T80_MCode.vhd:1063:43  */
  assign n3588 = n3585 | n3587;
  /* T80_MCode.vhd:1063:54  */
  assign n3590 = ir == 8'b11011010;
  /* T80_MCode.vhd:1063:54  */
  assign n3591 = n3588 | n3590;
  /* T80_MCode.vhd:1063:65  */
  assign n3593 = ir == 8'b11100010;
  /* T80_MCode.vhd:1063:65  */
  assign n3594 = n3591 | n3593;
  /* T80_MCode.vhd:1063:76  */
  assign n3596 = ir == 8'b11101010;
  /* T80_MCode.vhd:1063:76  */
  assign n3597 = n3594 | n3596;
  /* T80_MCode.vhd:1063:87  */
  assign n3599 = ir == 8'b11110010;
  /* T80_MCode.vhd:1063:87  */
  assign n3600 = n3597 | n3599;
  /* T80_MCode.vhd:1063:98  */
  assign n3602 = ir == 8'b11111010;
  /* T80_MCode.vhd:1063:98  */
  assign n3603 = n3600 | n3602;
  /* T80_MCode.vhd:1147:38  */
  assign n3604 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1148:33  */
  assign n3606 = n3604 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1151:33  */
  assign n3608 = n3604 == 31'b0000000000000000000000000000011;
  assign n3609 = {n3608, n3606};
  /* T80_MCode.vhd:1147:33  */
  always @*
    case (n3609)
      2'b10: n3611 = 3'b101;
      2'b01: n3611 = n2222;
      default: n3611 = n2222;
    endcase
  /* T80_MCode.vhd:1147:33  */
  always @*
    case (n3609)
      2'b10: n3614 = 1'b0;
      2'b01: n3614 = 1'b1;
      default: n3614 = 1'b0;
    endcase
  /* T80_MCode.vhd:1147:33  */
  always @*
    case (n3609)
      2'b10: n3617 = 1'b1;
      2'b01: n3617 = 1'b0;
      default: n3617 = 1'b0;
    endcase
  /* T80_MCode.vhd:1147:33  */
  always @*
    case (n3609)
      2'b10: n3620 = 1'b1;
      2'b01: n3620 = 1'b0;
      default: n3620 = 1'b0;
    endcase
  /* T80_MCode.vhd:1147:33  */
  always @*
    case (n3609)
      2'b10: n3623 = 1'b0;
      2'b01: n3623 = 1'b1;
      default: n3623 = 1'b0;
    endcase
  /* T80_MCode.vhd:1143:17  */
  assign n3625 = ir == 8'b00011000;
  /* T80_MCode.vhd:1162:38  */
  assign n3626 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1165:45  */
  assign n3627 = f[0]; // extract
  /* T80_MCode.vhd:1165:54  */
  assign n3628 = ~n3627;
  /* T80_MCode.vhd:1165:41  */
  assign n3631 = n3628 ? 3'b010 : 3'b011;
  /* T80_MCode.vhd:1165:41  */
  assign n3634 = n3628 ? 1'b0 : 1'b1;
  /* T80_MCode.vhd:1163:33  */
  assign n3636 = n3626 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1170:33  */
  assign n3638 = n3626 == 31'b0000000000000000000000000000011;
  assign n3639 = {n3638, n3636};
  /* T80_MCode.vhd:1162:33  */
  always @*
    case (n3639)
      2'b10: n3641 = 3'b011;
      2'b01: n3641 = n3631;
      default: n3641 = 3'b011;
    endcase
  /* T80_MCode.vhd:1162:33  */
  always @*
    case (n3639)
      2'b10: n3644 = 3'b101;
      2'b01: n3644 = n2222;
      default: n3644 = n2222;
    endcase
  /* T80_MCode.vhd:1162:33  */
  always @*
    case (n3639)
      2'b10: n3647 = 1'b0;
      2'b01: n3647 = 1'b1;
      default: n3647 = 1'b0;
    endcase
  /* T80_MCode.vhd:1162:33  */
  always @*
    case (n3639)
      2'b10: n3650 = 1'b1;
      2'b01: n3650 = 1'b0;
      default: n3650 = 1'b0;
    endcase
  /* T80_MCode.vhd:1162:33  */
  always @*
    case (n3639)
      2'b10: n3653 = 1'b1;
      2'b01: n3653 = 1'b0;
      default: n3653 = 1'b0;
    endcase
  /* T80_MCode.vhd:1162:33  */
  always @*
    case (n3639)
      2'b10: n3655 = 1'b0;
      2'b01: n3655 = n3634;
      default: n3655 = 1'b0;
    endcase
  /* T80_MCode.vhd:1158:17  */
  assign n3657 = ir == 8'b00111000;
  /* T80_MCode.vhd:1181:38  */
  assign n3658 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1184:45  */
  assign n3659 = f[0]; // extract
  /* T80_MCode.vhd:1184:41  */
  assign n3662 = n3659 ? 3'b010 : 3'b011;
  /* T80_MCode.vhd:1184:41  */
  assign n3665 = n3659 ? 1'b0 : 1'b1;
  /* T80_MCode.vhd:1182:33  */
  assign n3667 = n3658 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1189:33  */
  assign n3669 = n3658 == 31'b0000000000000000000000000000011;
  assign n3670 = {n3669, n3667};
  /* T80_MCode.vhd:1181:33  */
  always @*
    case (n3670)
      2'b10: n3672 = 3'b011;
      2'b01: n3672 = n3662;
      default: n3672 = 3'b011;
    endcase
  /* T80_MCode.vhd:1181:33  */
  always @*
    case (n3670)
      2'b10: n3675 = 3'b101;
      2'b01: n3675 = n2222;
      default: n3675 = n2222;
    endcase
  /* T80_MCode.vhd:1181:33  */
  always @*
    case (n3670)
      2'b10: n3678 = 1'b0;
      2'b01: n3678 = 1'b1;
      default: n3678 = 1'b0;
    endcase
  /* T80_MCode.vhd:1181:33  */
  always @*
    case (n3670)
      2'b10: n3681 = 1'b1;
      2'b01: n3681 = 1'b0;
      default: n3681 = 1'b0;
    endcase
  /* T80_MCode.vhd:1181:33  */
  always @*
    case (n3670)
      2'b10: n3684 = 1'b1;
      2'b01: n3684 = 1'b0;
      default: n3684 = 1'b0;
    endcase
  /* T80_MCode.vhd:1181:33  */
  always @*
    case (n3670)
      2'b10: n3686 = 1'b0;
      2'b01: n3686 = n3665;
      default: n3686 = 1'b0;
    endcase
  /* T80_MCode.vhd:1177:17  */
  assign n3688 = ir == 8'b00110000;
  /* T80_MCode.vhd:1200:38  */
  assign n3689 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1203:45  */
  assign n3690 = f[6]; // extract
  /* T80_MCode.vhd:1203:54  */
  assign n3691 = ~n3690;
  /* T80_MCode.vhd:1203:41  */
  assign n3694 = n3691 ? 3'b010 : 3'b011;
  /* T80_MCode.vhd:1203:41  */
  assign n3697 = n3691 ? 1'b0 : 1'b1;
  /* T80_MCode.vhd:1201:33  */
  assign n3699 = n3689 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1208:33  */
  assign n3701 = n3689 == 31'b0000000000000000000000000000011;
  assign n3702 = {n3701, n3699};
  /* T80_MCode.vhd:1200:33  */
  always @*
    case (n3702)
      2'b10: n3704 = 3'b011;
      2'b01: n3704 = n3694;
      default: n3704 = 3'b011;
    endcase
  /* T80_MCode.vhd:1200:33  */
  always @*
    case (n3702)
      2'b10: n3707 = 3'b101;
      2'b01: n3707 = n2222;
      default: n3707 = n2222;
    endcase
  /* T80_MCode.vhd:1200:33  */
  always @*
    case (n3702)
      2'b10: n3710 = 1'b0;
      2'b01: n3710 = 1'b1;
      default: n3710 = 1'b0;
    endcase
  /* T80_MCode.vhd:1200:33  */
  always @*
    case (n3702)
      2'b10: n3713 = 1'b1;
      2'b01: n3713 = 1'b0;
      default: n3713 = 1'b0;
    endcase
  /* T80_MCode.vhd:1200:33  */
  always @*
    case (n3702)
      2'b10: n3716 = 1'b1;
      2'b01: n3716 = 1'b0;
      default: n3716 = 1'b0;
    endcase
  /* T80_MCode.vhd:1200:33  */
  always @*
    case (n3702)
      2'b10: n3718 = 1'b0;
      2'b01: n3718 = n3697;
      default: n3718 = 1'b0;
    endcase
  /* T80_MCode.vhd:1196:17  */
  assign n3720 = ir == 8'b00101000;
  /* T80_MCode.vhd:1219:38  */
  assign n3721 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1222:45  */
  assign n3722 = f[6]; // extract
  /* T80_MCode.vhd:1222:41  */
  assign n3725 = n3722 ? 3'b010 : 3'b011;
  /* T80_MCode.vhd:1222:41  */
  assign n3728 = n3722 ? 1'b0 : 1'b1;
  /* T80_MCode.vhd:1220:33  */
  assign n3730 = n3721 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1227:33  */
  assign n3732 = n3721 == 31'b0000000000000000000000000000011;
  assign n3733 = {n3732, n3730};
  /* T80_MCode.vhd:1219:33  */
  always @*
    case (n3733)
      2'b10: n3735 = 3'b011;
      2'b01: n3735 = n3725;
      default: n3735 = 3'b011;
    endcase
  /* T80_MCode.vhd:1219:33  */
  always @*
    case (n3733)
      2'b10: n3738 = 3'b101;
      2'b01: n3738 = n2222;
      default: n3738 = n2222;
    endcase
  /* T80_MCode.vhd:1219:33  */
  always @*
    case (n3733)
      2'b10: n3741 = 1'b0;
      2'b01: n3741 = 1'b1;
      default: n3741 = 1'b0;
    endcase
  /* T80_MCode.vhd:1219:33  */
  always @*
    case (n3733)
      2'b10: n3744 = 1'b1;
      2'b01: n3744 = 1'b0;
      default: n3744 = 1'b0;
    endcase
  /* T80_MCode.vhd:1219:33  */
  always @*
    case (n3733)
      2'b10: n3747 = 1'b1;
      2'b01: n3747 = 1'b0;
      default: n3747 = 1'b0;
    endcase
  /* T80_MCode.vhd:1219:33  */
  always @*
    case (n3733)
      2'b10: n3749 = 1'b0;
      2'b01: n3749 = n3728;
      default: n3749 = 1'b0;
    endcase
  /* T80_MCode.vhd:1215:17  */
  assign n3751 = ir == 8'b00100000;
  /* T80_MCode.vhd:1234:17  */
  assign n3753 = ir == 8'b11101001;
  /* T80_MCode.vhd:1249:38  */
  assign n3754 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1250:33  */
  assign n3757 = n3754 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1258:33  */
  assign n3759 = n3754 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1262:33  */
  assign n3761 = n3754 == 31'b0000000000000000000000000000011;
  assign n3762 = {n3761, n3759, n3757};
  /* T80_MCode.vhd:1249:33  */
  always @*
    case (n3762)
      3'b100: n3765 = 3'b101;
      3'b010: n3765 = n2222;
      3'b001: n3765 = 3'b101;
      default: n3765 = n2222;
    endcase
  /* T80_MCode.vhd:1249:33  */
  always @*
    case (n3762)
      3'b100: n3768 = 1'b0;
      3'b010: n3768 = 1'b1;
      3'b001: n3768 = 1'b0;
      default: n3768 = 1'b0;
    endcase
  /* T80_MCode.vhd:1249:33  */
  always @*
    case (n3762)
      3'b100: n3771 = 1'b0;
      3'b010: n3771 = 1'b0;
      3'b001: n3771 = 1'b1;
      default: n3771 = 1'b0;
    endcase
  /* T80_MCode.vhd:1249:33  */
  always @*
    case (n3762)
      3'b100: n3773 = 3'b000;
      3'b010: n3773 = 3'b000;
      3'b001: n3773 = 3'b000;
      default: n3773 = 3'b000;
    endcase
  /* T80_MCode.vhd:1249:33  */
  always @*
    case (n3762)
      3'b100: n3776 = 4'b0000;
      3'b010: n3776 = 4'b0000;
      3'b001: n3776 = 4'b1010;
      default: n3776 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1249:33  */
  always @*
    case (n3762)
      3'b100: n3778 = n2225;
      3'b010: n3778 = n2225;
      3'b001: n3778 = 4'b0010;
      default: n3778 = n2225;
    endcase
  /* T80_MCode.vhd:1249:33  */
  always @*
    case (n3762)
      3'b100: n3781 = 1'b0;
      3'b010: n3781 = 1'b0;
      3'b001: n3781 = 1'b1;
      default: n3781 = 1'b0;
    endcase
  /* T80_MCode.vhd:1249:33  */
  always @*
    case (n3762)
      3'b100: n3784 = 1'b1;
      3'b010: n3784 = 1'b0;
      3'b001: n3784 = 1'b0;
      default: n3784 = 1'b0;
    endcase
  /* T80_MCode.vhd:1249:33  */
  always @*
    case (n3762)
      3'b100: n3788 = 1'b0;
      3'b010: n3788 = 1'b1;
      3'b001: n3788 = 1'b1;
      default: n3788 = 1'b0;
    endcase
  /* T80_MCode.vhd:1249:33  */
  always @*
    case (n3762)
      3'b100: n3791 = 1'b1;
      3'b010: n3791 = 1'b0;
      3'b001: n3791 = 1'b0;
      default: n3791 = 1'b0;
    endcase
  /* T80_MCode.vhd:1249:33  */
  always @*
    case (n3762)
      3'b100: n3794 = 1'b0;
      3'b010: n3794 = 1'b1;
      3'b001: n3794 = 1'b0;
      default: n3794 = 1'b0;
    endcase
  /* T80_MCode.vhd:1237:17  */
  assign n3796 = ir == 8'b00010000;
  /* T80_MCode.vhd:1278:30  */
  assign n3797 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1279:25  */
  assign n3799 = n3797 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1282:25  */
  assign n3801 = n3797 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:1289:25  */
  assign n3803 = n3797 == 31'b0000000000000000000000000000100;
  /* T80_MCode.vhd:1294:25  */
  assign n3805 = n3797 == 31'b0000000000000000000000000000101;
  assign n3806 = {n3805, n3803, n3801, n3799};
  /* T80_MCode.vhd:1278:25  */
  always @*
    case (n3806)
      4'b1000: n3808 = n2222;
      4'b0100: n3808 = n2222;
      4'b0010: n3808 = 3'b100;
      4'b0001: n3808 = n2222;
      default: n3808 = n2222;
    endcase
  /* T80_MCode.vhd:1278:25  */
  always @*
    case (n3806)
      4'b1000: n3812 = 1'b0;
      4'b0100: n3812 = 1'b0;
      4'b0010: n3812 = 1'b1;
      4'b0001: n3812 = 1'b1;
      default: n3812 = 1'b0;
    endcase
  /* T80_MCode.vhd:1278:25  */
  always @*
    case (n3806)
      4'b1000: n3816 = 4'b0000;
      4'b0100: n3816 = 4'b1111;
      4'b0010: n3816 = 4'b1111;
      4'b0001: n3816 = 4'b0000;
      default: n3816 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1278:25  */
  always @*
    case (n3806)
      4'b1000: n3820 = 4'b0000;
      4'b0100: n3820 = 4'b1100;
      4'b0010: n3820 = 4'b1101;
      4'b0001: n3820 = 4'b0000;
      default: n3820 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1278:25  */
  always @*
    case (n3806)
      4'b1000: n3824 = 3'b111;
      4'b0100: n3824 = 3'b101;
      4'b0010: n3824 = 3'b101;
      4'b0001: n3824 = 3'b111;
      default: n3824 = 3'b111;
    endcase
  /* T80_MCode.vhd:1278:25  */
  always @*
    case (n3806)
      4'b1000: n3827 = 1'b1;
      4'b0100: n3827 = 1'b0;
      4'b0010: n3827 = 1'b0;
      4'b0001: n3827 = 1'b0;
      default: n3827 = 1'b0;
    endcase
  /* T80_MCode.vhd:1278:25  */
  always @*
    case (n3806)
      4'b1000: n3830 = 1'b0;
      4'b0100: n3830 = 1'b0;
      4'b0010: n3830 = 1'b0;
      4'b0001: n3830 = 1'b1;
      default: n3830 = 1'b0;
    endcase
  /* T80_MCode.vhd:1278:25  */
  always @*
    case (n3806)
      4'b1000: n3833 = 1'b0;
      4'b0100: n3833 = 1'b0;
      4'b0010: n3833 = 1'b1;
      4'b0001: n3833 = 1'b0;
      default: n3833 = 1'b0;
    endcase
  /* T80_MCode.vhd:1278:25  */
  always @*
    case (n3806)
      4'b1000: n3837 = 1'b1;
      4'b0100: n3837 = 1'b1;
      4'b0010: n3837 = 1'b0;
      4'b0001: n3837 = 1'b0;
      default: n3837 = 1'b0;
    endcase
  /* T80_MCode.vhd:1271:17  */
  assign n3839 = ir == 8'b11001101;
  /* T80_MCode.vhd:1307:38  */
  assign n3842 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1308:33  */
  assign n3844 = n3842 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1314:73  */
  assign n3846 = ir[5:3]; // extract
  /* T80_MCode.vhd:179:47  */
  assign n3851 = f[6]; // extract
  /* T80_MCode.vhd:179:56  */
  assign n3852 = ~n3851;
  /* T80_MCode.vhd:179:25  */
  assign n3854 = n3846 == 3'b000;
  /* T80_MCode.vhd:180:47  */
  assign n3855 = f[6]; // extract
  /* T80_MCode.vhd:180:25  */
  assign n3857 = n3846 == 3'b001;
  /* T80_MCode.vhd:181:47  */
  assign n3858 = f[0]; // extract
  /* T80_MCode.vhd:181:56  */
  assign n3859 = ~n3858;
  /* T80_MCode.vhd:181:25  */
  assign n3861 = n3846 == 3'b010;
  /* T80_MCode.vhd:182:47  */
  assign n3862 = f[0]; // extract
  /* T80_MCode.vhd:182:25  */
  assign n3864 = n3846 == 3'b011;
  /* T80_MCode.vhd:183:47  */
  assign n3865 = f[2]; // extract
  /* T80_MCode.vhd:183:56  */
  assign n3866 = ~n3865;
  /* T80_MCode.vhd:183:25  */
  assign n3868 = n3846 == 3'b100;
  /* T80_MCode.vhd:184:47  */
  assign n3869 = f[2]; // extract
  /* T80_MCode.vhd:184:25  */
  assign n3871 = n3846 == 3'b101;
  /* T80_MCode.vhd:185:47  */
  assign n3872 = f[7]; // extract
  /* T80_MCode.vhd:185:56  */
  assign n3873 = ~n3872;
  /* T80_MCode.vhd:185:25  */
  assign n3875 = n3846 == 3'b110;
  /* T80_MCode.vhd:186:47  */
  assign n3876 = f[7]; // extract
  /* T80_MCode.vhd:186:25  */
  assign n3878 = n3846 == 3'b111;
  assign n3879 = {n3878, n3875, n3871, n3868, n3864, n3861, n3857, n3854};
  /* T80_MCode.vhd:178:25  */
  always @*
    case (n3879)
      8'b10000000: n3881 = n3876;
      8'b01000000: n3881 = n3873;
      8'b00100000: n3881 = n3869;
      8'b00010000: n3881 = n3866;
      8'b00001000: n3881 = n3862;
      8'b00000100: n3881 = n3859;
      8'b00000010: n3881 = n3855;
      8'b00000001: n3881 = n3852;
      default: n3881 = 1'bX;
    endcase
  /* T80_MCode.vhd:1314:41  */
  assign n3884 = n3881 ? 3'b101 : 3'b011;
  /* T80_MCode.vhd:1314:41  */
  assign n3886 = n3881 ? 3'b100 : n2222;
  /* T80_MCode.vhd:1314:41  */
  assign n3889 = n3881 ? 4'b1111 : 4'b0000;
  /* T80_MCode.vhd:1314:41  */
  assign n3892 = n3881 ? 4'b1101 : 4'b0000;
  /* T80_MCode.vhd:1314:41  */
  assign n3895 = n3881 ? 3'b101 : 3'b111;
  /* T80_MCode.vhd:1311:33  */
  assign n3897 = n3842 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:1322:33  */
  assign n3899 = n3842 == 31'b0000000000000000000000000000100;
  /* T80_MCode.vhd:1327:33  */
  assign n3901 = n3842 == 31'b0000000000000000000000000000101;
  assign n3902 = {n3901, n3899, n3897, n3844};
  /* T80_MCode.vhd:1307:33  */
  always @*
    case (n3902)
      4'b1000: n3904 = 3'b101;
      4'b0100: n3904 = 3'b101;
      4'b0010: n3904 = n3884;
      4'b0001: n3904 = 3'b101;
      default: n3904 = 3'b101;
    endcase
  /* T80_MCode.vhd:1307:33  */
  always @*
    case (n3902)
      4'b1000: n3906 = n2222;
      4'b0100: n3906 = n2222;
      4'b0010: n3906 = n3886;
      4'b0001: n3906 = n2222;
      default: n3906 = n2222;
    endcase
  /* T80_MCode.vhd:1307:33  */
  always @*
    case (n3902)
      4'b1000: n3910 = 1'b0;
      4'b0100: n3910 = 1'b0;
      4'b0010: n3910 = 1'b1;
      4'b0001: n3910 = 1'b1;
      default: n3910 = 1'b0;
    endcase
  /* T80_MCode.vhd:1307:33  */
  always @*
    case (n3902)
      4'b1000: n3913 = 4'b0000;
      4'b0100: n3913 = 4'b1111;
      4'b0010: n3913 = n3889;
      4'b0001: n3913 = 4'b0000;
      default: n3913 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1307:33  */
  always @*
    case (n3902)
      4'b1000: n3916 = 4'b0000;
      4'b0100: n3916 = 4'b1100;
      4'b0010: n3916 = n3892;
      4'b0001: n3916 = 4'b0000;
      default: n3916 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1307:33  */
  always @*
    case (n3902)
      4'b1000: n3919 = 3'b111;
      4'b0100: n3919 = 3'b101;
      4'b0010: n3919 = n3895;
      4'b0001: n3919 = 3'b111;
      default: n3919 = 3'b111;
    endcase
  /* T80_MCode.vhd:1307:33  */
  always @*
    case (n3902)
      4'b1000: n3922 = 1'b1;
      4'b0100: n3922 = 1'b0;
      4'b0010: n3922 = 1'b0;
      4'b0001: n3922 = 1'b0;
      default: n3922 = 1'b0;
    endcase
  /* T80_MCode.vhd:1307:33  */
  always @*
    case (n3902)
      4'b1000: n3925 = 1'b0;
      4'b0100: n3925 = 1'b0;
      4'b0010: n3925 = 1'b0;
      4'b0001: n3925 = 1'b1;
      default: n3925 = 1'b0;
    endcase
  /* T80_MCode.vhd:1307:33  */
  always @*
    case (n3902)
      4'b1000: n3928 = 1'b0;
      4'b0100: n3928 = 1'b0;
      4'b0010: n3928 = 1'b1;
      4'b0001: n3928 = 1'b0;
      default: n3928 = 1'b0;
    endcase
  /* T80_MCode.vhd:1307:33  */
  always @*
    case (n3902)
      4'b1000: n3932 = 1'b1;
      4'b0100: n3932 = 1'b1;
      4'b0010: n3932 = 1'b0;
      4'b0001: n3932 = 1'b0;
      default: n3932 = 1'b0;
    endcase
  /* T80_MCode.vhd:1299:17  */
  assign n3934 = ir == 8'b11000100;
  /* T80_MCode.vhd:1299:32  */
  assign n3936 = ir == 8'b11001100;
  /* T80_MCode.vhd:1299:32  */
  assign n3937 = n3934 | n3936;
  /* T80_MCode.vhd:1299:43  */
  assign n3939 = ir == 8'b11010100;
  /* T80_MCode.vhd:1299:43  */
  assign n3940 = n3937 | n3939;
  /* T80_MCode.vhd:1299:54  */
  assign n3942 = ir == 8'b11011100;
  /* T80_MCode.vhd:1299:54  */
  assign n3943 = n3940 | n3942;
  /* T80_MCode.vhd:1299:65  */
  assign n3945 = ir == 8'b11100100;
  /* T80_MCode.vhd:1299:65  */
  assign n3946 = n3943 | n3945;
  /* T80_MCode.vhd:1299:76  */
  assign n3948 = ir == 8'b11101100;
  /* T80_MCode.vhd:1299:76  */
  assign n3949 = n3946 | n3948;
  /* T80_MCode.vhd:1299:87  */
  assign n3951 = ir == 8'b11110100;
  /* T80_MCode.vhd:1299:87  */
  assign n3952 = n3949 | n3951;
  /* T80_MCode.vhd:1299:98  */
  assign n3954 = ir == 8'b11111100;
  /* T80_MCode.vhd:1299:98  */
  assign n3955 = n3952 | n3954;
  /* T80_MCode.vhd:1351:38  */
  assign n3956 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1352:33  */
  assign n3958 = n3956 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1355:33  */
  assign n3960 = n3956 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1359:33  */
  assign n3962 = n3956 == 31'b0000000000000000000000000000011;
  assign n3963 = {n3962, n3960, n3958};
  /* T80_MCode.vhd:1351:33  */
  always @*
    case (n3963)
      3'b100: n3967 = 4'b0111;
      3'b010: n3967 = 4'b0111;
      3'b001: n3967 = 4'b0000;
      default: n3967 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1351:33  */
  always @*
    case (n3963)
      3'b100: n3971 = 3'b111;
      3'b010: n3971 = 3'b101;
      3'b001: n3971 = 3'b101;
      default: n3971 = 3'b111;
    endcase
  /* T80_MCode.vhd:1351:33  */
  always @*
    case (n3963)
      3'b100: n3974 = 1'b1;
      3'b010: n3974 = 1'b0;
      3'b001: n3974 = 1'b0;
      default: n3974 = 1'b0;
    endcase
  /* T80_MCode.vhd:1351:33  */
  always @*
    case (n3963)
      3'b100: n3977 = 1'b0;
      3'b010: n3977 = 1'b1;
      3'b001: n3977 = 1'b0;
      default: n3977 = 1'b0;
    endcase
  /* T80_MCode.vhd:1333:17  */
  assign n3979 = ir == 8'b11001001;
  /* T80_MCode.vhd:1437:46  */
  assign n3981 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1439:81  */
  assign n3983 = ir[5:3]; // extract
  /* T80_MCode.vhd:179:47  */
  assign n3988 = f[6]; // extract
  /* T80_MCode.vhd:179:56  */
  assign n3989 = ~n3988;
  /* T80_MCode.vhd:179:25  */
  assign n3991 = n3983 == 3'b000;
  /* T80_MCode.vhd:180:47  */
  assign n3992 = f[6]; // extract
  /* T80_MCode.vhd:180:25  */
  assign n3994 = n3983 == 3'b001;
  /* T80_MCode.vhd:181:47  */
  assign n3995 = f[0]; // extract
  /* T80_MCode.vhd:181:56  */
  assign n3996 = ~n3995;
  /* T80_MCode.vhd:181:25  */
  assign n3998 = n3983 == 3'b010;
  /* T80_MCode.vhd:182:47  */
  assign n3999 = f[0]; // extract
  /* T80_MCode.vhd:182:25  */
  assign n4001 = n3983 == 3'b011;
  /* T80_MCode.vhd:183:47  */
  assign n4002 = f[2]; // extract
  /* T80_MCode.vhd:183:56  */
  assign n4003 = ~n4002;
  /* T80_MCode.vhd:183:25  */
  assign n4005 = n3983 == 3'b100;
  /* T80_MCode.vhd:184:47  */
  assign n4006 = f[2]; // extract
  /* T80_MCode.vhd:184:25  */
  assign n4008 = n3983 == 3'b101;
  /* T80_MCode.vhd:185:47  */
  assign n4009 = f[7]; // extract
  /* T80_MCode.vhd:185:56  */
  assign n4010 = ~n4009;
  /* T80_MCode.vhd:185:25  */
  assign n4012 = n3983 == 3'b110;
  /* T80_MCode.vhd:186:47  */
  assign n4013 = f[7]; // extract
  /* T80_MCode.vhd:186:25  */
  assign n4015 = n3983 == 3'b111;
  assign n4016 = {n4015, n4012, n4008, n4005, n4001, n3998, n3994, n3991};
  /* T80_MCode.vhd:178:25  */
  always @*
    case (n4016)
      8'b10000000: n4018 = n4013;
      8'b01000000: n4018 = n4010;
      8'b00100000: n4018 = n4006;
      8'b00010000: n4018 = n4003;
      8'b00001000: n4018 = n3999;
      8'b00000100: n4018 = n3996;
      8'b00000010: n4018 = n3992;
      8'b00000001: n4018 = n3989;
      default: n4018 = 1'bX;
    endcase
  /* T80_MCode.vhd:1439:49  */
  assign n4021 = n4018 ? 3'b011 : 3'b001;
  /* T80_MCode.vhd:1439:49  */
  assign n4024 = n4018 ? 3'b101 : 3'b111;
  /* T80_MCode.vhd:1438:41  */
  assign n4026 = n3981 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1445:41  */
  assign n4028 = n3981 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1449:41  */
  assign n4030 = n3981 == 31'b0000000000000000000000000000011;
  assign n4031 = {n4030, n4028, n4026};
  /* T80_MCode.vhd:1437:41  */
  always @*
    case (n4031)
      3'b100: n4033 = 3'b011;
      3'b010: n4033 = 3'b011;
      3'b001: n4033 = n4021;
      default: n4033 = 3'b011;
    endcase
  /* T80_MCode.vhd:1437:41  */
  always @*
    case (n4031)
      3'b100: n4036 = n2222;
      3'b010: n4036 = n2222;
      3'b001: n4036 = 3'b101;
      default: n4036 = n2222;
    endcase
  /* T80_MCode.vhd:1437:41  */
  always @*
    case (n4031)
      3'b100: n4040 = 4'b0111;
      3'b010: n4040 = 4'b0111;
      3'b001: n4040 = 4'b0000;
      default: n4040 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1437:41  */
  always @*
    case (n4031)
      3'b100: n4043 = 3'b111;
      3'b010: n4043 = 3'b101;
      3'b001: n4043 = n4024;
      default: n4043 = 3'b111;
    endcase
  /* T80_MCode.vhd:1437:41  */
  always @*
    case (n4031)
      3'b100: n4046 = 1'b1;
      3'b010: n4046 = 1'b0;
      3'b001: n4046 = 1'b0;
      default: n4046 = 1'b0;
    endcase
  /* T80_MCode.vhd:1437:41  */
  always @*
    case (n4031)
      3'b100: n4049 = 1'b0;
      3'b010: n4049 = 1'b1;
      3'b001: n4049 = 1'b0;
      default: n4049 = 1'b0;
    endcase
  /* T80_MCode.vhd:1365:17  */
  assign n4051 = ir == 8'b11000000;
  /* T80_MCode.vhd:1365:32  */
  assign n4053 = ir == 8'b11001000;
  /* T80_MCode.vhd:1365:32  */
  assign n4054 = n4051 | n4053;
  /* T80_MCode.vhd:1365:43  */
  assign n4056 = ir == 8'b11010000;
  /* T80_MCode.vhd:1365:43  */
  assign n4057 = n4054 | n4056;
  /* T80_MCode.vhd:1365:54  */
  assign n4059 = ir == 8'b11011000;
  /* T80_MCode.vhd:1365:54  */
  assign n4060 = n4057 | n4059;
  /* T80_MCode.vhd:1365:65  */
  assign n4062 = ir == 8'b11100000;
  /* T80_MCode.vhd:1365:65  */
  assign n4063 = n4060 | n4062;
  /* T80_MCode.vhd:1365:76  */
  assign n4065 = ir == 8'b11101000;
  /* T80_MCode.vhd:1365:76  */
  assign n4066 = n4063 | n4065;
  /* T80_MCode.vhd:1365:87  */
  assign n4068 = ir == 8'b11110000;
  /* T80_MCode.vhd:1365:87  */
  assign n4069 = n4066 | n4068;
  /* T80_MCode.vhd:1365:98  */
  assign n4071 = ir == 8'b11111000;
  /* T80_MCode.vhd:1365:98  */
  assign n4072 = n4069 | n4071;
  /* T80_MCode.vhd:1478:38  */
  assign n4073 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1479:33  */
  assign n4075 = n4073 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1484:33  */
  assign n4077 = n4073 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1489:33  */
  assign n4079 = n4073 == 31'b0000000000000000000000000000011;
  assign n4080 = {n4079, n4077, n4075};
  /* T80_MCode.vhd:1478:33  */
  always @*
    case (n4080)
      3'b100: n4082 = n2222;
      3'b010: n4082 = n2222;
      3'b001: n4082 = 3'b101;
      default: n4082 = n2222;
    endcase
  /* T80_MCode.vhd:1478:33  */
  always @*
    case (n4080)
      3'b100: n4086 = 4'b0000;
      3'b010: n4086 = 4'b1111;
      3'b001: n4086 = 4'b1111;
      default: n4086 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1478:33  */
  always @*
    case (n4080)
      3'b100: n4090 = 4'b0000;
      3'b010: n4090 = 4'b1100;
      3'b001: n4090 = 4'b1101;
      default: n4090 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1478:33  */
  always @*
    case (n4080)
      3'b100: n4094 = 3'b111;
      3'b010: n4094 = 3'b101;
      3'b001: n4094 = 3'b101;
      default: n4094 = 3'b111;
    endcase
  /* T80_MCode.vhd:1478:33  */
  always @*
    case (n4080)
      3'b100: n4097 = 1'b1;
      3'b010: n4097 = 1'b0;
      3'b001: n4097 = 1'b0;
      default: n4097 = 1'b0;
    endcase
  /* T80_MCode.vhd:1478:33  */
  always @*
    case (n4080)
      3'b100: n4101 = 1'b1;
      3'b010: n4101 = 1'b1;
      3'b001: n4101 = 1'b0;
      default: n4101 = 1'b0;
    endcase
  /* T80_MCode.vhd:1456:17  */
  assign n4103 = ir == 8'b11000111;
  /* T80_MCode.vhd:1456:32  */
  assign n4105 = ir == 8'b11001111;
  /* T80_MCode.vhd:1456:32  */
  assign n4106 = n4103 | n4105;
  /* T80_MCode.vhd:1456:43  */
  assign n4108 = ir == 8'b11010111;
  /* T80_MCode.vhd:1456:43  */
  assign n4109 = n4106 | n4108;
  /* T80_MCode.vhd:1456:54  */
  assign n4111 = ir == 8'b11011111;
  /* T80_MCode.vhd:1456:54  */
  assign n4112 = n4109 | n4111;
  /* T80_MCode.vhd:1456:65  */
  assign n4114 = ir == 8'b11100111;
  /* T80_MCode.vhd:1456:65  */
  assign n4115 = n4112 | n4114;
  /* T80_MCode.vhd:1456:76  */
  assign n4117 = ir == 8'b11101111;
  /* T80_MCode.vhd:1456:76  */
  assign n4118 = n4115 | n4117;
  /* T80_MCode.vhd:1456:87  */
  assign n4120 = ir == 8'b11110111;
  /* T80_MCode.vhd:1456:87  */
  assign n4121 = n4118 | n4120;
  /* T80_MCode.vhd:1456:98  */
  assign n4123 = ir == 8'b11111111;
  /* T80_MCode.vhd:1456:98  */
  assign n4124 = n4121 | n4123;
  /* T80_MCode.vhd:1501:38  */
  assign n4125 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1502:33  */
  assign n4127 = n4125 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1505:33  */
  assign n4129 = n4125 == 31'b0000000000000000000000000000011;
  assign n4130 = {n4129, n4127};
  /* T80_MCode.vhd:1501:33  */
  always @*
    case (n4130)
      2'b10: n4133 = 1'b0;
      2'b01: n4133 = 1'b1;
      default: n4133 = 1'b0;
    endcase
  /* T80_MCode.vhd:1501:33  */
  always @*
    case (n4130)
      2'b10: n4136 = 1'b1;
      2'b01: n4136 = 1'b0;
      default: n4136 = 1'b0;
    endcase
  /* T80_MCode.vhd:1501:33  */
  always @*
    case (n4130)
      2'b10: n4139 = 3'b111;
      2'b01: n4139 = 3'b100;
      default: n4139 = 3'b111;
    endcase
  /* T80_MCode.vhd:1501:33  */
  always @*
    case (n4130)
      2'b10: n4142 = 1'b1;
      2'b01: n4142 = 1'b0;
      default: n4142 = 1'b0;
    endcase
  /* T80_MCode.vhd:1497:17  */
  assign n4144 = ir == 8'b11011011;
  /* T80_MCode.vhd:1515:38  */
  assign n4145 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1516:33  */
  assign n4147 = n4145 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1520:33  */
  assign n4149 = n4145 == 31'b0000000000000000000000000000011;
  assign n4150 = {n4149, n4147};
  /* T80_MCode.vhd:1515:33  */
  always @*
    case (n4150)
      2'b10: n4153 = 1'b0;
      2'b01: n4153 = 1'b1;
      default: n4153 = 1'b0;
    endcase
  /* T80_MCode.vhd:1515:33  */
  always @*
    case (n4150)
      2'b10: n4156 = 4'b0000;
      2'b01: n4156 = 4'b0111;
      default: n4156 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1515:33  */
  always @*
    case (n4150)
      2'b10: n4159 = 3'b111;
      2'b01: n4159 = 3'b100;
      default: n4159 = 3'b111;
    endcase
  /* T80_MCode.vhd:1515:33  */
  always @*
    case (n4150)
      2'b10: n4162 = 1'b1;
      2'b01: n4162 = 1'b0;
      default: n4162 = 1'b0;
    endcase
  /* T80_MCode.vhd:1515:33  */
  always @*
    case (n4150)
      2'b10: n4165 = 1'b1;
      2'b01: n4165 = 1'b0;
      default: n4165 = 1'b0;
    endcase
  /* T80_MCode.vhd:1511:17  */
  assign n4167 = ir == 8'b11010011;
  /* T80_MCode.vhd:1533:17  */
  assign n4169 = ir == 8'b11001011;
  /* T80_MCode.vhd:1538:17  */
  assign n4171 = ir == 8'b11101101;
  /* T80_MCode.vhd:1543:17  */
  assign n4173 = ir == 8'b11011101;
  /* T80_MCode.vhd:1543:32  */
  assign n4175 = ir == 8'b11111101;
  /* T80_MCode.vhd:1543:32  */
  assign n4176 = n4173 | n4175;
  assign n4177 = {n4176, n4171, n4169, n4167, n4144, n4124, n4072, n3979, n3955, n3839, n3796, n3753, n3751, n3720, n3688, n3657, n3625, n3603, n3521, n3500, n3488, n3476, n3464, n3369, n3367, n3365, n3363, n3264, n3262, n3260, n3258, n3255, n3220, n3200, n3165, n3145, n3106, n3063, n2895, n2846, n2844, n2842, n2840, n2787, n2738, n2736, n2699, n2662, n2615, n2586, n2566, n2546, n2523, n2509, n2495, n2473, n2436, n2402, n2371};
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4210 = 3'b001;
      59'b01000000000000000000000000000000000000000000000000000000000: n4210 = 3'b001;
      59'b00100000000000000000000000000000000000000000000000000000000: n4210 = 3'b001;
      59'b00010000000000000000000000000000000000000000000000000000000: n4210 = 3'b011;
      59'b00001000000000000000000000000000000000000000000000000000000: n4210 = 3'b011;
      59'b00000100000000000000000000000000000000000000000000000000000: n4210 = 3'b011;
      59'b00000010000000000000000000000000000000000000000000000000000: n4210 = n4033;
      59'b00000001000000000000000000000000000000000000000000000000000: n4210 = 3'b011;
      59'b00000000100000000000000000000000000000000000000000000000000: n4210 = n3904;
      59'b00000000010000000000000000000000000000000000000000000000000: n4210 = 3'b101;
      59'b00000000001000000000000000000000000000000000000000000000000: n4210 = 3'b011;
      59'b00000000000100000000000000000000000000000000000000000000000: n4210 = 3'b001;
      59'b00000000000010000000000000000000000000000000000000000000000: n4210 = n3735;
      59'b00000000000001000000000000000000000000000000000000000000000: n4210 = n3704;
      59'b00000000000000100000000000000000000000000000000000000000000: n4210 = n3672;
      59'b00000000000000010000000000000000000000000000000000000000000: n4210 = n3641;
      59'b00000000000000001000000000000000000000000000000000000000000: n4210 = 3'b011;
      59'b00000000000000000100000000000000000000000000000000000000000: n4210 = 3'b011;
      59'b00000000000000000010000000000000000000000000000000000000000: n4210 = 3'b011;
      59'b00000000000000000001000000000000000000000000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000100000000000000000000000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000010000000000000000000000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000001000000000000000000000000000000000000: n4210 = 3'b011;
      59'b00000000000000000000000100000000000000000000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000000010000000000000000000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000000001000000000000000000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000000000100000000000000000000000000000000: n4210 = n3350;
      59'b00000000000000000000000000010000000000000000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000000000001000000000000000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000000000000100000000000000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000000000000010000000000000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000000000000001000000000000000000000000000: n4210 = 3'b011;
      59'b00000000000000000000000000000000100000000000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000000000000000010000000000000000000000000: n4210 = 3'b011;
      59'b00000000000000000000000000000000001000000000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000000000000000000100000000000000000000000: n4210 = 3'b010;
      59'b00000000000000000000000000000000000010000000000000000000000: n4210 = 3'b010;
      59'b00000000000000000000000000000000000001000000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000000000000000000000100000000000000000000: n4210 = 3'b101;
      59'b00000000000000000000000000000000000000010000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000000000000000000000001000000000000000000: n4210 = 3'b001;
      59'b00000000000000000000000000000000000000000100000000000000000: n4210 = 3'b001;
      59'b00000000000000000000000000000000000000000010000000000000000: n4210 = 3'b011;
      59'b00000000000000000000000000000000000000000001000000000000000: n4210 = 3'b011;
      59'b00000000000000000000000000000000000000000000100000000000000: n4210 = 3'b001;
      59'b00000000000000000000000000000000000000000000010000000000000: n4210 = 3'b101;
      59'b00000000000000000000000000000000000000000000001000000000000: n4210 = 3'b101;
      59'b00000000000000000000000000000000000000000000000100000000000: n4210 = 3'b011;
      59'b00000000000000000000000000000000000000000000000010000000000: n4210 = 3'b100;
      59'b00000000000000000000000000000000000000000000000001000000000: n4210 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000100000000: n4210 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000010000000: n4210 = 3'b100;
      59'b00000000000000000000000000000000000000000000000000001000000: n4210 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000000100000: n4210 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000000010000: n4210 = 3'b011;
      59'b00000000000000000000000000000000000000000000000000000001000: n4210 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000000000100: n4210 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000000000010: n4210 = 3'b010;
      59'b00000000000000000000000000000000000000000000000000000000001: n4210 = 3'b001;
      default: n4210 = 3'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4215 = n2222;
      59'b01000000000000000000000000000000000000000000000000000000000: n4215 = n2222;
      59'b00100000000000000000000000000000000000000000000000000000000: n4215 = n2222;
      59'b00010000000000000000000000000000000000000000000000000000000: n4215 = n2222;
      59'b00001000000000000000000000000000000000000000000000000000000: n4215 = n2222;
      59'b00000100000000000000000000000000000000000000000000000000000: n4215 = n4082;
      59'b00000010000000000000000000000000000000000000000000000000000: n4215 = n4036;
      59'b00000001000000000000000000000000000000000000000000000000000: n4215 = n2222;
      59'b00000000100000000000000000000000000000000000000000000000000: n4215 = n3906;
      59'b00000000010000000000000000000000000000000000000000000000000: n4215 = n3808;
      59'b00000000001000000000000000000000000000000000000000000000000: n4215 = n3765;
      59'b00000000000100000000000000000000000000000000000000000000000: n4215 = n2222;
      59'b00000000000010000000000000000000000000000000000000000000000: n4215 = n3738;
      59'b00000000000001000000000000000000000000000000000000000000000: n4215 = n3707;
      59'b00000000000000100000000000000000000000000000000000000000000: n4215 = n3675;
      59'b00000000000000010000000000000000000000000000000000000000000: n4215 = n3644;
      59'b00000000000000001000000000000000000000000000000000000000000: n4215 = n3611;
      59'b00000000000000000100000000000000000000000000000000000000000: n4215 = n2222;
      59'b00000000000000000010000000000000000000000000000000000000000: n4215 = n2222;
      59'b00000000000000000001000000000000000000000000000000000000000: n4215 = n2222;
      59'b00000000000000000000100000000000000000000000000000000000000: n4215 = 3'b110;
      59'b00000000000000000000010000000000000000000000000000000000000: n4215 = 3'b110;
      59'b00000000000000000000001000000000000000000000000000000000000: n4215 = n3419;
      59'b00000000000000000000000100000000000000000000000000000000000: n4215 = n2222;
      59'b00000000000000000000000010000000000000000000000000000000000: n4215 = n2222;
      59'b00000000000000000000000001000000000000000000000000000000000: n4215 = n2222;
      59'b00000000000000000000000000100000000000000000000000000000000: n4215 = n3351;
      59'b00000000000000000000000000010000000000000000000000000000000: n4215 = n2222;
      59'b00000000000000000000000000001000000000000000000000000000000: n4215 = n2222;
      59'b00000000000000000000000000000100000000000000000000000000000: n4215 = n2222;
      59'b00000000000000000000000000000010000000000000000000000000000: n4215 = n2222;
      59'b00000000000000000000000000000001000000000000000000000000000: n4215 = n3230;
      59'b00000000000000000000000000000000100000000000000000000000000: n4215 = n2222;
      59'b00000000000000000000000000000000010000000000000000000000000: n4215 = n3175;
      59'b00000000000000000000000000000000001000000000000000000000000: n4215 = n2222;
      59'b00000000000000000000000000000000000100000000000000000000000: n4215 = n2222;
      59'b00000000000000000000000000000000000010000000000000000000000: n4215 = n2222;
      59'b00000000000000000000000000000000000001000000000000000000000: n4215 = n2222;
      59'b00000000000000000000000000000000000000100000000000000000000: n4215 = n2861;
      59'b00000000000000000000000000000000000000010000000000000000000: n4215 = n2222;
      59'b00000000000000000000000000000000000000001000000000000000000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000100000000000000000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000010000000000000000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000001000000000000000: n4215 = n2762;
      59'b00000000000000000000000000000000000000000000100000000000000: n4215 = 3'b110;
      59'b00000000000000000000000000000000000000000000010000000000000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000000001000000000000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000000000100000000000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000000000010000000000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000000000001000000000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000000000000100000000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000000000000010000000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000000000000001000000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000000000000000100000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000000000000000010000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000000000000000001000: n4215 = n2222;
      59'b00000000000000000000000000000000000000000000000000000000100: n4215 = n2222;
      59'b00000000000000000000000000000000000000000000000000000000010: n4215 = n2222;
      59'b00000000000000000000000000000000000000000000000000000000001: n4215 = n2222;
      default: n4215 = 3'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4221 = 2'b11;
      59'b01000000000000000000000000000000000000000000000000000000000: n4221 = 2'b10;
      59'b00100000000000000000000000000000000000000000000000000000000: n4221 = 2'b01;
      59'b00010000000000000000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00001000000000000000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000100000000000000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000010000000000000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000001000000000000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000100000000000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000010000000000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000001000000000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000100000000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000010000000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000001000000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000100000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000010000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000001000000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000100000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000010000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000001000000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000100000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000010000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000001000000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000100000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000010000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000001000000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000100000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000010000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000001000000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000100000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000010000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000001000000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000100000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000010000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000001000000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000100000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000010000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000001000000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000100000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000010000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000001000000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000100000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000010000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000001000000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000100000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000010000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000001000000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000000100000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000000010000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000000001000000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000100000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000010000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000001000000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000100000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000010000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000001000: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000100: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000010: n4221 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000001: n4221 = 2'b00;
      default: n4221 = 2'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4224 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4224 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4224 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4224 = n4153;
      59'b00001000000000000000000000000000000000000000000000000000000: n4224 = n4133;
      59'b00000100000000000000000000000000000000000000000000000000000: n4224 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4224 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4224 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4224 = n3910;
      59'b00000000010000000000000000000000000000000000000000000000000: n4224 = n3812;
      59'b00000000001000000000000000000000000000000000000000000000000: n4224 = n3768;
      59'b00000000000100000000000000000000000000000000000000000000000: n4224 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4224 = n3741;
      59'b00000000000001000000000000000000000000000000000000000000000: n4224 = n3710;
      59'b00000000000000100000000000000000000000000000000000000000000: n4224 = n3678;
      59'b00000000000000010000000000000000000000000000000000000000000: n4224 = n3647;
      59'b00000000000000001000000000000000000000000000000000000000000: n4224 = n3614;
      59'b00000000000000000100000000000000000000000000000000000000000: n4224 = n3572;
      59'b00000000000000000010000000000000000000000000000000000000000: n4224 = n3510;
      59'b00000000000000000001000000000000000000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4224 = n3353;
      59'b00000000000000000000000000010000000000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4224 = n3112;
      59'b00000000000000000000000000000000000010000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4224 = n2713;
      59'b00000000000000000000000000000000000000000000001000000000000: n4224 = n2678;
      59'b00000000000000000000000000000000000000000000000100000000000: n4224 = n2643;
      59'b00000000000000000000000000000000000000000000000010000000000: n4224 = n2598;
      59'b00000000000000000000000000000000000000000000000001000000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4224 = n2535;
      59'b00000000000000000000000000000000000000000000000000001000000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4224 = n2483;
      59'b00000000000000000000000000000000000000000000000000000001000: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4224 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4224 = n2377;
      59'b00000000000000000000000000000000000000000000000000000000001: n4224 = 1'b0;
      default: n4224 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4227 = n2716;
      59'b00000000000000000000000000000000000000000000001000000000000: n4227 = n2681;
      59'b00000000000000000000000000000000000000000000000100000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4227 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4227 = 1'b0;
      default: n4227 = 1'bX;
    endcase
  assign n4228 = n2766[1:0]; // extract
  assign n4229 = n2817[1:0]; // extract
  assign n4230 = n2865[1:0]; // extract
  assign n4231 = n3354[1:0]; // extract
  assign n4232 = n3816[1:0]; // extract
  assign n4233 = n3913[1:0]; // extract
  assign n4234 = n3967[1:0]; // extract
  assign n4235 = n4040[1:0]; // extract
  assign n4236 = n4086[1:0]; // extract
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b01000000000000000000000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00100000000000000000000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00010000000000000000000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00001000000000000000000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000100000000000000000000000000000000000000000000000000000: n4239 = n4236;
      59'b00000010000000000000000000000000000000000000000000000000000: n4239 = n4235;
      59'b00000001000000000000000000000000000000000000000000000000000: n4239 = n4234;
      59'b00000000100000000000000000000000000000000000000000000000000: n4239 = n4233;
      59'b00000000010000000000000000000000000000000000000000000000000: n4239 = n4232;
      59'b00000000001000000000000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000100000000000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000010000000000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000001000000000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000100000000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000010000000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000001000000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000100000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000010000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000001000000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000100000000000000000000000000000000000000: n4239 = n2217;
      59'b00000000000000000000010000000000000000000000000000000000000: n4239 = n2217;
      59'b00000000000000000000001000000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000100000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000010000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000001000000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000100000000000000000000000000000000: n4239 = n4231;
      59'b00000000000000000000000000010000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000001000000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000100000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000010000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000001000000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000100000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000010000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000001000000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000100000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000010000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000001000000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000100000000000000000000: n4239 = n4230;
      59'b00000000000000000000000000000000000000010000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000001000000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000100000000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000010000000000000000: n4239 = n4229;
      59'b00000000000000000000000000000000000000000001000000000000000: n4239 = n4228;
      59'b00000000000000000000000000000000000000000000100000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000010000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000001000000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000000100000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000000010000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000000001000000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000100000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000010000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000001000000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000100000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000010000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000001000: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000100: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000010: n4239 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000001: n4239 = 2'b00;
      default: n4239 = 2'bX;
    endcase
  assign n4240 = n2766[3:2]; // extract
  assign n4241 = n2817[3:2]; // extract
  assign n4242 = n2865[3:2]; // extract
  assign n4243 = n3354[3:2]; // extract
  assign n4244 = n3816[3:2]; // extract
  assign n4245 = n3913[3:2]; // extract
  assign n4246 = n3967[3:2]; // extract
  assign n4247 = n4040[3:2]; // extract
  assign n4248 = n4086[3:2]; // extract
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b01000000000000000000000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00100000000000000000000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00010000000000000000000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00001000000000000000000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000100000000000000000000000000000000000000000000000000000: n4251 = n4248;
      59'b00000010000000000000000000000000000000000000000000000000000: n4251 = n4247;
      59'b00000001000000000000000000000000000000000000000000000000000: n4251 = n4246;
      59'b00000000100000000000000000000000000000000000000000000000000: n4251 = n4245;
      59'b00000000010000000000000000000000000000000000000000000000000: n4251 = n4244;
      59'b00000000001000000000000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000100000000000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000010000000000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000001000000000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000100000000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000010000000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000001000000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000100000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000010000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000001000000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000100000000000000000000000000000000000000: n4251 = 2'b11;
      59'b00000000000000000000010000000000000000000000000000000000000: n4251 = 2'b01;
      59'b00000000000000000000001000000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000100000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000010000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000001000000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000100000000000000000000000000000000: n4251 = n4243;
      59'b00000000000000000000000000010000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000001000000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000100000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000010000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000001000000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000100000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000010000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000001000000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000100000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000010000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000001000000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000100000000000000000000: n4251 = n4242;
      59'b00000000000000000000000000000000000000010000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000001000000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000100000000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000010000000000000000: n4251 = n4241;
      59'b00000000000000000000000000000000000000000001000000000000000: n4251 = n4240;
      59'b00000000000000000000000000000000000000000000100000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000010000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000001000000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000000100000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000000010000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000000001000000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000100000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000010000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000001000000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000100000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000010000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000001000: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000100: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000010: n4251 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000001: n4251 = 2'b00;
      default: n4251 = 2'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4260 = n3771;
      59'b00000000000100000000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4260 = 1'b1;
      59'b00000000000000000000100000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4260 = n3423;
      59'b00000000000000000000000100000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4260 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4260 = 1'b1;
      59'b00000000000000000000000000000001000000000000000000000000000: n4260 = n3233;
      59'b00000000000000000000000000000000100000000000000000000000000: n4260 = 1'b1;
      59'b00000000000000000000000000000000010000000000000000000000000: n4260 = n3178;
      59'b00000000000000000000000000000000001000000000000000000000000: n4260 = 1'b1;
      59'b00000000000000000000000000000000000100000000000000000000000: n4260 = n3115;
      59'b00000000000000000000000000000000000010000000000000000000000: n4260 = n3073;
      59'b00000000000000000000000000000000000001000000000000000000000: n4260 = 1'b1;
      59'b00000000000000000000000000000000000000100000000000000000000: n4260 = n2869;
      59'b00000000000000000000000000000000000000010000000000000000000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4260 = n2821;
      59'b00000000000000000000000000000000000000000001000000000000000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4260 = n2685;
      59'b00000000000000000000000000000000000000000000000100000000000: n4260 = n2647;
      59'b00000000000000000000000000000000000000000000000010000000000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4260 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4260 = n2411;
      59'b00000000000000000000000000000000000000000000000000000000010: n4260 = n2380;
      59'b00000000000000000000000000000000000000000000000000000000001: n4260 = 1'b1;
      default: n4260 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4263 = n4136;
      59'b00000100000000000000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4263 = n2538;
      59'b00000000000000000000000000000000000000000000000000001000000: n4263 = n2518;
      59'b00000000000000000000000000000000000000000000000000000100000: n4263 = n2504;
      59'b00000000000000000000000000000000000000000000000000000010000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4263 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4263 = 1'b0;
      default: n4263 = 1'bX;
    endcase
  assign n4264 = n2873[2:0]; // extract
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b01000000000000000000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00100000000000000000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00010000000000000000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00001000000000000000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000100000000000000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000010000000000000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000001000000000000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000100000000000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000010000000000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000001000000000000000000000000000000000000000000000000: n4267 = n3773;
      59'b00000000000100000000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000010000000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000001000000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000100000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000010000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000001000000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000000100000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000000010000000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000000001000000000000000000000000000000000000000: n4267 = 3'b111;
      59'b00000000000000000000100000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000000000010000000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000000000001000000000000000000000000000000000000: n4267 = n3425;
      59'b00000000000000000000000100000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000000000000010000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000000000000001000000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000000000000000100000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000000000000000010000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000000000000000001000000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000000000000000000100000000000000000000000000000: n4267 = 3'b000;
      59'b00000000000000000000000000000010000000000000000000000000000: n4267 = 3'b111;
      59'b00000000000000000000000000000001000000000000000000000000000: n4267 = n3235;
      59'b00000000000000000000000000000000100000000000000000000000000: n4267 = n2215;
      59'b00000000000000000000000000000000010000000000000000000000000: n4267 = n3180;
      59'b00000000000000000000000000000000001000000000000000000000000: n4267 = n2215;
      59'b00000000000000000000000000000000000100000000000000000000000: n4267 = n3117;
      59'b00000000000000000000000000000000000010000000000000000000000: n4267 = n3075;
      59'b00000000000000000000000000000000000001000000000000000000000: n4267 = 3'b111;
      59'b00000000000000000000000000000000000000100000000000000000000: n4267 = n4264;
      59'b00000000000000000000000000000000000000010000000000000000000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000001000000000000000000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000000100000000000000000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000000010000000000000000: n4267 = n2823;
      59'b00000000000000000000000000000000000000000001000000000000000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000000000100000000000000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000000000010000000000000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000000000001000000000000: n4267 = n2687;
      59'b00000000000000000000000000000000000000000000000100000000000: n4267 = n2649;
      59'b00000000000000000000000000000000000000000000000010000000000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000000000000001000000000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000100000000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000010000000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000001000000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000000100000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000000010000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000000001000: n4267 = 3'b000;
      59'b00000000000000000000000000000000000000000000000000000000100: n4267 = n2413;
      59'b00000000000000000000000000000000000000000000000000000000010: n4267 = n2382;
      59'b00000000000000000000000000000000000000000000000000000000001: n4267 = n2215;
      default: n4267 = 3'bX;
    endcase
  assign n4268 = n2873[3]; // extract
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4271 = n4268;
      59'b00000000000000000000000000000000000000010000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4271 = n2825;
      59'b00000000000000000000000000000000000000000001000000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4271 = n2651;
      59'b00000000000000000000000000000000000000000000000010000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4271 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4271 = 1'b0;
      default: n4271 = 1'bX;
    endcase
  assign n4272 = n2216[0]; // extract
  assign n4273 = n2445[0]; // extract
  assign n4274 = n2485[0]; // extract
  assign n4275 = n2555[0]; // extract
  assign n4276 = n2575[0]; // extract
  assign n4277 = n2601[0]; // extract
  assign n4278 = n2720[0]; // extract
  assign n4279 = n2768[0]; // extract
  assign n4280 = n2877[0]; // extract
  assign n4281 = n2216[0]; // extract
  assign n4282 = n3077[0]; // extract
  assign n4283 = n3119[0]; // extract
  assign n4285 = n3183[0]; // extract
  assign n4287 = n3238[0]; // extract
  assign n4288 = n3355[0]; // extract
  assign n4289 = n3776[0]; // extract
  assign n4290 = n3820[0]; // extract
  assign n4291 = n3916[0]; // extract
  assign n4292 = n4090[0]; // extract
  assign n4293 = n4156[0]; // extract
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4296 = n4293;
      59'b00001000000000000000000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4296 = n4292;
      59'b00000010000000000000000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4296 = n4291;
      59'b00000000010000000000000000000000000000000000000000000000000: n4296 = n4290;
      59'b00000000001000000000000000000000000000000000000000000000000: n4296 = n4289;
      59'b00000000000100000000000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4296 = n3427;
      59'b00000000000000000000000100000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4296 = n4288;
      59'b00000000000000000000000000010000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4296 = n4287;
      59'b00000000000000000000000000000000100000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4296 = n4285;
      59'b00000000000000000000000000000000001000000000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4296 = n4283;
      59'b00000000000000000000000000000000000010000000000000000000000: n4296 = n4282;
      59'b00000000000000000000000000000000000001000000000000000000000: n4296 = n4281;
      59'b00000000000000000000000000000000000000100000000000000000000: n4296 = n4280;
      59'b00000000000000000000000000000000000000010000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4296 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4296 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4296 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4296 = n4279;
      59'b00000000000000000000000000000000000000000000100000000000000: n4296 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4296 = n4278;
      59'b00000000000000000000000000000000000000000000001000000000000: n4296 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4296 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4296 = n4277;
      59'b00000000000000000000000000000000000000000000000001000000000: n4296 = n4276;
      59'b00000000000000000000000000000000000000000000000000100000000: n4296 = n4275;
      59'b00000000000000000000000000000000000000000000000000010000000: n4296 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4296 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4296 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4296 = n4274;
      59'b00000000000000000000000000000000000000000000000000000001000: n4296 = n4273;
      59'b00000000000000000000000000000000000000000000000000000000100: n4296 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4296 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4296 = n4272;
      default: n4296 = 1'bX;
    endcase
  assign n4297 = n2216[2:1]; // extract
  assign n4298 = n2445[2:1]; // extract
  assign n4299 = n2485[2:1]; // extract
  assign n4300 = n2555[2:1]; // extract
  assign n4301 = n2575[2:1]; // extract
  assign n4302 = n2601[2:1]; // extract
  assign n4303 = n2720[2:1]; // extract
  assign n4304 = n2768[2:1]; // extract
  assign n4305 = n2877[2:1]; // extract
  assign n4306 = n2216[2:1]; // extract
  assign n4307 = n3077[2:1]; // extract
  assign n4308 = n3119[2:1]; // extract
  assign n4310 = n3183[2:1]; // extract
  assign n4312 = n3238[2:1]; // extract
  assign n4313 = n3355[2:1]; // extract
  assign n4314 = n3776[2:1]; // extract
  assign n4315 = n3820[2:1]; // extract
  assign n4316 = n3916[2:1]; // extract
  assign n4317 = n4090[2:1]; // extract
  assign n4318 = n4156[2:1]; // extract
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b01000000000000000000000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00100000000000000000000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00010000000000000000000000000000000000000000000000000000000: n4321 = n4318;
      59'b00001000000000000000000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000100000000000000000000000000000000000000000000000000000: n4321 = n4317;
      59'b00000010000000000000000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000001000000000000000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000100000000000000000000000000000000000000000000000000: n4321 = n4316;
      59'b00000000010000000000000000000000000000000000000000000000000: n4321 = n4315;
      59'b00000000001000000000000000000000000000000000000000000000000: n4321 = n4314;
      59'b00000000000100000000000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000010000000000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000001000000000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000100000000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000010000000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000001000000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000000100000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000000010000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000000001000000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000000000100000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000000000010000000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000000000001000000000000000000000000000000000000: n4321 = n3429;
      59'b00000000000000000000000100000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000000000000010000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000000000000001000000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000000000000000100000000000000000000000000000000: n4321 = n4313;
      59'b00000000000000000000000000010000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000000000000000001000000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000000000000000000100000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000000000000000000010000000000000000000000000000: n4321 = 2'b00;
      59'b00000000000000000000000000000001000000000000000000000000000: n4321 = n4312;
      59'b00000000000000000000000000000000100000000000000000000000000: n4321 = 2'b01;
      59'b00000000000000000000000000000000010000000000000000000000000: n4321 = n4310;
      59'b00000000000000000000000000000000001000000000000000000000000: n4321 = 2'b01;
      59'b00000000000000000000000000000000000100000000000000000000000: n4321 = n4308;
      59'b00000000000000000000000000000000000010000000000000000000000: n4321 = n4307;
      59'b00000000000000000000000000000000000001000000000000000000000: n4321 = n4306;
      59'b00000000000000000000000000000000000000100000000000000000000: n4321 = n4305;
      59'b00000000000000000000000000000000000000010000000000000000000: n4321 = 2'b00;
      59'b00000000000000000000000000000000000000001000000000000000000: n4321 = 2'b00;
      59'b00000000000000000000000000000000000000000100000000000000000: n4321 = 2'b00;
      59'b00000000000000000000000000000000000000000010000000000000000: n4321 = 2'b00;
      59'b00000000000000000000000000000000000000000001000000000000000: n4321 = n4304;
      59'b00000000000000000000000000000000000000000000100000000000000: n4321 = 2'b00;
      59'b00000000000000000000000000000000000000000000010000000000000: n4321 = n4303;
      59'b00000000000000000000000000000000000000000000001000000000000: n4321 = 2'b00;
      59'b00000000000000000000000000000000000000000000000100000000000: n4321 = 2'b00;
      59'b00000000000000000000000000000000000000000000000010000000000: n4321 = n4302;
      59'b00000000000000000000000000000000000000000000000001000000000: n4321 = n4301;
      59'b00000000000000000000000000000000000000000000000000100000000: n4321 = n4300;
      59'b00000000000000000000000000000000000000000000000000010000000: n4321 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000001000000: n4321 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000100000: n4321 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000010000: n4321 = n4299;
      59'b00000000000000000000000000000000000000000000000000000001000: n4321 = n4298;
      59'b00000000000000000000000000000000000000000000000000000000100: n4321 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000010: n4321 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000001: n4321 = n4297;
      default: n4321 = 2'bX;
    endcase
  assign n4322 = n2555[3]; // extract
  assign n4323 = n2575[3]; // extract
  assign n4324 = n2601[3]; // extract
  assign n4325 = n2720[3]; // extract
  assign n4326 = n2768[3]; // extract
  assign n4327 = n2877[3]; // extract
  assign n4329 = n3183[3]; // extract
  assign n4331 = n3238[3]; // extract
  assign n4332 = n3355[3]; // extract
  assign n4333 = n3776[3]; // extract
  assign n4334 = n3820[3]; // extract
  assign n4335 = n3916[3]; // extract
  assign n4336 = n4090[3]; // extract
  assign n4337 = n4156[3]; // extract
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4340 = n4337;
      59'b00001000000000000000000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4340 = n4336;
      59'b00000010000000000000000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4340 = n4335;
      59'b00000000010000000000000000000000000000000000000000000000000: n4340 = n4334;
      59'b00000000001000000000000000000000000000000000000000000000000: n4340 = n4333;
      59'b00000000000100000000000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4340 = n3431;
      59'b00000000000000000000000100000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4340 = n4332;
      59'b00000000000000000000000000010000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4340 = n4331;
      59'b00000000000000000000000000000000100000000000000000000000000: n4340 = 1'b1;
      59'b00000000000000000000000000000000010000000000000000000000000: n4340 = n4329;
      59'b00000000000000000000000000000000001000000000000000000000000: n4340 = 1'b1;
      59'b00000000000000000000000000000000000100000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4340 = n4327;
      59'b00000000000000000000000000000000000000010000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4340 = n4326;
      59'b00000000000000000000000000000000000000000000100000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4340 = n4325;
      59'b00000000000000000000000000000000000000000000001000000000000: n4340 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4340 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4340 = n4324;
      59'b00000000000000000000000000000000000000000000000001000000000: n4340 = n4323;
      59'b00000000000000000000000000000000000000000000000000100000000: n4340 = n4322;
      59'b00000000000000000000000000000000000000000000000000010000000: n4340 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4340 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4340 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4340 = n2487;
      59'b00000000000000000000000000000000000000000000000000000001000: n4340 = n2447;
      59'b00000000000000000000000000000000000000000000000000000000100: n4340 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4340 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4340 = 1'b0;
      default: n4340 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4346 = n2225;
      59'b01000000000000000000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00100000000000000000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00010000000000000000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00001000000000000000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000100000000000000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000010000000000000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000001000000000000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000000100000000000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000000010000000000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000000001000000000000000000000000000000000000000000000000: n4346 = n3778;
      59'b00000000000100000000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000000000010000000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000000000001000000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000100000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000010000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000001000000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000000100000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000000010000000000000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000000001000000000000000000000000000000000000000: n4346 = 4'b1000;
      59'b00000000000000000000100000000000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000000000010000000000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000000000001000000000000000000000000000000000000: n4346 = n3434;
      59'b00000000000000000000000100000000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000000000000010000000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000000000000001000000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000000000000000100000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000000000000000010000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000000000000000001000000000000000000000000000000: n4346 = n2225;
      59'b00000000000000000000000000000100000000000000000000000000000: n4346 = n2225;
      59'b00000000000000000000000000000010000000000000000000000000000: n4346 = 4'b1100;
      59'b00000000000000000000000000000001000000000000000000000000000: n4346 = n3240;
      59'b00000000000000000000000000000000100000000000000000000000000: n4346 = 4'b0010;
      59'b00000000000000000000000000000000010000000000000000000000000: n4346 = n3185;
      59'b00000000000000000000000000000000001000000000000000000000000: n4346 = 4'b0000;
      59'b00000000000000000000000000000000000100000000000000000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000010000000000000000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000001000000000000000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000100000000000000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000010000000000000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000001000000000000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000100000000000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000010000000000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000001000000000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000100000000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000010000000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000001000000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000000100000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000000010000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000000001000000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000000000100000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000000000010000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000000000001000000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000000000000100000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000000000000010000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000000000000001000: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000000000000000100: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000000000000000010: n4346 = n2225;
      59'b00000000000000000000000000000000000000000000000000000000001: n4346 = n2225;
      default: n4346 = 4'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4354 = n3781;
      59'b00000000000100000000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4354 = 1'b1;
      59'b00000000000000000000100000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4354 = n3438;
      59'b00000000000000000000000100000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4354 = 1'b1;
      59'b00000000000000000000000000000001000000000000000000000000000: n4354 = n3243;
      59'b00000000000000000000000000000000100000000000000000000000000: n4354 = 1'b1;
      59'b00000000000000000000000000000000010000000000000000000000000: n4354 = n3188;
      59'b00000000000000000000000000000000001000000000000000000000000: n4354 = 1'b1;
      59'b00000000000000000000000000000000000100000000000000000000000: n4354 = n3122;
      59'b00000000000000000000000000000000000010000000000000000000000: n4354 = n3080;
      59'b00000000000000000000000000000000000001000000000000000000000: n4354 = 1'b1;
      59'b00000000000000000000000000000000000000100000000000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4354 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4354 = 1'b0;
      default: n4354 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4358 = 1'b1;
      59'b00000000000000000000100000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4358 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4358 = 1'b0;
      default: n4358 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4363 = n3246;
      59'b00000000000000000000000000000000100000000000000000000000000: n4363 = 1'b1;
      59'b00000000000000000000000000000000010000000000000000000000000: n4363 = n3191;
      59'b00000000000000000000000000000000001000000000000000000000000: n4363 = 1'b1;
      59'b00000000000000000000000000000000000100000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4363 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4363 = 1'b0;
      default: n4363 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4366 = n3442;
      59'b00000000000000000000000100000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4366 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4366 = 1'b0;
      default: n4366 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4369 = 3'b111;
      59'b01000000000000000000000000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00100000000000000000000000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00010000000000000000000000000000000000000000000000000000000: n4369 = n4159;
      59'b00001000000000000000000000000000000000000000000000000000000: n4369 = n4139;
      59'b00000100000000000000000000000000000000000000000000000000000: n4369 = n4094;
      59'b00000010000000000000000000000000000000000000000000000000000: n4369 = n4043;
      59'b00000001000000000000000000000000000000000000000000000000000: n4369 = n3971;
      59'b00000000100000000000000000000000000000000000000000000000000: n4369 = n3919;
      59'b00000000010000000000000000000000000000000000000000000000000: n4369 = n3824;
      59'b00000000001000000000000000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000100000000000000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000010000000000000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000001000000000000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000100000000000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000010000000000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000001000000000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000100000000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000010000000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000001000000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000100000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000010000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000001000000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000100000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000010000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000001000000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000000100000000000000000000000000000000: n4369 = n3356;
      59'b00000000000000000000000000010000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000000001000000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000000000100000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000000000010000000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000000000001000000000000000000000000000: n4369 = n3250;
      59'b00000000000000000000000000000000100000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000000000000010000000000000000000000000: n4369 = n3195;
      59'b00000000000000000000000000000000001000000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000000000000000100000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000000000000000010000000000000000000000: n4369 = n3083;
      59'b00000000000000000000000000000000000001000000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000000000000000000100000000000000000000: n4369 = n2883;
      59'b00000000000000000000000000000000000000010000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000000000000000000001000000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000000000000000000000100000000000000000: n4369 = 3'b111;
      59'b00000000000000000000000000000000000000000010000000000000000: n4369 = n2829;
      59'b00000000000000000000000000000000000000000001000000000000000: n4369 = n2772;
      59'b00000000000000000000000000000000000000000000100000000000000: n4369 = 3'b111;
      59'b00000000000000000000000000000000000000000000010000000000000: n4369 = n2724;
      59'b00000000000000000000000000000000000000000000001000000000000: n4369 = n2691;
      59'b00000000000000000000000000000000000000000000000100000000000: n4369 = 3'b111;
      59'b00000000000000000000000000000000000000000000000010000000000: n4369 = n2604;
      59'b00000000000000000000000000000000000000000000000001000000000: n4369 = n2578;
      59'b00000000000000000000000000000000000000000000000000100000000: n4369 = n2558;
      59'b00000000000000000000000000000000000000000000000000010000000: n4369 = n2541;
      59'b00000000000000000000000000000000000000000000000000001000000: n4369 = n2521;
      59'b00000000000000000000000000000000000000000000000000000100000: n4369 = n2507;
      59'b00000000000000000000000000000000000000000000000000000010000: n4369 = n2490;
      59'b00000000000000000000000000000000000000000000000000000001000: n4369 = n2450;
      59'b00000000000000000000000000000000000000000000000000000000100: n4369 = n2416;
      59'b00000000000000000000000000000000000000000000000000000000010: n4369 = 3'b111;
      59'b00000000000000000000000000000000000000000000000000000000001: n4369 = 3'b111;
      default: n4369 = 3'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4372 = n4162;
      59'b00001000000000000000000000000000000000000000000000000000000: n4372 = n4142;
      59'b00000100000000000000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4372 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4372 = 1'b0;
      default: n4372 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4375 = n4046;
      59'b00000001000000000000000000000000000000000000000000000000000: n4375 = n3974;
      59'b00000000100000000000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4375 = n3574;
      59'b00000000000000000010000000000000000000000000000000000000000: n4375 = n3513;
      59'b00000000000000000001000000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4375 = n3358;
      59'b00000000000000000000000000010000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4375 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4375 = 1'b0;
      default: n4375 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4378 = n3784;
      59'b00000000000100000000000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4378 = n3744;
      59'b00000000000001000000000000000000000000000000000000000000000: n4378 = n3713;
      59'b00000000000000100000000000000000000000000000000000000000000: n4378 = n3681;
      59'b00000000000000010000000000000000000000000000000000000000000: n4378 = n3650;
      59'b00000000000000001000000000000000000000000000000000000000000: n4378 = n3617;
      59'b00000000000000000100000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4378 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4378 = 1'b0;
      default: n4378 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4382 = 1'b1;
      59'b00000000000010000000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4382 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4382 = 1'b0;
      default: n4382 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4385 = n3922;
      59'b00000000010000000000000000000000000000000000000000000000000: n4385 = n3827;
      59'b00000000001000000000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4385 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4385 = 1'b0;
      default: n4385 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4388 = n4097;
      59'b00000010000000000000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4388 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4388 = 1'b0;
      default: n4388 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4391 = n4049;
      59'b00000001000000000000000000000000000000000000000000000000000: n4391 = n3977;
      59'b00000000100000000000000000000000000000000000000000000000000: n4391 = n3925;
      59'b00000000010000000000000000000000000000000000000000000000000: n4391 = n3830;
      59'b00000000001000000000000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4391 = n3577;
      59'b00000000000000000010000000000000000000000000000000000000000: n4391 = n3516;
      59'b00000000000000000001000000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4391 = n3360;
      59'b00000000000000000000000000010000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4391 = n2886;
      59'b00000000000000000000000000000000000000010000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4391 = n2727;
      59'b00000000000000000000000000000000000000000000001000000000000: n4391 = n2694;
      59'b00000000000000000000000000000000000000000000000100000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4391 = n2607;
      59'b00000000000000000000000000000000000000000000000001000000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4391 = n2544;
      59'b00000000000000000000000000000000000000000000000000001000000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4391 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4391 = 1'b0;
      default: n4391 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4394 = n3928;
      59'b00000000010000000000000000000000000000000000000000000000000: n4394 = n3833;
      59'b00000000001000000000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4394 = n3580;
      59'b00000000000000000010000000000000000000000000000000000000000: n4394 = n3519;
      59'b00000000000000000001000000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4394 = n2889;
      59'b00000000000000000000000000000000000000010000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4394 = n2730;
      59'b00000000000000000000000000000000000000000000001000000000000: n4394 = n2697;
      59'b00000000000000000000000000000000000000000000000100000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4394 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4394 = 1'b0;
      default: n4394 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4398 = 1'b1;
      59'b00000000000000000000000000000000000000000000010000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4398 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4398 = 1'b0;
      default: n4398 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4402 = 1'b1;
      59'b00000000000000000000000000000000000000000010000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4402 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4402 = 1'b0;
      default: n4402 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4406 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4406 = 1'b1;
      default: n4406 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4410 = 1'b1;
      59'b00000000000000000000000000000000000000000100000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4410 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4410 = 1'b0;
      default: n4410 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4414 = 1'b1;
      59'b00000000000000000000000000000000000000001000000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4414 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4414 = 1'b0;
      default: n4414 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4417 = n3788;
      59'b00000000000100000000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4417 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4417 = 1'b0;
      default: n4417 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4421 = 1'b1;
      59'b00000000000000000000000000000010000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4421 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4421 = 1'b0;
      default: n4421 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4425 = 1'b1;
      59'b00000000000000000000000000000100000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4425 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4425 = 1'b0;
      default: n4425 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4429 = 1'b1;
      59'b00000000000000000000000000001000000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4429 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4429 = 1'b0;
      default: n4429 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b01000000000000000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00100000000000000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00010000000000000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00001000000000000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000100000000000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000010000000000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000001000000000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000100000000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000010000000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000001000000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000100000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000010000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000001000000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000100000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000010000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000001000000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000100000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000010000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000001000000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000100000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000010000000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000001000000000000000000000000000000000000: n4432 = n3445;
      59'b00000000000000000000000100000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000010000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000001000000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000100000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000010000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000001000000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000100000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000010000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000001000000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000100000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000010000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000001000000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000100000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000010000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000001000000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000100000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000010000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000001000000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000100000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000010000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000001000000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000000100000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000000010000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000000001000000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000000000100000000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000000000010000000000: n4432 = n2610;
      59'b00000000000000000000000000000000000000000000000001000000000: n4432 = n2581;
      59'b00000000000000000000000000000000000000000000000000100000000: n4432 = n2561;
      59'b00000000000000000000000000000000000000000000000000010000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000001000000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000100000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000010000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000001000: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000100: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000010: n4432 = 2'b00;
      59'b00000000000000000000000000000000000000000000000000000000001: n4432 = 2'b00;
      default: n4432 = 2'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4436 = 1'b1;
      59'b00000000000000000000000001000000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4436 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4436 = 1'b0;
      default: n4436 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4440 = 1'b1;
      59'b00000000000000000000000010000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4440 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4440 = 1'b0;
      default: n4440 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4444 = 1'b1;
      59'b00000000000000000000000000100000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4444 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4444 = 1'b0;
      default: n4444 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4447 = n3791;
      59'b00000000000100000000000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4447 = n3747;
      59'b00000000000001000000000000000000000000000000000000000000000: n4447 = n3716;
      59'b00000000000000100000000000000000000000000000000000000000000: n4447 = n3684;
      59'b00000000000000010000000000000000000000000000000000000000000: n4447 = n3653;
      59'b00000000000000001000000000000000000000000000000000000000000: n4447 = n3620;
      59'b00000000000000000100000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4447 = n3449;
      59'b00000000000000000000000100000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4447 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4447 = 1'b0;
      default: n4447 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4450 = n4165;
      59'b00001000000000000000000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4450 = n4101;
      59'b00000010000000000000000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4450 = n3932;
      59'b00000000010000000000000000000000000000000000000000000000000: n4450 = n3837;
      59'b00000000001000000000000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000100000000000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000001000000000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000100000000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000010000000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000001000000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000100000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000100000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4450 = n3361;
      59'b00000000000000000000000000010000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4450 = n3253;
      59'b00000000000000000000000000000000100000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4450 = n3198;
      59'b00000000000000000000000000000000001000000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4450 = n2893;
      59'b00000000000000000000000000000000000000010000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4450 = n2776;
      59'b00000000000000000000000000000000000000000000100000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4450 = n2734;
      59'b00000000000000000000000000000000000000000000001000000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4450 = n2613;
      59'b00000000000000000000000000000000000000000000000001000000000: n4450 = n2584;
      59'b00000000000000000000000000000000000000000000000000100000000: n4450 = n2564;
      59'b00000000000000000000000000000000000000000000000000010000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4450 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4450 = n2493;
      59'b00000000000000000000000000000000000000000000000000000001000: n4450 = n2453;
      59'b00000000000000000000000000000000000000000000000000000000100: n4450 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4450 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4450 = 1'b0;
      default: n4450 = 1'bX;
    endcase
  /* T80_MCode.vhd:272:17  */
  always @*
    case (n4177)
      59'b10000000000000000000000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b01000000000000000000000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00100000000000000000000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00010000000000000000000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00001000000000000000000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000100000000000000000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000010000000000000000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000001000000000000000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000100000000000000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000010000000000000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000001000000000000000000000000000000000000000000000000: n4453 = n3794;
      59'b00000000000100000000000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000010000000000000000000000000000000000000000000000: n4453 = n3749;
      59'b00000000000001000000000000000000000000000000000000000000000: n4453 = n3718;
      59'b00000000000000100000000000000000000000000000000000000000000: n4453 = n3686;
      59'b00000000000000010000000000000000000000000000000000000000000: n4453 = n3655;
      59'b00000000000000001000000000000000000000000000000000000000000: n4453 = n3623;
      59'b00000000000000000100000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000010000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000001000000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000100000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000010000000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000001000000000000000000000000000000000000: n4453 = n3453;
      59'b00000000000000000000000100000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000010000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000001000000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000100000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000010000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000001000000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000100000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000010000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000001000000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000100000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000010000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000001000000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000100000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000010000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000001000000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000100000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000010000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000001000000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000100000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000010000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000001000000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000100000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000010000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000001000000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000000100000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000000010000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000000001000000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000100000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000010000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000001000000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000100000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000010000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000001000: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000100: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000010: n4453 = 1'b0;
      59'b00000000000000000000000000000000000000000000000000000000001: n4453 = 1'b0;
      default: n4453 = 1'bX;
    endcase
  /* T80_MCode.vhd:264:17  */
  assign n4455 = iset == 2'b00;
  /* T80_MCode.vhd:1558:54  */
  assign n4456 = ir[2:0]; // extract
  /* T80_MCode.vhd:1559:54  */
  assign n4457 = ir[2:0]; // extract
  /* T80_MCode.vhd:1578:44  */
  assign n4459 = xy_state == 2'b00;
  /* T80_MCode.vhd:1579:51  */
  assign n4461 = mcycle == 3'b001;
  /* T80_MCode.vhd:1579:41  */
  assign n4464 = n4461 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:1579:41  */
  assign n4466 = n4461 ? 4'b1000 : n2225;
  /* T80_MCode.vhd:1579:41  */
  assign n4469 = n4461 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:1588:46  */
  assign n4470 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1589:41  */
  assign n4472 = n4470 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1589:48  */
  assign n4474 = n4470 == 31'b0000000000000000000000000000111;
  /* T80_MCode.vhd:1589:48  */
  assign n4475 = n4472 | n4474;
  /* T80_MCode.vhd:1591:41  */
  assign n4477 = n4470 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1597:41  */
  assign n4479 = n4470 == 31'b0000000000000000000000000000011;
  assign n4480 = {n4479, n4477, n4475};
  /* T80_MCode.vhd:1588:41  */
  always @*
    case (n4480)
      3'b100: n4482 = n2222;
      3'b010: n4482 = 3'b100;
      3'b001: n4482 = n2222;
      default: n4482 = n2222;
    endcase
  /* T80_MCode.vhd:1588:41  */
  always @*
    case (n4480)
      3'b100: n4485 = 1'b0;
      3'b010: n4485 = 1'b1;
      3'b001: n4485 = 1'b0;
      default: n4485 = 1'b0;
    endcase
  /* T80_MCode.vhd:1588:41  */
  always @*
    case (n4480)
      3'b100: n4487 = n2225;
      3'b010: n4487 = 4'b1000;
      3'b001: n4487 = n2225;
      default: n4487 = n2225;
    endcase
  /* T80_MCode.vhd:1588:41  */
  always @*
    case (n4480)
      3'b100: n4490 = 1'b0;
      3'b010: n4490 = 1'b1;
      3'b001: n4490 = 1'b0;
      default: n4490 = 1'b0;
    endcase
  /* T80_MCode.vhd:1588:41  */
  always @*
    case (n4480)
      3'b100: n4494 = 3'b111;
      3'b010: n4494 = 3'b010;
      3'b001: n4494 = 3'b010;
      default: n4494 = 3'b111;
    endcase
  /* T80_MCode.vhd:1588:41  */
  always @*
    case (n4480)
      3'b100: n4497 = 1'b1;
      3'b010: n4497 = 1'b0;
      3'b001: n4497 = 1'b0;
      default: n4497 = 1'b0;
    endcase
  /* T80_MCode.vhd:1578:33  */
  assign n4500 = n4459 ? 3'b001 : 3'b011;
  /* T80_MCode.vhd:1578:33  */
  assign n4501 = n4459 ? n2222 : n4482;
  /* T80_MCode.vhd:1578:33  */
  assign n4502 = n4459 ? n4464 : n4485;
  /* T80_MCode.vhd:1578:33  */
  assign n4503 = n4459 ? n4466 : n4487;
  /* T80_MCode.vhd:1578:33  */
  assign n4504 = n4459 ? n4469 : n4490;
  /* T80_MCode.vhd:1578:33  */
  assign n4506 = n4459 ? 3'b111 : n4494;
  /* T80_MCode.vhd:1578:33  */
  assign n4508 = n4459 ? 1'b0 : n4497;
  /* T80_MCode.vhd:1578:33  */
  assign n4511 = n4459 ? 1'b0 : 1'b1;
  /* T80_MCode.vhd:1562:25  */
  assign n4513 = ir == 8'b00000000;
  /* T80_MCode.vhd:1562:40  */
  assign n4515 = ir == 8'b00000001;
  /* T80_MCode.vhd:1562:40  */
  assign n4516 = n4513 | n4515;
  /* T80_MCode.vhd:1562:51  */
  assign n4518 = ir == 8'b00000010;
  /* T80_MCode.vhd:1562:51  */
  assign n4519 = n4516 | n4518;
  /* T80_MCode.vhd:1562:62  */
  assign n4521 = ir == 8'b00000011;
  /* T80_MCode.vhd:1562:62  */
  assign n4522 = n4519 | n4521;
  /* T80_MCode.vhd:1562:73  */
  assign n4524 = ir == 8'b00000100;
  /* T80_MCode.vhd:1562:73  */
  assign n4525 = n4522 | n4524;
  /* T80_MCode.vhd:1562:84  */
  assign n4527 = ir == 8'b00000101;
  /* T80_MCode.vhd:1562:84  */
  assign n4528 = n4525 | n4527;
  /* T80_MCode.vhd:1562:95  */
  assign n4530 = ir == 8'b00000111;
  /* T80_MCode.vhd:1562:95  */
  assign n4531 = n4528 | n4530;
  /* T80_MCode.vhd:1563:33  */
  assign n4533 = ir == 8'b00010000;
  /* T80_MCode.vhd:1563:33  */
  assign n4534 = n4531 | n4533;
  /* T80_MCode.vhd:1563:44  */
  assign n4536 = ir == 8'b00010001;
  /* T80_MCode.vhd:1563:44  */
  assign n4537 = n4534 | n4536;
  /* T80_MCode.vhd:1563:55  */
  assign n4539 = ir == 8'b00010010;
  /* T80_MCode.vhd:1563:55  */
  assign n4540 = n4537 | n4539;
  /* T80_MCode.vhd:1563:66  */
  assign n4542 = ir == 8'b00010011;
  /* T80_MCode.vhd:1563:66  */
  assign n4543 = n4540 | n4542;
  /* T80_MCode.vhd:1563:77  */
  assign n4545 = ir == 8'b00010100;
  /* T80_MCode.vhd:1563:77  */
  assign n4546 = n4543 | n4545;
  /* T80_MCode.vhd:1563:88  */
  assign n4548 = ir == 8'b00010101;
  /* T80_MCode.vhd:1563:88  */
  assign n4549 = n4546 | n4548;
  /* T80_MCode.vhd:1563:99  */
  assign n4551 = ir == 8'b00010111;
  /* T80_MCode.vhd:1563:99  */
  assign n4552 = n4549 | n4551;
  /* T80_MCode.vhd:1564:33  */
  assign n4554 = ir == 8'b00001000;
  /* T80_MCode.vhd:1564:33  */
  assign n4555 = n4552 | n4554;
  /* T80_MCode.vhd:1564:44  */
  assign n4557 = ir == 8'b00001001;
  /* T80_MCode.vhd:1564:44  */
  assign n4558 = n4555 | n4557;
  /* T80_MCode.vhd:1564:55  */
  assign n4560 = ir == 8'b00001010;
  /* T80_MCode.vhd:1564:55  */
  assign n4561 = n4558 | n4560;
  /* T80_MCode.vhd:1564:66  */
  assign n4563 = ir == 8'b00001011;
  /* T80_MCode.vhd:1564:66  */
  assign n4564 = n4561 | n4563;
  /* T80_MCode.vhd:1564:77  */
  assign n4566 = ir == 8'b00001100;
  /* T80_MCode.vhd:1564:77  */
  assign n4567 = n4564 | n4566;
  /* T80_MCode.vhd:1564:88  */
  assign n4569 = ir == 8'b00001101;
  /* T80_MCode.vhd:1564:88  */
  assign n4570 = n4567 | n4569;
  /* T80_MCode.vhd:1564:99  */
  assign n4572 = ir == 8'b00001111;
  /* T80_MCode.vhd:1564:99  */
  assign n4573 = n4570 | n4572;
  /* T80_MCode.vhd:1565:33  */
  assign n4575 = ir == 8'b00011000;
  /* T80_MCode.vhd:1565:33  */
  assign n4576 = n4573 | n4575;
  /* T80_MCode.vhd:1565:44  */
  assign n4578 = ir == 8'b00011001;
  /* T80_MCode.vhd:1565:44  */
  assign n4579 = n4576 | n4578;
  /* T80_MCode.vhd:1565:55  */
  assign n4581 = ir == 8'b00011010;
  /* T80_MCode.vhd:1565:55  */
  assign n4582 = n4579 | n4581;
  /* T80_MCode.vhd:1565:66  */
  assign n4584 = ir == 8'b00011011;
  /* T80_MCode.vhd:1565:66  */
  assign n4585 = n4582 | n4584;
  /* T80_MCode.vhd:1565:77  */
  assign n4587 = ir == 8'b00011100;
  /* T80_MCode.vhd:1565:77  */
  assign n4588 = n4585 | n4587;
  /* T80_MCode.vhd:1565:88  */
  assign n4590 = ir == 8'b00011101;
  /* T80_MCode.vhd:1565:88  */
  assign n4591 = n4588 | n4590;
  /* T80_MCode.vhd:1565:99  */
  assign n4593 = ir == 8'b00011111;
  /* T80_MCode.vhd:1565:99  */
  assign n4594 = n4591 | n4593;
  /* T80_MCode.vhd:1566:33  */
  assign n4596 = ir == 8'b00100000;
  /* T80_MCode.vhd:1566:33  */
  assign n4597 = n4594 | n4596;
  /* T80_MCode.vhd:1566:44  */
  assign n4599 = ir == 8'b00100001;
  /* T80_MCode.vhd:1566:44  */
  assign n4600 = n4597 | n4599;
  /* T80_MCode.vhd:1566:55  */
  assign n4602 = ir == 8'b00100010;
  /* T80_MCode.vhd:1566:55  */
  assign n4603 = n4600 | n4602;
  /* T80_MCode.vhd:1566:66  */
  assign n4605 = ir == 8'b00100011;
  /* T80_MCode.vhd:1566:66  */
  assign n4606 = n4603 | n4605;
  /* T80_MCode.vhd:1566:77  */
  assign n4608 = ir == 8'b00100100;
  /* T80_MCode.vhd:1566:77  */
  assign n4609 = n4606 | n4608;
  /* T80_MCode.vhd:1566:88  */
  assign n4611 = ir == 8'b00100101;
  /* T80_MCode.vhd:1566:88  */
  assign n4612 = n4609 | n4611;
  /* T80_MCode.vhd:1566:99  */
  assign n4614 = ir == 8'b00100111;
  /* T80_MCode.vhd:1566:99  */
  assign n4615 = n4612 | n4614;
  /* T80_MCode.vhd:1567:33  */
  assign n4617 = ir == 8'b00101000;
  /* T80_MCode.vhd:1567:33  */
  assign n4618 = n4615 | n4617;
  /* T80_MCode.vhd:1567:44  */
  assign n4620 = ir == 8'b00101001;
  /* T80_MCode.vhd:1567:44  */
  assign n4621 = n4618 | n4620;
  /* T80_MCode.vhd:1567:55  */
  assign n4623 = ir == 8'b00101010;
  /* T80_MCode.vhd:1567:55  */
  assign n4624 = n4621 | n4623;
  /* T80_MCode.vhd:1567:66  */
  assign n4626 = ir == 8'b00101011;
  /* T80_MCode.vhd:1567:66  */
  assign n4627 = n4624 | n4626;
  /* T80_MCode.vhd:1567:77  */
  assign n4629 = ir == 8'b00101100;
  /* T80_MCode.vhd:1567:77  */
  assign n4630 = n4627 | n4629;
  /* T80_MCode.vhd:1567:88  */
  assign n4632 = ir == 8'b00101101;
  /* T80_MCode.vhd:1567:88  */
  assign n4633 = n4630 | n4632;
  /* T80_MCode.vhd:1567:99  */
  assign n4635 = ir == 8'b00101111;
  /* T80_MCode.vhd:1567:99  */
  assign n4636 = n4633 | n4635;
  /* T80_MCode.vhd:1568:33  */
  assign n4638 = ir == 8'b00110000;
  /* T80_MCode.vhd:1568:33  */
  assign n4639 = n4636 | n4638;
  /* T80_MCode.vhd:1568:44  */
  assign n4641 = ir == 8'b00110001;
  /* T80_MCode.vhd:1568:44  */
  assign n4642 = n4639 | n4641;
  /* T80_MCode.vhd:1568:55  */
  assign n4644 = ir == 8'b00110010;
  /* T80_MCode.vhd:1568:55  */
  assign n4645 = n4642 | n4644;
  /* T80_MCode.vhd:1568:66  */
  assign n4647 = ir == 8'b00110011;
  /* T80_MCode.vhd:1568:66  */
  assign n4648 = n4645 | n4647;
  /* T80_MCode.vhd:1568:77  */
  assign n4650 = ir == 8'b00110100;
  /* T80_MCode.vhd:1568:77  */
  assign n4651 = n4648 | n4650;
  /* T80_MCode.vhd:1568:88  */
  assign n4653 = ir == 8'b00110101;
  /* T80_MCode.vhd:1568:88  */
  assign n4654 = n4651 | n4653;
  /* T80_MCode.vhd:1568:99  */
  assign n4656 = ir == 8'b00110111;
  /* T80_MCode.vhd:1568:99  */
  assign n4657 = n4654 | n4656;
  /* T80_MCode.vhd:1569:33  */
  assign n4659 = ir == 8'b00111000;
  /* T80_MCode.vhd:1569:33  */
  assign n4660 = n4657 | n4659;
  /* T80_MCode.vhd:1569:44  */
  assign n4662 = ir == 8'b00111001;
  /* T80_MCode.vhd:1569:44  */
  assign n4663 = n4660 | n4662;
  /* T80_MCode.vhd:1569:55  */
  assign n4665 = ir == 8'b00111010;
  /* T80_MCode.vhd:1569:55  */
  assign n4666 = n4663 | n4665;
  /* T80_MCode.vhd:1569:66  */
  assign n4668 = ir == 8'b00111011;
  /* T80_MCode.vhd:1569:66  */
  assign n4669 = n4666 | n4668;
  /* T80_MCode.vhd:1569:77  */
  assign n4671 = ir == 8'b00111100;
  /* T80_MCode.vhd:1569:77  */
  assign n4672 = n4669 | n4671;
  /* T80_MCode.vhd:1569:88  */
  assign n4674 = ir == 8'b00111101;
  /* T80_MCode.vhd:1569:88  */
  assign n4675 = n4672 | n4674;
  /* T80_MCode.vhd:1569:99  */
  assign n4677 = ir == 8'b00111111;
  /* T80_MCode.vhd:1569:99  */
  assign n4678 = n4675 | n4677;
  /* T80_MCode.vhd:1613:38  */
  assign n4679 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1614:33  */
  assign n4681 = n4679 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1614:40  */
  assign n4683 = n4679 == 31'b0000000000000000000000000000111;
  /* T80_MCode.vhd:1614:40  */
  assign n4684 = n4681 | n4683;
  /* T80_MCode.vhd:1616:33  */
  assign n4686 = n4679 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1622:33  */
  assign n4688 = n4679 == 31'b0000000000000000000000000000011;
  assign n4689 = {n4688, n4686, n4684};
  /* T80_MCode.vhd:1613:33  */
  always @*
    case (n4689)
      3'b100: n4691 = n2222;
      3'b010: n4691 = 3'b100;
      3'b001: n4691 = n2222;
      default: n4691 = n2222;
    endcase
  /* T80_MCode.vhd:1613:33  */
  always @*
    case (n4689)
      3'b100: n4694 = 1'b0;
      3'b010: n4694 = 1'b1;
      3'b001: n4694 = 1'b0;
      default: n4694 = 1'b0;
    endcase
  /* T80_MCode.vhd:1613:33  */
  always @*
    case (n4689)
      3'b100: n4696 = n2225;
      3'b010: n4696 = 4'b1000;
      3'b001: n4696 = n2225;
      default: n4696 = n2225;
    endcase
  /* T80_MCode.vhd:1613:33  */
  always @*
    case (n4689)
      3'b100: n4699 = 1'b0;
      3'b010: n4699 = 1'b1;
      3'b001: n4699 = 1'b0;
      default: n4699 = 1'b0;
    endcase
  /* T80_MCode.vhd:1613:33  */
  always @*
    case (n4689)
      3'b100: n4703 = 3'b111;
      3'b010: n4703 = 3'b010;
      3'b001: n4703 = 3'b010;
      default: n4703 = 3'b111;
    endcase
  /* T80_MCode.vhd:1613:33  */
  always @*
    case (n4689)
      3'b100: n4706 = 1'b1;
      3'b010: n4706 = 1'b0;
      3'b001: n4706 = 1'b0;
      default: n4706 = 1'b0;
    endcase
  /* T80_MCode.vhd:1603:25  */
  assign n4708 = ir == 8'b00000110;
  /* T80_MCode.vhd:1603:40  */
  assign n4710 = ir == 8'b00010110;
  /* T80_MCode.vhd:1603:40  */
  assign n4711 = n4708 | n4710;
  /* T80_MCode.vhd:1603:51  */
  assign n4713 = ir == 8'b00001110;
  /* T80_MCode.vhd:1603:51  */
  assign n4714 = n4711 | n4713;
  /* T80_MCode.vhd:1603:62  */
  assign n4716 = ir == 8'b00011110;
  /* T80_MCode.vhd:1603:62  */
  assign n4717 = n4714 | n4716;
  /* T80_MCode.vhd:1603:73  */
  assign n4719 = ir == 8'b00101110;
  /* T80_MCode.vhd:1603:73  */
  assign n4720 = n4717 | n4719;
  /* T80_MCode.vhd:1603:84  */
  assign n4722 = ir == 8'b00111110;
  /* T80_MCode.vhd:1603:84  */
  assign n4723 = n4720 | n4722;
  /* T80_MCode.vhd:1603:95  */
  assign n4725 = ir == 8'b00100110;
  /* T80_MCode.vhd:1603:95  */
  assign n4726 = n4723 | n4725;
  /* T80_MCode.vhd:1603:106  */
  assign n4728 = ir == 8'b00110110;
  /* T80_MCode.vhd:1603:106  */
  assign n4729 = n4726 | n4728;
  /* T80_MCode.vhd:1635:44  */
  assign n4731 = xy_state == 2'b00;
  /* T80_MCode.vhd:1636:51  */
  assign n4733 = mcycle == 3'b001;
  /* T80_MCode.vhd:1637:72  */
  assign n4734 = ir[2:0]; // extract
  /* T80_MCode.vhd:1635:33  */
  assign n4735 = n4758 ? n4734 : n4457;
  /* T80_MCode.vhd:1636:41  */
  assign n4737 = n4733 ? 4'b1001 : n2225;
  /* T80_MCode.vhd:1644:46  */
  assign n4738 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1645:41  */
  assign n4740 = n4738 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1645:48  */
  assign n4742 = n4738 == 31'b0000000000000000000000000000111;
  /* T80_MCode.vhd:1645:48  */
  assign n4743 = n4740 | n4742;
  /* T80_MCode.vhd:1647:41  */
  assign n4745 = n4738 == 31'b0000000000000000000000000000010;
  assign n4746 = {n4745, n4743};
  /* T80_MCode.vhd:1644:41  */
  always @*
    case (n4746)
      2'b10: n4748 = 3'b100;
      2'b01: n4748 = n2222;
      default: n4748 = n2222;
    endcase
  /* T80_MCode.vhd:1644:41  */
  always @*
    case (n4746)
      2'b10: n4750 = 4'b1001;
      2'b01: n4750 = n2225;
      default: n4750 = n2225;
    endcase
  /* T80_MCode.vhd:1644:41  */
  always @*
    case (n4746)
      2'b10: n4753 = 3'b111;
      2'b01: n4753 = 3'b010;
      default: n4753 = 3'b111;
    endcase
  /* T80_MCode.vhd:1635:33  */
  assign n4756 = n4731 ? 3'b001 : 3'b010;
  /* T80_MCode.vhd:1635:33  */
  assign n4757 = n4731 ? n2222 : n4748;
  /* T80_MCode.vhd:1635:33  */
  assign n4758 = n4733 & n4731;
  /* T80_MCode.vhd:1635:33  */
  assign n4759 = n4731 ? n4737 : n4750;
  /* T80_MCode.vhd:1635:33  */
  assign n4761 = n4731 ? 3'b111 : n4753;
  /* T80_MCode.vhd:1635:33  */
  assign n4764 = n4731 ? 1'b0 : 1'b1;
  /* T80_MCode.vhd:1626:25  */
  assign n4766 = ir == 8'b01000000;
  /* T80_MCode.vhd:1626:40  */
  assign n4768 = ir == 8'b01000001;
  /* T80_MCode.vhd:1626:40  */
  assign n4769 = n4766 | n4768;
  /* T80_MCode.vhd:1626:51  */
  assign n4771 = ir == 8'b01000010;
  /* T80_MCode.vhd:1626:51  */
  assign n4772 = n4769 | n4771;
  /* T80_MCode.vhd:1626:62  */
  assign n4774 = ir == 8'b01000011;
  /* T80_MCode.vhd:1626:62  */
  assign n4775 = n4772 | n4774;
  /* T80_MCode.vhd:1626:73  */
  assign n4777 = ir == 8'b01000100;
  /* T80_MCode.vhd:1626:73  */
  assign n4778 = n4775 | n4777;
  /* T80_MCode.vhd:1626:84  */
  assign n4780 = ir == 8'b01000101;
  /* T80_MCode.vhd:1626:84  */
  assign n4781 = n4778 | n4780;
  /* T80_MCode.vhd:1626:95  */
  assign n4783 = ir == 8'b01000111;
  /* T80_MCode.vhd:1626:95  */
  assign n4784 = n4781 | n4783;
  /* T80_MCode.vhd:1627:33  */
  assign n4786 = ir == 8'b01001000;
  /* T80_MCode.vhd:1627:33  */
  assign n4787 = n4784 | n4786;
  /* T80_MCode.vhd:1627:44  */
  assign n4789 = ir == 8'b01001001;
  /* T80_MCode.vhd:1627:44  */
  assign n4790 = n4787 | n4789;
  /* T80_MCode.vhd:1627:55  */
  assign n4792 = ir == 8'b01001010;
  /* T80_MCode.vhd:1627:55  */
  assign n4793 = n4790 | n4792;
  /* T80_MCode.vhd:1627:66  */
  assign n4795 = ir == 8'b01001011;
  /* T80_MCode.vhd:1627:66  */
  assign n4796 = n4793 | n4795;
  /* T80_MCode.vhd:1627:77  */
  assign n4798 = ir == 8'b01001100;
  /* T80_MCode.vhd:1627:77  */
  assign n4799 = n4796 | n4798;
  /* T80_MCode.vhd:1627:88  */
  assign n4801 = ir == 8'b01001101;
  /* T80_MCode.vhd:1627:88  */
  assign n4802 = n4799 | n4801;
  /* T80_MCode.vhd:1627:99  */
  assign n4804 = ir == 8'b01001111;
  /* T80_MCode.vhd:1627:99  */
  assign n4805 = n4802 | n4804;
  /* T80_MCode.vhd:1628:33  */
  assign n4807 = ir == 8'b01010000;
  /* T80_MCode.vhd:1628:33  */
  assign n4808 = n4805 | n4807;
  /* T80_MCode.vhd:1628:44  */
  assign n4810 = ir == 8'b01010001;
  /* T80_MCode.vhd:1628:44  */
  assign n4811 = n4808 | n4810;
  /* T80_MCode.vhd:1628:55  */
  assign n4813 = ir == 8'b01010010;
  /* T80_MCode.vhd:1628:55  */
  assign n4814 = n4811 | n4813;
  /* T80_MCode.vhd:1628:66  */
  assign n4816 = ir == 8'b01010011;
  /* T80_MCode.vhd:1628:66  */
  assign n4817 = n4814 | n4816;
  /* T80_MCode.vhd:1628:77  */
  assign n4819 = ir == 8'b01010100;
  /* T80_MCode.vhd:1628:77  */
  assign n4820 = n4817 | n4819;
  /* T80_MCode.vhd:1628:88  */
  assign n4822 = ir == 8'b01010101;
  /* T80_MCode.vhd:1628:88  */
  assign n4823 = n4820 | n4822;
  /* T80_MCode.vhd:1628:99  */
  assign n4825 = ir == 8'b01010111;
  /* T80_MCode.vhd:1628:99  */
  assign n4826 = n4823 | n4825;
  /* T80_MCode.vhd:1629:33  */
  assign n4828 = ir == 8'b01011000;
  /* T80_MCode.vhd:1629:33  */
  assign n4829 = n4826 | n4828;
  /* T80_MCode.vhd:1629:44  */
  assign n4831 = ir == 8'b01011001;
  /* T80_MCode.vhd:1629:44  */
  assign n4832 = n4829 | n4831;
  /* T80_MCode.vhd:1629:55  */
  assign n4834 = ir == 8'b01011010;
  /* T80_MCode.vhd:1629:55  */
  assign n4835 = n4832 | n4834;
  /* T80_MCode.vhd:1629:66  */
  assign n4837 = ir == 8'b01011011;
  /* T80_MCode.vhd:1629:66  */
  assign n4838 = n4835 | n4837;
  /* T80_MCode.vhd:1629:77  */
  assign n4840 = ir == 8'b01011100;
  /* T80_MCode.vhd:1629:77  */
  assign n4841 = n4838 | n4840;
  /* T80_MCode.vhd:1629:88  */
  assign n4843 = ir == 8'b01011101;
  /* T80_MCode.vhd:1629:88  */
  assign n4844 = n4841 | n4843;
  /* T80_MCode.vhd:1629:99  */
  assign n4846 = ir == 8'b01011111;
  /* T80_MCode.vhd:1629:99  */
  assign n4847 = n4844 | n4846;
  /* T80_MCode.vhd:1630:33  */
  assign n4849 = ir == 8'b01100000;
  /* T80_MCode.vhd:1630:33  */
  assign n4850 = n4847 | n4849;
  /* T80_MCode.vhd:1630:44  */
  assign n4852 = ir == 8'b01100001;
  /* T80_MCode.vhd:1630:44  */
  assign n4853 = n4850 | n4852;
  /* T80_MCode.vhd:1630:55  */
  assign n4855 = ir == 8'b01100010;
  /* T80_MCode.vhd:1630:55  */
  assign n4856 = n4853 | n4855;
  /* T80_MCode.vhd:1630:66  */
  assign n4858 = ir == 8'b01100011;
  /* T80_MCode.vhd:1630:66  */
  assign n4859 = n4856 | n4858;
  /* T80_MCode.vhd:1630:77  */
  assign n4861 = ir == 8'b01100100;
  /* T80_MCode.vhd:1630:77  */
  assign n4862 = n4859 | n4861;
  /* T80_MCode.vhd:1630:88  */
  assign n4864 = ir == 8'b01100101;
  /* T80_MCode.vhd:1630:88  */
  assign n4865 = n4862 | n4864;
  /* T80_MCode.vhd:1630:99  */
  assign n4867 = ir == 8'b01100111;
  /* T80_MCode.vhd:1630:99  */
  assign n4868 = n4865 | n4867;
  /* T80_MCode.vhd:1631:33  */
  assign n4870 = ir == 8'b01101000;
  /* T80_MCode.vhd:1631:33  */
  assign n4871 = n4868 | n4870;
  /* T80_MCode.vhd:1631:44  */
  assign n4873 = ir == 8'b01101001;
  /* T80_MCode.vhd:1631:44  */
  assign n4874 = n4871 | n4873;
  /* T80_MCode.vhd:1631:55  */
  assign n4876 = ir == 8'b01101010;
  /* T80_MCode.vhd:1631:55  */
  assign n4877 = n4874 | n4876;
  /* T80_MCode.vhd:1631:66  */
  assign n4879 = ir == 8'b01101011;
  /* T80_MCode.vhd:1631:66  */
  assign n4880 = n4877 | n4879;
  /* T80_MCode.vhd:1631:77  */
  assign n4882 = ir == 8'b01101100;
  /* T80_MCode.vhd:1631:77  */
  assign n4883 = n4880 | n4882;
  /* T80_MCode.vhd:1631:88  */
  assign n4885 = ir == 8'b01101101;
  /* T80_MCode.vhd:1631:88  */
  assign n4886 = n4883 | n4885;
  /* T80_MCode.vhd:1631:99  */
  assign n4888 = ir == 8'b01101111;
  /* T80_MCode.vhd:1631:99  */
  assign n4889 = n4886 | n4888;
  /* T80_MCode.vhd:1632:33  */
  assign n4891 = ir == 8'b01110000;
  /* T80_MCode.vhd:1632:33  */
  assign n4892 = n4889 | n4891;
  /* T80_MCode.vhd:1632:44  */
  assign n4894 = ir == 8'b01110001;
  /* T80_MCode.vhd:1632:44  */
  assign n4895 = n4892 | n4894;
  /* T80_MCode.vhd:1632:55  */
  assign n4897 = ir == 8'b01110010;
  /* T80_MCode.vhd:1632:55  */
  assign n4898 = n4895 | n4897;
  /* T80_MCode.vhd:1632:66  */
  assign n4900 = ir == 8'b01110011;
  /* T80_MCode.vhd:1632:66  */
  assign n4901 = n4898 | n4900;
  /* T80_MCode.vhd:1632:77  */
  assign n4903 = ir == 8'b01110100;
  /* T80_MCode.vhd:1632:77  */
  assign n4904 = n4901 | n4903;
  /* T80_MCode.vhd:1632:88  */
  assign n4906 = ir == 8'b01110101;
  /* T80_MCode.vhd:1632:88  */
  assign n4907 = n4904 | n4906;
  /* T80_MCode.vhd:1632:99  */
  assign n4909 = ir == 8'b01110111;
  /* T80_MCode.vhd:1632:99  */
  assign n4910 = n4907 | n4909;
  /* T80_MCode.vhd:1633:33  */
  assign n4912 = ir == 8'b01111000;
  /* T80_MCode.vhd:1633:33  */
  assign n4913 = n4910 | n4912;
  /* T80_MCode.vhd:1633:44  */
  assign n4915 = ir == 8'b01111001;
  /* T80_MCode.vhd:1633:44  */
  assign n4916 = n4913 | n4915;
  /* T80_MCode.vhd:1633:55  */
  assign n4918 = ir == 8'b01111010;
  /* T80_MCode.vhd:1633:55  */
  assign n4919 = n4916 | n4918;
  /* T80_MCode.vhd:1633:66  */
  assign n4921 = ir == 8'b01111011;
  /* T80_MCode.vhd:1633:66  */
  assign n4922 = n4919 | n4921;
  /* T80_MCode.vhd:1633:77  */
  assign n4924 = ir == 8'b01111100;
  /* T80_MCode.vhd:1633:77  */
  assign n4925 = n4922 | n4924;
  /* T80_MCode.vhd:1633:88  */
  assign n4927 = ir == 8'b01111101;
  /* T80_MCode.vhd:1633:88  */
  assign n4928 = n4925 | n4927;
  /* T80_MCode.vhd:1633:99  */
  assign n4930 = ir == 8'b01111111;
  /* T80_MCode.vhd:1633:99  */
  assign n4931 = n4928 | n4930;
  /* T80_MCode.vhd:1657:38  */
  assign n4932 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1658:33  */
  assign n4934 = n4932 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1658:40  */
  assign n4936 = n4932 == 31'b0000000000000000000000000000111;
  /* T80_MCode.vhd:1658:40  */
  assign n4937 = n4934 | n4936;
  /* T80_MCode.vhd:1660:33  */
  assign n4939 = n4932 == 31'b0000000000000000000000000000010;
  assign n4940 = {n4939, n4937};
  /* T80_MCode.vhd:1657:33  */
  always @*
    case (n4940)
      2'b10: n4942 = 3'b100;
      2'b01: n4942 = n2222;
      default: n4942 = n2222;
    endcase
  /* T80_MCode.vhd:1657:33  */
  always @*
    case (n4940)
      2'b10: n4944 = 4'b1001;
      2'b01: n4944 = n2225;
      default: n4944 = n2225;
    endcase
  /* T80_MCode.vhd:1657:33  */
  always @*
    case (n4940)
      2'b10: n4947 = 3'b111;
      2'b01: n4947 = 3'b010;
      default: n4947 = 3'b111;
    endcase
  /* T80_MCode.vhd:1654:25  */
  assign n4949 = ir == 8'b01000110;
  /* T80_MCode.vhd:1654:40  */
  assign n4951 = ir == 8'b01001110;
  /* T80_MCode.vhd:1654:40  */
  assign n4952 = n4949 | n4951;
  /* T80_MCode.vhd:1654:51  */
  assign n4954 = ir == 8'b01010110;
  /* T80_MCode.vhd:1654:51  */
  assign n4955 = n4952 | n4954;
  /* T80_MCode.vhd:1654:62  */
  assign n4957 = ir == 8'b01011110;
  /* T80_MCode.vhd:1654:62  */
  assign n4958 = n4955 | n4957;
  /* T80_MCode.vhd:1654:73  */
  assign n4960 = ir == 8'b01100110;
  /* T80_MCode.vhd:1654:73  */
  assign n4961 = n4958 | n4960;
  /* T80_MCode.vhd:1654:84  */
  assign n4963 = ir == 8'b01101110;
  /* T80_MCode.vhd:1654:84  */
  assign n4964 = n4961 | n4963;
  /* T80_MCode.vhd:1654:95  */
  assign n4966 = ir == 8'b01110110;
  /* T80_MCode.vhd:1654:95  */
  assign n4967 = n4964 | n4966;
  /* T80_MCode.vhd:1654:106  */
  assign n4969 = ir == 8'b01111110;
  /* T80_MCode.vhd:1654:106  */
  assign n4970 = n4967 | n4969;
  /* T80_MCode.vhd:1674:44  */
  assign n4972 = xy_state == 2'b00;
  /* T80_MCode.vhd:1675:51  */
  assign n4974 = mcycle == 3'b001;
  /* T80_MCode.vhd:1675:41  */
  assign n4977 = n4974 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:1675:41  */
  assign n4979 = n4974 ? 4'b1010 : n2225;
  /* T80_MCode.vhd:1675:41  */
  assign n4982 = n4974 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:1684:46  */
  assign n4983 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1685:41  */
  assign n4985 = n4983 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1685:48  */
  assign n4987 = n4983 == 31'b0000000000000000000000000000111;
  /* T80_MCode.vhd:1685:48  */
  assign n4988 = n4985 | n4987;
  /* T80_MCode.vhd:1687:41  */
  assign n4990 = n4983 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1693:41  */
  assign n4992 = n4983 == 31'b0000000000000000000000000000011;
  assign n4993 = {n4992, n4990, n4988};
  /* T80_MCode.vhd:1684:41  */
  always @*
    case (n4993)
      3'b100: n4995 = n2222;
      3'b010: n4995 = 3'b100;
      3'b001: n4995 = n2222;
      default: n4995 = n2222;
    endcase
  /* T80_MCode.vhd:1684:41  */
  always @*
    case (n4993)
      3'b100: n4998 = 1'b0;
      3'b010: n4998 = 1'b1;
      3'b001: n4998 = 1'b0;
      default: n4998 = 1'b0;
    endcase
  /* T80_MCode.vhd:1684:41  */
  always @*
    case (n4993)
      3'b100: n5000 = n2225;
      3'b010: n5000 = 4'b1010;
      3'b001: n5000 = n2225;
      default: n5000 = n2225;
    endcase
  /* T80_MCode.vhd:1684:41  */
  always @*
    case (n4993)
      3'b100: n5003 = 1'b0;
      3'b010: n5003 = 1'b1;
      3'b001: n5003 = 1'b0;
      default: n5003 = 1'b0;
    endcase
  /* T80_MCode.vhd:1684:41  */
  always @*
    case (n4993)
      3'b100: n5007 = 3'b111;
      3'b010: n5007 = 3'b010;
      3'b001: n5007 = 3'b010;
      default: n5007 = 3'b111;
    endcase
  /* T80_MCode.vhd:1684:41  */
  always @*
    case (n4993)
      3'b100: n5010 = 1'b1;
      3'b010: n5010 = 1'b0;
      3'b001: n5010 = 1'b0;
      default: n5010 = 1'b0;
    endcase
  /* T80_MCode.vhd:1674:33  */
  assign n5013 = n4972 ? 3'b001 : 3'b011;
  /* T80_MCode.vhd:1674:33  */
  assign n5014 = n4972 ? n2222 : n4995;
  /* T80_MCode.vhd:1674:33  */
  assign n5015 = n4972 ? n4977 : n4998;
  /* T80_MCode.vhd:1674:33  */
  assign n5016 = n4972 ? n4979 : n5000;
  /* T80_MCode.vhd:1674:33  */
  assign n5017 = n4972 ? n4982 : n5003;
  /* T80_MCode.vhd:1674:33  */
  assign n5019 = n4972 ? 3'b111 : n5007;
  /* T80_MCode.vhd:1674:33  */
  assign n5021 = n4972 ? 1'b0 : n5010;
  /* T80_MCode.vhd:1674:33  */
  assign n5024 = n4972 ? 1'b0 : 1'b1;
  /* T80_MCode.vhd:1665:25  */
  assign n5026 = ir == 8'b11000000;
  /* T80_MCode.vhd:1665:40  */
  assign n5028 = ir == 8'b11000001;
  /* T80_MCode.vhd:1665:40  */
  assign n5029 = n5026 | n5028;
  /* T80_MCode.vhd:1665:51  */
  assign n5031 = ir == 8'b11000010;
  /* T80_MCode.vhd:1665:51  */
  assign n5032 = n5029 | n5031;
  /* T80_MCode.vhd:1665:62  */
  assign n5034 = ir == 8'b11000011;
  /* T80_MCode.vhd:1665:62  */
  assign n5035 = n5032 | n5034;
  /* T80_MCode.vhd:1665:73  */
  assign n5037 = ir == 8'b11000100;
  /* T80_MCode.vhd:1665:73  */
  assign n5038 = n5035 | n5037;
  /* T80_MCode.vhd:1665:84  */
  assign n5040 = ir == 8'b11000101;
  /* T80_MCode.vhd:1665:84  */
  assign n5041 = n5038 | n5040;
  /* T80_MCode.vhd:1665:95  */
  assign n5043 = ir == 8'b11000111;
  /* T80_MCode.vhd:1665:95  */
  assign n5044 = n5041 | n5043;
  /* T80_MCode.vhd:1666:33  */
  assign n5046 = ir == 8'b11001000;
  /* T80_MCode.vhd:1666:33  */
  assign n5047 = n5044 | n5046;
  /* T80_MCode.vhd:1666:44  */
  assign n5049 = ir == 8'b11001001;
  /* T80_MCode.vhd:1666:44  */
  assign n5050 = n5047 | n5049;
  /* T80_MCode.vhd:1666:55  */
  assign n5052 = ir == 8'b11001010;
  /* T80_MCode.vhd:1666:55  */
  assign n5053 = n5050 | n5052;
  /* T80_MCode.vhd:1666:66  */
  assign n5055 = ir == 8'b11001011;
  /* T80_MCode.vhd:1666:66  */
  assign n5056 = n5053 | n5055;
  /* T80_MCode.vhd:1666:77  */
  assign n5058 = ir == 8'b11001100;
  /* T80_MCode.vhd:1666:77  */
  assign n5059 = n5056 | n5058;
  /* T80_MCode.vhd:1666:88  */
  assign n5061 = ir == 8'b11001101;
  /* T80_MCode.vhd:1666:88  */
  assign n5062 = n5059 | n5061;
  /* T80_MCode.vhd:1666:99  */
  assign n5064 = ir == 8'b11001111;
  /* T80_MCode.vhd:1666:99  */
  assign n5065 = n5062 | n5064;
  /* T80_MCode.vhd:1667:33  */
  assign n5067 = ir == 8'b11010000;
  /* T80_MCode.vhd:1667:33  */
  assign n5068 = n5065 | n5067;
  /* T80_MCode.vhd:1667:44  */
  assign n5070 = ir == 8'b11010001;
  /* T80_MCode.vhd:1667:44  */
  assign n5071 = n5068 | n5070;
  /* T80_MCode.vhd:1667:55  */
  assign n5073 = ir == 8'b11010010;
  /* T80_MCode.vhd:1667:55  */
  assign n5074 = n5071 | n5073;
  /* T80_MCode.vhd:1667:66  */
  assign n5076 = ir == 8'b11010011;
  /* T80_MCode.vhd:1667:66  */
  assign n5077 = n5074 | n5076;
  /* T80_MCode.vhd:1667:77  */
  assign n5079 = ir == 8'b11010100;
  /* T80_MCode.vhd:1667:77  */
  assign n5080 = n5077 | n5079;
  /* T80_MCode.vhd:1667:88  */
  assign n5082 = ir == 8'b11010101;
  /* T80_MCode.vhd:1667:88  */
  assign n5083 = n5080 | n5082;
  /* T80_MCode.vhd:1667:99  */
  assign n5085 = ir == 8'b11010111;
  /* T80_MCode.vhd:1667:99  */
  assign n5086 = n5083 | n5085;
  /* T80_MCode.vhd:1668:33  */
  assign n5088 = ir == 8'b11011000;
  /* T80_MCode.vhd:1668:33  */
  assign n5089 = n5086 | n5088;
  /* T80_MCode.vhd:1668:44  */
  assign n5091 = ir == 8'b11011001;
  /* T80_MCode.vhd:1668:44  */
  assign n5092 = n5089 | n5091;
  /* T80_MCode.vhd:1668:55  */
  assign n5094 = ir == 8'b11011010;
  /* T80_MCode.vhd:1668:55  */
  assign n5095 = n5092 | n5094;
  /* T80_MCode.vhd:1668:66  */
  assign n5097 = ir == 8'b11011011;
  /* T80_MCode.vhd:1668:66  */
  assign n5098 = n5095 | n5097;
  /* T80_MCode.vhd:1668:77  */
  assign n5100 = ir == 8'b11011100;
  /* T80_MCode.vhd:1668:77  */
  assign n5101 = n5098 | n5100;
  /* T80_MCode.vhd:1668:88  */
  assign n5103 = ir == 8'b11011101;
  /* T80_MCode.vhd:1668:88  */
  assign n5104 = n5101 | n5103;
  /* T80_MCode.vhd:1668:99  */
  assign n5106 = ir == 8'b11011111;
  /* T80_MCode.vhd:1668:99  */
  assign n5107 = n5104 | n5106;
  /* T80_MCode.vhd:1669:33  */
  assign n5109 = ir == 8'b11100000;
  /* T80_MCode.vhd:1669:33  */
  assign n5110 = n5107 | n5109;
  /* T80_MCode.vhd:1669:44  */
  assign n5112 = ir == 8'b11100001;
  /* T80_MCode.vhd:1669:44  */
  assign n5113 = n5110 | n5112;
  /* T80_MCode.vhd:1669:55  */
  assign n5115 = ir == 8'b11100010;
  /* T80_MCode.vhd:1669:55  */
  assign n5116 = n5113 | n5115;
  /* T80_MCode.vhd:1669:66  */
  assign n5118 = ir == 8'b11100011;
  /* T80_MCode.vhd:1669:66  */
  assign n5119 = n5116 | n5118;
  /* T80_MCode.vhd:1669:77  */
  assign n5121 = ir == 8'b11100100;
  /* T80_MCode.vhd:1669:77  */
  assign n5122 = n5119 | n5121;
  /* T80_MCode.vhd:1669:88  */
  assign n5124 = ir == 8'b11100101;
  /* T80_MCode.vhd:1669:88  */
  assign n5125 = n5122 | n5124;
  /* T80_MCode.vhd:1669:99  */
  assign n5127 = ir == 8'b11100111;
  /* T80_MCode.vhd:1669:99  */
  assign n5128 = n5125 | n5127;
  /* T80_MCode.vhd:1670:33  */
  assign n5130 = ir == 8'b11101000;
  /* T80_MCode.vhd:1670:33  */
  assign n5131 = n5128 | n5130;
  /* T80_MCode.vhd:1670:44  */
  assign n5133 = ir == 8'b11101001;
  /* T80_MCode.vhd:1670:44  */
  assign n5134 = n5131 | n5133;
  /* T80_MCode.vhd:1670:55  */
  assign n5136 = ir == 8'b11101010;
  /* T80_MCode.vhd:1670:55  */
  assign n5137 = n5134 | n5136;
  /* T80_MCode.vhd:1670:66  */
  assign n5139 = ir == 8'b11101011;
  /* T80_MCode.vhd:1670:66  */
  assign n5140 = n5137 | n5139;
  /* T80_MCode.vhd:1670:77  */
  assign n5142 = ir == 8'b11101100;
  /* T80_MCode.vhd:1670:77  */
  assign n5143 = n5140 | n5142;
  /* T80_MCode.vhd:1670:88  */
  assign n5145 = ir == 8'b11101101;
  /* T80_MCode.vhd:1670:88  */
  assign n5146 = n5143 | n5145;
  /* T80_MCode.vhd:1670:99  */
  assign n5148 = ir == 8'b11101111;
  /* T80_MCode.vhd:1670:99  */
  assign n5149 = n5146 | n5148;
  /* T80_MCode.vhd:1671:33  */
  assign n5151 = ir == 8'b11110000;
  /* T80_MCode.vhd:1671:33  */
  assign n5152 = n5149 | n5151;
  /* T80_MCode.vhd:1671:44  */
  assign n5154 = ir == 8'b11110001;
  /* T80_MCode.vhd:1671:44  */
  assign n5155 = n5152 | n5154;
  /* T80_MCode.vhd:1671:55  */
  assign n5157 = ir == 8'b11110010;
  /* T80_MCode.vhd:1671:55  */
  assign n5158 = n5155 | n5157;
  /* T80_MCode.vhd:1671:66  */
  assign n5160 = ir == 8'b11110011;
  /* T80_MCode.vhd:1671:66  */
  assign n5161 = n5158 | n5160;
  /* T80_MCode.vhd:1671:77  */
  assign n5163 = ir == 8'b11110100;
  /* T80_MCode.vhd:1671:77  */
  assign n5164 = n5161 | n5163;
  /* T80_MCode.vhd:1671:88  */
  assign n5166 = ir == 8'b11110101;
  /* T80_MCode.vhd:1671:88  */
  assign n5167 = n5164 | n5166;
  /* T80_MCode.vhd:1671:99  */
  assign n5169 = ir == 8'b11110111;
  /* T80_MCode.vhd:1671:99  */
  assign n5170 = n5167 | n5169;
  /* T80_MCode.vhd:1672:33  */
  assign n5172 = ir == 8'b11111000;
  /* T80_MCode.vhd:1672:33  */
  assign n5173 = n5170 | n5172;
  /* T80_MCode.vhd:1672:44  */
  assign n5175 = ir == 8'b11111001;
  /* T80_MCode.vhd:1672:44  */
  assign n5176 = n5173 | n5175;
  /* T80_MCode.vhd:1672:55  */
  assign n5178 = ir == 8'b11111010;
  /* T80_MCode.vhd:1672:55  */
  assign n5179 = n5176 | n5178;
  /* T80_MCode.vhd:1672:66  */
  assign n5181 = ir == 8'b11111011;
  /* T80_MCode.vhd:1672:66  */
  assign n5182 = n5179 | n5181;
  /* T80_MCode.vhd:1672:77  */
  assign n5184 = ir == 8'b11111100;
  /* T80_MCode.vhd:1672:77  */
  assign n5185 = n5182 | n5184;
  /* T80_MCode.vhd:1672:88  */
  assign n5187 = ir == 8'b11111101;
  /* T80_MCode.vhd:1672:88  */
  assign n5188 = n5185 | n5187;
  /* T80_MCode.vhd:1672:99  */
  assign n5190 = ir == 8'b11111111;
  /* T80_MCode.vhd:1672:99  */
  assign n5191 = n5188 | n5190;
  /* T80_MCode.vhd:1702:38  */
  assign n5192 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1703:33  */
  assign n5194 = n5192 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1703:40  */
  assign n5196 = n5192 == 31'b0000000000000000000000000000111;
  /* T80_MCode.vhd:1703:40  */
  assign n5197 = n5194 | n5196;
  /* T80_MCode.vhd:1705:33  */
  assign n5199 = n5192 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1711:33  */
  assign n5201 = n5192 == 31'b0000000000000000000000000000011;
  assign n5202 = {n5201, n5199, n5197};
  /* T80_MCode.vhd:1702:33  */
  always @*
    case (n5202)
      3'b100: n5204 = n2222;
      3'b010: n5204 = 3'b100;
      3'b001: n5204 = n2222;
      default: n5204 = n2222;
    endcase
  /* T80_MCode.vhd:1702:33  */
  always @*
    case (n5202)
      3'b100: n5207 = 1'b0;
      3'b010: n5207 = 1'b1;
      3'b001: n5207 = 1'b0;
      default: n5207 = 1'b0;
    endcase
  /* T80_MCode.vhd:1702:33  */
  always @*
    case (n5202)
      3'b100: n5209 = n2225;
      3'b010: n5209 = 4'b1010;
      3'b001: n5209 = n2225;
      default: n5209 = n2225;
    endcase
  /* T80_MCode.vhd:1702:33  */
  always @*
    case (n5202)
      3'b100: n5212 = 1'b0;
      3'b010: n5212 = 1'b1;
      3'b001: n5212 = 1'b0;
      default: n5212 = 1'b0;
    endcase
  /* T80_MCode.vhd:1702:33  */
  always @*
    case (n5202)
      3'b100: n5216 = 3'b111;
      3'b010: n5216 = 3'b010;
      3'b001: n5216 = 3'b010;
      default: n5216 = 3'b111;
    endcase
  /* T80_MCode.vhd:1702:33  */
  always @*
    case (n5202)
      3'b100: n5219 = 1'b1;
      3'b010: n5219 = 1'b0;
      3'b001: n5219 = 1'b0;
      default: n5219 = 1'b0;
    endcase
  /* T80_MCode.vhd:1699:25  */
  assign n5221 = ir == 8'b11000110;
  /* T80_MCode.vhd:1699:40  */
  assign n5223 = ir == 8'b11001110;
  /* T80_MCode.vhd:1699:40  */
  assign n5224 = n5221 | n5223;
  /* T80_MCode.vhd:1699:51  */
  assign n5226 = ir == 8'b11010110;
  /* T80_MCode.vhd:1699:51  */
  assign n5227 = n5224 | n5226;
  /* T80_MCode.vhd:1699:62  */
  assign n5229 = ir == 8'b11011110;
  /* T80_MCode.vhd:1699:62  */
  assign n5230 = n5227 | n5229;
  /* T80_MCode.vhd:1699:73  */
  assign n5232 = ir == 8'b11100110;
  /* T80_MCode.vhd:1699:73  */
  assign n5233 = n5230 | n5232;
  /* T80_MCode.vhd:1699:84  */
  assign n5235 = ir == 8'b11101110;
  /* T80_MCode.vhd:1699:84  */
  assign n5236 = n5233 | n5235;
  /* T80_MCode.vhd:1699:95  */
  assign n5238 = ir == 8'b11110110;
  /* T80_MCode.vhd:1699:95  */
  assign n5239 = n5236 | n5238;
  /* T80_MCode.vhd:1699:106  */
  assign n5241 = ir == 8'b11111110;
  /* T80_MCode.vhd:1699:106  */
  assign n5242 = n5239 | n5241;
  /* T80_MCode.vhd:1724:44  */
  assign n5244 = xy_state == 2'b00;
  /* T80_MCode.vhd:1725:51  */
  assign n5246 = mcycle == 3'b001;
  /* T80_MCode.vhd:1725:41  */
  assign n5249 = n5246 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:1725:41  */
  assign n5251 = n5246 ? 4'b1011 : n2225;
  /* T80_MCode.vhd:1725:41  */
  assign n5254 = n5246 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:1734:46  */
  assign n5255 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1735:41  */
  assign n5257 = n5255 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1735:48  */
  assign n5259 = n5255 == 31'b0000000000000000000000000000111;
  /* T80_MCode.vhd:1735:48  */
  assign n5260 = n5257 | n5259;
  /* T80_MCode.vhd:1737:41  */
  assign n5262 = n5255 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1743:41  */
  assign n5264 = n5255 == 31'b0000000000000000000000000000011;
  assign n5265 = {n5264, n5262, n5260};
  /* T80_MCode.vhd:1734:41  */
  always @*
    case (n5265)
      3'b100: n5267 = n2222;
      3'b010: n5267 = 3'b100;
      3'b001: n5267 = n2222;
      default: n5267 = n2222;
    endcase
  /* T80_MCode.vhd:1734:41  */
  always @*
    case (n5265)
      3'b100: n5270 = 1'b0;
      3'b010: n5270 = 1'b1;
      3'b001: n5270 = 1'b0;
      default: n5270 = 1'b0;
    endcase
  /* T80_MCode.vhd:1734:41  */
  always @*
    case (n5265)
      3'b100: n5272 = n2225;
      3'b010: n5272 = 4'b1011;
      3'b001: n5272 = n2225;
      default: n5272 = n2225;
    endcase
  /* T80_MCode.vhd:1734:41  */
  always @*
    case (n5265)
      3'b100: n5275 = 1'b0;
      3'b010: n5275 = 1'b1;
      3'b001: n5275 = 1'b0;
      default: n5275 = 1'b0;
    endcase
  /* T80_MCode.vhd:1734:41  */
  always @*
    case (n5265)
      3'b100: n5279 = 3'b111;
      3'b010: n5279 = 3'b010;
      3'b001: n5279 = 3'b010;
      default: n5279 = 3'b111;
    endcase
  /* T80_MCode.vhd:1734:41  */
  always @*
    case (n5265)
      3'b100: n5282 = 1'b1;
      3'b010: n5282 = 1'b0;
      3'b001: n5282 = 1'b0;
      default: n5282 = 1'b0;
    endcase
  /* T80_MCode.vhd:1724:33  */
  assign n5285 = n5244 ? 3'b001 : 3'b011;
  /* T80_MCode.vhd:1724:33  */
  assign n5286 = n5244 ? n2222 : n5267;
  /* T80_MCode.vhd:1724:33  */
  assign n5287 = n5244 ? n5249 : n5270;
  /* T80_MCode.vhd:1724:33  */
  assign n5288 = n5244 ? n5251 : n5272;
  /* T80_MCode.vhd:1724:33  */
  assign n5289 = n5244 ? n5254 : n5275;
  /* T80_MCode.vhd:1724:33  */
  assign n5291 = n5244 ? 3'b111 : n5279;
  /* T80_MCode.vhd:1724:33  */
  assign n5293 = n5244 ? 1'b0 : n5282;
  /* T80_MCode.vhd:1724:33  */
  assign n5296 = n5244 ? 1'b0 : 1'b1;
  /* T80_MCode.vhd:1715:25  */
  assign n5298 = ir == 8'b10000000;
  /* T80_MCode.vhd:1715:40  */
  assign n5300 = ir == 8'b10000001;
  /* T80_MCode.vhd:1715:40  */
  assign n5301 = n5298 | n5300;
  /* T80_MCode.vhd:1715:51  */
  assign n5303 = ir == 8'b10000010;
  /* T80_MCode.vhd:1715:51  */
  assign n5304 = n5301 | n5303;
  /* T80_MCode.vhd:1715:62  */
  assign n5306 = ir == 8'b10000011;
  /* T80_MCode.vhd:1715:62  */
  assign n5307 = n5304 | n5306;
  /* T80_MCode.vhd:1715:73  */
  assign n5309 = ir == 8'b10000100;
  /* T80_MCode.vhd:1715:73  */
  assign n5310 = n5307 | n5309;
  /* T80_MCode.vhd:1715:84  */
  assign n5312 = ir == 8'b10000101;
  /* T80_MCode.vhd:1715:84  */
  assign n5313 = n5310 | n5312;
  /* T80_MCode.vhd:1715:95  */
  assign n5315 = ir == 8'b10000111;
  /* T80_MCode.vhd:1715:95  */
  assign n5316 = n5313 | n5315;
  /* T80_MCode.vhd:1716:33  */
  assign n5318 = ir == 8'b10001000;
  /* T80_MCode.vhd:1716:33  */
  assign n5319 = n5316 | n5318;
  /* T80_MCode.vhd:1716:44  */
  assign n5321 = ir == 8'b10001001;
  /* T80_MCode.vhd:1716:44  */
  assign n5322 = n5319 | n5321;
  /* T80_MCode.vhd:1716:55  */
  assign n5324 = ir == 8'b10001010;
  /* T80_MCode.vhd:1716:55  */
  assign n5325 = n5322 | n5324;
  /* T80_MCode.vhd:1716:66  */
  assign n5327 = ir == 8'b10001011;
  /* T80_MCode.vhd:1716:66  */
  assign n5328 = n5325 | n5327;
  /* T80_MCode.vhd:1716:77  */
  assign n5330 = ir == 8'b10001100;
  /* T80_MCode.vhd:1716:77  */
  assign n5331 = n5328 | n5330;
  /* T80_MCode.vhd:1716:88  */
  assign n5333 = ir == 8'b10001101;
  /* T80_MCode.vhd:1716:88  */
  assign n5334 = n5331 | n5333;
  /* T80_MCode.vhd:1716:99  */
  assign n5336 = ir == 8'b10001111;
  /* T80_MCode.vhd:1716:99  */
  assign n5337 = n5334 | n5336;
  /* T80_MCode.vhd:1717:33  */
  assign n5339 = ir == 8'b10010000;
  /* T80_MCode.vhd:1717:33  */
  assign n5340 = n5337 | n5339;
  /* T80_MCode.vhd:1717:44  */
  assign n5342 = ir == 8'b10010001;
  /* T80_MCode.vhd:1717:44  */
  assign n5343 = n5340 | n5342;
  /* T80_MCode.vhd:1717:55  */
  assign n5345 = ir == 8'b10010010;
  /* T80_MCode.vhd:1717:55  */
  assign n5346 = n5343 | n5345;
  /* T80_MCode.vhd:1717:66  */
  assign n5348 = ir == 8'b10010011;
  /* T80_MCode.vhd:1717:66  */
  assign n5349 = n5346 | n5348;
  /* T80_MCode.vhd:1717:77  */
  assign n5351 = ir == 8'b10010100;
  /* T80_MCode.vhd:1717:77  */
  assign n5352 = n5349 | n5351;
  /* T80_MCode.vhd:1717:88  */
  assign n5354 = ir == 8'b10010101;
  /* T80_MCode.vhd:1717:88  */
  assign n5355 = n5352 | n5354;
  /* T80_MCode.vhd:1717:99  */
  assign n5357 = ir == 8'b10010111;
  /* T80_MCode.vhd:1717:99  */
  assign n5358 = n5355 | n5357;
  /* T80_MCode.vhd:1718:33  */
  assign n5360 = ir == 8'b10011000;
  /* T80_MCode.vhd:1718:33  */
  assign n5361 = n5358 | n5360;
  /* T80_MCode.vhd:1718:44  */
  assign n5363 = ir == 8'b10011001;
  /* T80_MCode.vhd:1718:44  */
  assign n5364 = n5361 | n5363;
  /* T80_MCode.vhd:1718:55  */
  assign n5366 = ir == 8'b10011010;
  /* T80_MCode.vhd:1718:55  */
  assign n5367 = n5364 | n5366;
  /* T80_MCode.vhd:1718:66  */
  assign n5369 = ir == 8'b10011011;
  /* T80_MCode.vhd:1718:66  */
  assign n5370 = n5367 | n5369;
  /* T80_MCode.vhd:1718:77  */
  assign n5372 = ir == 8'b10011100;
  /* T80_MCode.vhd:1718:77  */
  assign n5373 = n5370 | n5372;
  /* T80_MCode.vhd:1718:88  */
  assign n5375 = ir == 8'b10011101;
  /* T80_MCode.vhd:1718:88  */
  assign n5376 = n5373 | n5375;
  /* T80_MCode.vhd:1718:99  */
  assign n5378 = ir == 8'b10011111;
  /* T80_MCode.vhd:1718:99  */
  assign n5379 = n5376 | n5378;
  /* T80_MCode.vhd:1719:33  */
  assign n5381 = ir == 8'b10100000;
  /* T80_MCode.vhd:1719:33  */
  assign n5382 = n5379 | n5381;
  /* T80_MCode.vhd:1719:44  */
  assign n5384 = ir == 8'b10100001;
  /* T80_MCode.vhd:1719:44  */
  assign n5385 = n5382 | n5384;
  /* T80_MCode.vhd:1719:55  */
  assign n5387 = ir == 8'b10100010;
  /* T80_MCode.vhd:1719:55  */
  assign n5388 = n5385 | n5387;
  /* T80_MCode.vhd:1719:66  */
  assign n5390 = ir == 8'b10100011;
  /* T80_MCode.vhd:1719:66  */
  assign n5391 = n5388 | n5390;
  /* T80_MCode.vhd:1719:77  */
  assign n5393 = ir == 8'b10100100;
  /* T80_MCode.vhd:1719:77  */
  assign n5394 = n5391 | n5393;
  /* T80_MCode.vhd:1719:88  */
  assign n5396 = ir == 8'b10100101;
  /* T80_MCode.vhd:1719:88  */
  assign n5397 = n5394 | n5396;
  /* T80_MCode.vhd:1719:99  */
  assign n5399 = ir == 8'b10100111;
  /* T80_MCode.vhd:1719:99  */
  assign n5400 = n5397 | n5399;
  /* T80_MCode.vhd:1720:33  */
  assign n5402 = ir == 8'b10101000;
  /* T80_MCode.vhd:1720:33  */
  assign n5403 = n5400 | n5402;
  /* T80_MCode.vhd:1720:44  */
  assign n5405 = ir == 8'b10101001;
  /* T80_MCode.vhd:1720:44  */
  assign n5406 = n5403 | n5405;
  /* T80_MCode.vhd:1720:55  */
  assign n5408 = ir == 8'b10101010;
  /* T80_MCode.vhd:1720:55  */
  assign n5409 = n5406 | n5408;
  /* T80_MCode.vhd:1720:66  */
  assign n5411 = ir == 8'b10101011;
  /* T80_MCode.vhd:1720:66  */
  assign n5412 = n5409 | n5411;
  /* T80_MCode.vhd:1720:77  */
  assign n5414 = ir == 8'b10101100;
  /* T80_MCode.vhd:1720:77  */
  assign n5415 = n5412 | n5414;
  /* T80_MCode.vhd:1720:88  */
  assign n5417 = ir == 8'b10101101;
  /* T80_MCode.vhd:1720:88  */
  assign n5418 = n5415 | n5417;
  /* T80_MCode.vhd:1720:99  */
  assign n5420 = ir == 8'b10101111;
  /* T80_MCode.vhd:1720:99  */
  assign n5421 = n5418 | n5420;
  /* T80_MCode.vhd:1721:33  */
  assign n5423 = ir == 8'b10110000;
  /* T80_MCode.vhd:1721:33  */
  assign n5424 = n5421 | n5423;
  /* T80_MCode.vhd:1721:44  */
  assign n5426 = ir == 8'b10110001;
  /* T80_MCode.vhd:1721:44  */
  assign n5427 = n5424 | n5426;
  /* T80_MCode.vhd:1721:55  */
  assign n5429 = ir == 8'b10110010;
  /* T80_MCode.vhd:1721:55  */
  assign n5430 = n5427 | n5429;
  /* T80_MCode.vhd:1721:66  */
  assign n5432 = ir == 8'b10110011;
  /* T80_MCode.vhd:1721:66  */
  assign n5433 = n5430 | n5432;
  /* T80_MCode.vhd:1721:77  */
  assign n5435 = ir == 8'b10110100;
  /* T80_MCode.vhd:1721:77  */
  assign n5436 = n5433 | n5435;
  /* T80_MCode.vhd:1721:88  */
  assign n5438 = ir == 8'b10110101;
  /* T80_MCode.vhd:1721:88  */
  assign n5439 = n5436 | n5438;
  /* T80_MCode.vhd:1721:99  */
  assign n5441 = ir == 8'b10110111;
  /* T80_MCode.vhd:1721:99  */
  assign n5442 = n5439 | n5441;
  /* T80_MCode.vhd:1722:33  */
  assign n5444 = ir == 8'b10111000;
  /* T80_MCode.vhd:1722:33  */
  assign n5445 = n5442 | n5444;
  /* T80_MCode.vhd:1722:44  */
  assign n5447 = ir == 8'b10111001;
  /* T80_MCode.vhd:1722:44  */
  assign n5448 = n5445 | n5447;
  /* T80_MCode.vhd:1722:55  */
  assign n5450 = ir == 8'b10111010;
  /* T80_MCode.vhd:1722:55  */
  assign n5451 = n5448 | n5450;
  /* T80_MCode.vhd:1722:66  */
  assign n5453 = ir == 8'b10111011;
  /* T80_MCode.vhd:1722:66  */
  assign n5454 = n5451 | n5453;
  /* T80_MCode.vhd:1722:77  */
  assign n5456 = ir == 8'b10111100;
  /* T80_MCode.vhd:1722:77  */
  assign n5457 = n5454 | n5456;
  /* T80_MCode.vhd:1722:88  */
  assign n5459 = ir == 8'b10111101;
  /* T80_MCode.vhd:1722:88  */
  assign n5460 = n5457 | n5459;
  /* T80_MCode.vhd:1722:99  */
  assign n5462 = ir == 8'b10111111;
  /* T80_MCode.vhd:1722:99  */
  assign n5463 = n5460 | n5462;
  /* T80_MCode.vhd:1752:38  */
  assign n5464 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1753:33  */
  assign n5466 = n5464 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1753:40  */
  assign n5468 = n5464 == 31'b0000000000000000000000000000111;
  /* T80_MCode.vhd:1753:40  */
  assign n5469 = n5466 | n5468;
  /* T80_MCode.vhd:1755:33  */
  assign n5471 = n5464 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1761:33  */
  assign n5473 = n5464 == 31'b0000000000000000000000000000011;
  assign n5474 = {n5473, n5471, n5469};
  /* T80_MCode.vhd:1752:33  */
  always @*
    case (n5474)
      3'b100: n5476 = n2222;
      3'b010: n5476 = 3'b100;
      3'b001: n5476 = n2222;
      default: n5476 = n2222;
    endcase
  /* T80_MCode.vhd:1752:33  */
  always @*
    case (n5474)
      3'b100: n5479 = 1'b0;
      3'b010: n5479 = 1'b1;
      3'b001: n5479 = 1'b0;
      default: n5479 = 1'b0;
    endcase
  /* T80_MCode.vhd:1752:33  */
  always @*
    case (n5474)
      3'b100: n5481 = n2225;
      3'b010: n5481 = 4'b1011;
      3'b001: n5481 = n2225;
      default: n5481 = n2225;
    endcase
  /* T80_MCode.vhd:1752:33  */
  always @*
    case (n5474)
      3'b100: n5484 = 1'b0;
      3'b010: n5484 = 1'b1;
      3'b001: n5484 = 1'b0;
      default: n5484 = 1'b0;
    endcase
  /* T80_MCode.vhd:1752:33  */
  always @*
    case (n5474)
      3'b100: n5488 = 3'b111;
      3'b010: n5488 = 3'b010;
      3'b001: n5488 = 3'b010;
      default: n5488 = 3'b111;
    endcase
  /* T80_MCode.vhd:1752:33  */
  always @*
    case (n5474)
      3'b100: n5491 = 1'b1;
      3'b010: n5491 = 1'b0;
      3'b001: n5491 = 1'b0;
      default: n5491 = 1'b0;
    endcase
  /* T80_MCode.vhd:1749:25  */
  assign n5493 = ir == 8'b10000110;
  /* T80_MCode.vhd:1749:40  */
  assign n5495 = ir == 8'b10001110;
  /* T80_MCode.vhd:1749:40  */
  assign n5496 = n5493 | n5495;
  /* T80_MCode.vhd:1749:51  */
  assign n5498 = ir == 8'b10010110;
  /* T80_MCode.vhd:1749:51  */
  assign n5499 = n5496 | n5498;
  /* T80_MCode.vhd:1749:62  */
  assign n5501 = ir == 8'b10011110;
  /* T80_MCode.vhd:1749:62  */
  assign n5502 = n5499 | n5501;
  /* T80_MCode.vhd:1749:73  */
  assign n5504 = ir == 8'b10100110;
  /* T80_MCode.vhd:1749:73  */
  assign n5505 = n5502 | n5504;
  /* T80_MCode.vhd:1749:84  */
  assign n5507 = ir == 8'b10101110;
  /* T80_MCode.vhd:1749:84  */
  assign n5508 = n5505 | n5507;
  /* T80_MCode.vhd:1749:95  */
  assign n5510 = ir == 8'b10110110;
  /* T80_MCode.vhd:1749:95  */
  assign n5511 = n5508 | n5510;
  /* T80_MCode.vhd:1749:106  */
  assign n5513 = ir == 8'b10111110;
  /* T80_MCode.vhd:1749:106  */
  assign n5514 = n5511 | n5513;
  assign n5515 = {n5514, n5463, n5242, n5191, n4970, n4931, n4729, n4678};
  /* T80_MCode.vhd:1561:25  */
  always @*
    case (n5515)
      8'b10000000: n5521 = 3'b011;
      8'b01000000: n5521 = n5285;
      8'b00100000: n5521 = 3'b011;
      8'b00010000: n5521 = n5013;
      8'b00001000: n5521 = 3'b010;
      8'b00000100: n5521 = n4756;
      8'b00000010: n5521 = 3'b011;
      8'b00000001: n5521 = n4500;
      default: n5521 = 3'bX;
    endcase
  /* T80_MCode.vhd:1561:25  */
  always @*
    case (n5515)
      8'b10000000: n5523 = n5476;
      8'b01000000: n5523 = n5286;
      8'b00100000: n5523 = n5204;
      8'b00010000: n5523 = n5014;
      8'b00001000: n5523 = n4942;
      8'b00000100: n5523 = n4757;
      8'b00000010: n5523 = n4691;
      8'b00000001: n5523 = n4501;
      default: n5523 = 3'bX;
    endcase
  /* T80_MCode.vhd:1561:25  */
  always @*
    case (n5515)
      8'b10000000: n5526 = n5479;
      8'b01000000: n5526 = n5287;
      8'b00100000: n5526 = n5207;
      8'b00010000: n5526 = n5015;
      8'b00001000: n5526 = 1'b0;
      8'b00000100: n5526 = 1'b0;
      8'b00000010: n5526 = n4694;
      8'b00000001: n5526 = n4502;
      default: n5526 = 1'bX;
    endcase
  /* T80_MCode.vhd:1561:25  */
  always @*
    case (n5515)
      8'b10000000: n5528 = n4457;
      8'b01000000: n5528 = n4457;
      8'b00100000: n5528 = n4457;
      8'b00010000: n5528 = n4457;
      8'b00001000: n5528 = n4457;
      8'b00000100: n5528 = n4735;
      8'b00000010: n5528 = n4457;
      8'b00000001: n5528 = n4457;
      default: n5528 = 3'bX;
    endcase
  /* T80_MCode.vhd:1561:25  */
  always @*
    case (n5515)
      8'b10000000: n5530 = n5481;
      8'b01000000: n5530 = n5288;
      8'b00100000: n5530 = n5209;
      8'b00010000: n5530 = n5016;
      8'b00001000: n5530 = n4944;
      8'b00000100: n5530 = n4759;
      8'b00000010: n5530 = n4696;
      8'b00000001: n5530 = n4503;
      default: n5530 = 4'bX;
    endcase
  /* T80_MCode.vhd:1561:25  */
  always @*
    case (n5515)
      8'b10000000: n5533 = n5484;
      8'b01000000: n5533 = n5289;
      8'b00100000: n5533 = n5212;
      8'b00010000: n5533 = n5017;
      8'b00001000: n5533 = 1'b0;
      8'b00000100: n5533 = 1'b0;
      8'b00000010: n5533 = n4699;
      8'b00000001: n5533 = n4504;
      default: n5533 = 1'bX;
    endcase
  /* T80_MCode.vhd:1561:25  */
  always @*
    case (n5515)
      8'b10000000: n5535 = n5488;
      8'b01000000: n5535 = n5291;
      8'b00100000: n5535 = n5216;
      8'b00010000: n5535 = n5019;
      8'b00001000: n5535 = n4947;
      8'b00000100: n5535 = n4761;
      8'b00000010: n5535 = n4703;
      8'b00000001: n5535 = n4506;
      default: n5535 = 3'bX;
    endcase
  /* T80_MCode.vhd:1561:25  */
  always @*
    case (n5515)
      8'b10000000: n5538 = n5491;
      8'b01000000: n5538 = n5293;
      8'b00100000: n5538 = n5219;
      8'b00010000: n5538 = n5021;
      8'b00001000: n5538 = 1'b0;
      8'b00000100: n5538 = 1'b0;
      8'b00000010: n5538 = n4706;
      8'b00000001: n5538 = n4508;
      default: n5538 = 1'bX;
    endcase
  /* T80_MCode.vhd:1561:25  */
  always @*
    case (n5515)
      8'b10000000: n5541 = 1'b0;
      8'b01000000: n5541 = n5296;
      8'b00100000: n5541 = 1'b0;
      8'b00010000: n5541 = n5024;
      8'b00001000: n5541 = 1'b0;
      8'b00000100: n5541 = n4764;
      8'b00000010: n5541 = 1'b0;
      8'b00000001: n5541 = n4511;
      default: n5541 = 1'bX;
    endcase
  /* T80_MCode.vhd:1550:17  */
  assign n5543 = iset == 2'b01;
  /* T80_MCode.vhd:1776:25  */
  assign n5545 = ir == 8'b00000000;
  /* T80_MCode.vhd:1776:40  */
  assign n5547 = ir == 8'b00000001;
  /* T80_MCode.vhd:1776:40  */
  assign n5548 = n5545 | n5547;
  /* T80_MCode.vhd:1776:51  */
  assign n5550 = ir == 8'b00000010;
  /* T80_MCode.vhd:1776:51  */
  assign n5551 = n5548 | n5550;
  /* T80_MCode.vhd:1776:62  */
  assign n5553 = ir == 8'b00000011;
  /* T80_MCode.vhd:1776:62  */
  assign n5554 = n5551 | n5553;
  /* T80_MCode.vhd:1776:73  */
  assign n5556 = ir == 8'b00000100;
  /* T80_MCode.vhd:1776:73  */
  assign n5557 = n5554 | n5556;
  /* T80_MCode.vhd:1776:84  */
  assign n5559 = ir == 8'b00000101;
  /* T80_MCode.vhd:1776:84  */
  assign n5560 = n5557 | n5559;
  /* T80_MCode.vhd:1776:95  */
  assign n5562 = ir == 8'b00000110;
  /* T80_MCode.vhd:1776:95  */
  assign n5563 = n5560 | n5562;
  /* T80_MCode.vhd:1776:106  */
  assign n5565 = ir == 8'b00000111;
  /* T80_MCode.vhd:1776:106  */
  assign n5566 = n5563 | n5565;
  /* T80_MCode.vhd:1777:33  */
  assign n5568 = ir == 8'b00001000;
  /* T80_MCode.vhd:1777:33  */
  assign n5569 = n5566 | n5568;
  /* T80_MCode.vhd:1777:44  */
  assign n5571 = ir == 8'b00001001;
  /* T80_MCode.vhd:1777:44  */
  assign n5572 = n5569 | n5571;
  /* T80_MCode.vhd:1777:55  */
  assign n5574 = ir == 8'b00001010;
  /* T80_MCode.vhd:1777:55  */
  assign n5575 = n5572 | n5574;
  /* T80_MCode.vhd:1777:66  */
  assign n5577 = ir == 8'b00001011;
  /* T80_MCode.vhd:1777:66  */
  assign n5578 = n5575 | n5577;
  /* T80_MCode.vhd:1777:77  */
  assign n5580 = ir == 8'b00001100;
  /* T80_MCode.vhd:1777:77  */
  assign n5581 = n5578 | n5580;
  /* T80_MCode.vhd:1777:88  */
  assign n5583 = ir == 8'b00001101;
  /* T80_MCode.vhd:1777:88  */
  assign n5584 = n5581 | n5583;
  /* T80_MCode.vhd:1777:99  */
  assign n5586 = ir == 8'b00001110;
  /* T80_MCode.vhd:1777:99  */
  assign n5587 = n5584 | n5586;
  /* T80_MCode.vhd:1777:110  */
  assign n5589 = ir == 8'b00001111;
  /* T80_MCode.vhd:1777:110  */
  assign n5590 = n5587 | n5589;
  /* T80_MCode.vhd:1778:33  */
  assign n5592 = ir == 8'b00010000;
  /* T80_MCode.vhd:1778:33  */
  assign n5593 = n5590 | n5592;
  /* T80_MCode.vhd:1778:44  */
  assign n5595 = ir == 8'b00010001;
  /* T80_MCode.vhd:1778:44  */
  assign n5596 = n5593 | n5595;
  /* T80_MCode.vhd:1778:55  */
  assign n5598 = ir == 8'b00010010;
  /* T80_MCode.vhd:1778:55  */
  assign n5599 = n5596 | n5598;
  /* T80_MCode.vhd:1778:66  */
  assign n5601 = ir == 8'b00010011;
  /* T80_MCode.vhd:1778:66  */
  assign n5602 = n5599 | n5601;
  /* T80_MCode.vhd:1778:77  */
  assign n5604 = ir == 8'b00010100;
  /* T80_MCode.vhd:1778:77  */
  assign n5605 = n5602 | n5604;
  /* T80_MCode.vhd:1778:88  */
  assign n5607 = ir == 8'b00010101;
  /* T80_MCode.vhd:1778:88  */
  assign n5608 = n5605 | n5607;
  /* T80_MCode.vhd:1778:99  */
  assign n5610 = ir == 8'b00010110;
  /* T80_MCode.vhd:1778:99  */
  assign n5611 = n5608 | n5610;
  /* T80_MCode.vhd:1778:110  */
  assign n5613 = ir == 8'b00010111;
  /* T80_MCode.vhd:1778:110  */
  assign n5614 = n5611 | n5613;
  /* T80_MCode.vhd:1779:33  */
  assign n5616 = ir == 8'b00011000;
  /* T80_MCode.vhd:1779:33  */
  assign n5617 = n5614 | n5616;
  /* T80_MCode.vhd:1779:44  */
  assign n5619 = ir == 8'b00011001;
  /* T80_MCode.vhd:1779:44  */
  assign n5620 = n5617 | n5619;
  /* T80_MCode.vhd:1779:55  */
  assign n5622 = ir == 8'b00011010;
  /* T80_MCode.vhd:1779:55  */
  assign n5623 = n5620 | n5622;
  /* T80_MCode.vhd:1779:66  */
  assign n5625 = ir == 8'b00011011;
  /* T80_MCode.vhd:1779:66  */
  assign n5626 = n5623 | n5625;
  /* T80_MCode.vhd:1779:77  */
  assign n5628 = ir == 8'b00011100;
  /* T80_MCode.vhd:1779:77  */
  assign n5629 = n5626 | n5628;
  /* T80_MCode.vhd:1779:88  */
  assign n5631 = ir == 8'b00011101;
  /* T80_MCode.vhd:1779:88  */
  assign n5632 = n5629 | n5631;
  /* T80_MCode.vhd:1779:99  */
  assign n5634 = ir == 8'b00011110;
  /* T80_MCode.vhd:1779:99  */
  assign n5635 = n5632 | n5634;
  /* T80_MCode.vhd:1779:110  */
  assign n5637 = ir == 8'b00011111;
  /* T80_MCode.vhd:1779:110  */
  assign n5638 = n5635 | n5637;
  /* T80_MCode.vhd:1780:33  */
  assign n5640 = ir == 8'b00100000;
  /* T80_MCode.vhd:1780:33  */
  assign n5641 = n5638 | n5640;
  /* T80_MCode.vhd:1780:44  */
  assign n5643 = ir == 8'b00100001;
  /* T80_MCode.vhd:1780:44  */
  assign n5644 = n5641 | n5643;
  /* T80_MCode.vhd:1780:55  */
  assign n5646 = ir == 8'b00100010;
  /* T80_MCode.vhd:1780:55  */
  assign n5647 = n5644 | n5646;
  /* T80_MCode.vhd:1780:66  */
  assign n5649 = ir == 8'b00100011;
  /* T80_MCode.vhd:1780:66  */
  assign n5650 = n5647 | n5649;
  /* T80_MCode.vhd:1780:77  */
  assign n5652 = ir == 8'b00100100;
  /* T80_MCode.vhd:1780:77  */
  assign n5653 = n5650 | n5652;
  /* T80_MCode.vhd:1780:88  */
  assign n5655 = ir == 8'b00100101;
  /* T80_MCode.vhd:1780:88  */
  assign n5656 = n5653 | n5655;
  /* T80_MCode.vhd:1780:99  */
  assign n5658 = ir == 8'b00100110;
  /* T80_MCode.vhd:1780:99  */
  assign n5659 = n5656 | n5658;
  /* T80_MCode.vhd:1780:110  */
  assign n5661 = ir == 8'b00100111;
  /* T80_MCode.vhd:1780:110  */
  assign n5662 = n5659 | n5661;
  /* T80_MCode.vhd:1781:33  */
  assign n5664 = ir == 8'b00101000;
  /* T80_MCode.vhd:1781:33  */
  assign n5665 = n5662 | n5664;
  /* T80_MCode.vhd:1781:44  */
  assign n5667 = ir == 8'b00101001;
  /* T80_MCode.vhd:1781:44  */
  assign n5668 = n5665 | n5667;
  /* T80_MCode.vhd:1781:55  */
  assign n5670 = ir == 8'b00101010;
  /* T80_MCode.vhd:1781:55  */
  assign n5671 = n5668 | n5670;
  /* T80_MCode.vhd:1781:66  */
  assign n5673 = ir == 8'b00101011;
  /* T80_MCode.vhd:1781:66  */
  assign n5674 = n5671 | n5673;
  /* T80_MCode.vhd:1781:77  */
  assign n5676 = ir == 8'b00101100;
  /* T80_MCode.vhd:1781:77  */
  assign n5677 = n5674 | n5676;
  /* T80_MCode.vhd:1781:88  */
  assign n5679 = ir == 8'b00101101;
  /* T80_MCode.vhd:1781:88  */
  assign n5680 = n5677 | n5679;
  /* T80_MCode.vhd:1781:99  */
  assign n5682 = ir == 8'b00101110;
  /* T80_MCode.vhd:1781:99  */
  assign n5683 = n5680 | n5682;
  /* T80_MCode.vhd:1781:110  */
  assign n5685 = ir == 8'b00101111;
  /* T80_MCode.vhd:1781:110  */
  assign n5686 = n5683 | n5685;
  /* T80_MCode.vhd:1782:33  */
  assign n5688 = ir == 8'b00110000;
  /* T80_MCode.vhd:1782:33  */
  assign n5689 = n5686 | n5688;
  /* T80_MCode.vhd:1782:44  */
  assign n5691 = ir == 8'b00110001;
  /* T80_MCode.vhd:1782:44  */
  assign n5692 = n5689 | n5691;
  /* T80_MCode.vhd:1782:55  */
  assign n5694 = ir == 8'b00110010;
  /* T80_MCode.vhd:1782:55  */
  assign n5695 = n5692 | n5694;
  /* T80_MCode.vhd:1782:66  */
  assign n5697 = ir == 8'b00110011;
  /* T80_MCode.vhd:1782:66  */
  assign n5698 = n5695 | n5697;
  /* T80_MCode.vhd:1782:77  */
  assign n5700 = ir == 8'b00110100;
  /* T80_MCode.vhd:1782:77  */
  assign n5701 = n5698 | n5700;
  /* T80_MCode.vhd:1782:88  */
  assign n5703 = ir == 8'b00110101;
  /* T80_MCode.vhd:1782:88  */
  assign n5704 = n5701 | n5703;
  /* T80_MCode.vhd:1782:99  */
  assign n5706 = ir == 8'b00110110;
  /* T80_MCode.vhd:1782:99  */
  assign n5707 = n5704 | n5706;
  /* T80_MCode.vhd:1782:110  */
  assign n5709 = ir == 8'b00110111;
  /* T80_MCode.vhd:1782:110  */
  assign n5710 = n5707 | n5709;
  /* T80_MCode.vhd:1783:33  */
  assign n5712 = ir == 8'b00111000;
  /* T80_MCode.vhd:1783:33  */
  assign n5713 = n5710 | n5712;
  /* T80_MCode.vhd:1783:44  */
  assign n5715 = ir == 8'b00111001;
  /* T80_MCode.vhd:1783:44  */
  assign n5716 = n5713 | n5715;
  /* T80_MCode.vhd:1783:55  */
  assign n5718 = ir == 8'b00111010;
  /* T80_MCode.vhd:1783:55  */
  assign n5719 = n5716 | n5718;
  /* T80_MCode.vhd:1783:66  */
  assign n5721 = ir == 8'b00111011;
  /* T80_MCode.vhd:1783:66  */
  assign n5722 = n5719 | n5721;
  /* T80_MCode.vhd:1783:77  */
  assign n5724 = ir == 8'b00111100;
  /* T80_MCode.vhd:1783:77  */
  assign n5725 = n5722 | n5724;
  /* T80_MCode.vhd:1783:88  */
  assign n5727 = ir == 8'b00111101;
  /* T80_MCode.vhd:1783:88  */
  assign n5728 = n5725 | n5727;
  /* T80_MCode.vhd:1783:99  */
  assign n5730 = ir == 8'b00111110;
  /* T80_MCode.vhd:1783:99  */
  assign n5731 = n5728 | n5730;
  /* T80_MCode.vhd:1783:110  */
  assign n5733 = ir == 8'b00111111;
  /* T80_MCode.vhd:1783:110  */
  assign n5734 = n5731 | n5733;
  /* T80_MCode.vhd:1786:33  */
  assign n5736 = ir == 8'b10000000;
  /* T80_MCode.vhd:1786:33  */
  assign n5737 = n5734 | n5736;
  /* T80_MCode.vhd:1786:44  */
  assign n5739 = ir == 8'b10000001;
  /* T80_MCode.vhd:1786:44  */
  assign n5740 = n5737 | n5739;
  /* T80_MCode.vhd:1786:55  */
  assign n5742 = ir == 8'b10000010;
  /* T80_MCode.vhd:1786:55  */
  assign n5743 = n5740 | n5742;
  /* T80_MCode.vhd:1786:66  */
  assign n5745 = ir == 8'b10000011;
  /* T80_MCode.vhd:1786:66  */
  assign n5746 = n5743 | n5745;
  /* T80_MCode.vhd:1786:77  */
  assign n5748 = ir == 8'b10000100;
  /* T80_MCode.vhd:1786:77  */
  assign n5749 = n5746 | n5748;
  /* T80_MCode.vhd:1786:88  */
  assign n5751 = ir == 8'b10000101;
  /* T80_MCode.vhd:1786:88  */
  assign n5752 = n5749 | n5751;
  /* T80_MCode.vhd:1786:99  */
  assign n5754 = ir == 8'b10000110;
  /* T80_MCode.vhd:1786:99  */
  assign n5755 = n5752 | n5754;
  /* T80_MCode.vhd:1786:110  */
  assign n5757 = ir == 8'b10000111;
  /* T80_MCode.vhd:1786:110  */
  assign n5758 = n5755 | n5757;
  /* T80_MCode.vhd:1787:33  */
  assign n5760 = ir == 8'b10001000;
  /* T80_MCode.vhd:1787:33  */
  assign n5761 = n5758 | n5760;
  /* T80_MCode.vhd:1787:44  */
  assign n5763 = ir == 8'b10001001;
  /* T80_MCode.vhd:1787:44  */
  assign n5764 = n5761 | n5763;
  /* T80_MCode.vhd:1787:55  */
  assign n5766 = ir == 8'b10001010;
  /* T80_MCode.vhd:1787:55  */
  assign n5767 = n5764 | n5766;
  /* T80_MCode.vhd:1787:66  */
  assign n5769 = ir == 8'b10001011;
  /* T80_MCode.vhd:1787:66  */
  assign n5770 = n5767 | n5769;
  /* T80_MCode.vhd:1787:77  */
  assign n5772 = ir == 8'b10001100;
  /* T80_MCode.vhd:1787:77  */
  assign n5773 = n5770 | n5772;
  /* T80_MCode.vhd:1787:88  */
  assign n5775 = ir == 8'b10001101;
  /* T80_MCode.vhd:1787:88  */
  assign n5776 = n5773 | n5775;
  /* T80_MCode.vhd:1787:99  */
  assign n5778 = ir == 8'b10001110;
  /* T80_MCode.vhd:1787:99  */
  assign n5779 = n5776 | n5778;
  /* T80_MCode.vhd:1787:110  */
  assign n5781 = ir == 8'b10001111;
  /* T80_MCode.vhd:1787:110  */
  assign n5782 = n5779 | n5781;
  /* T80_MCode.vhd:1788:33  */
  assign n5784 = ir == 8'b10010000;
  /* T80_MCode.vhd:1788:33  */
  assign n5785 = n5782 | n5784;
  /* T80_MCode.vhd:1788:44  */
  assign n5787 = ir == 8'b10010001;
  /* T80_MCode.vhd:1788:44  */
  assign n5788 = n5785 | n5787;
  /* T80_MCode.vhd:1788:55  */
  assign n5790 = ir == 8'b10010010;
  /* T80_MCode.vhd:1788:55  */
  assign n5791 = n5788 | n5790;
  /* T80_MCode.vhd:1788:66  */
  assign n5793 = ir == 8'b10010011;
  /* T80_MCode.vhd:1788:66  */
  assign n5794 = n5791 | n5793;
  /* T80_MCode.vhd:1788:77  */
  assign n5796 = ir == 8'b10010100;
  /* T80_MCode.vhd:1788:77  */
  assign n5797 = n5794 | n5796;
  /* T80_MCode.vhd:1788:88  */
  assign n5799 = ir == 8'b10010101;
  /* T80_MCode.vhd:1788:88  */
  assign n5800 = n5797 | n5799;
  /* T80_MCode.vhd:1788:99  */
  assign n5802 = ir == 8'b10010110;
  /* T80_MCode.vhd:1788:99  */
  assign n5803 = n5800 | n5802;
  /* T80_MCode.vhd:1788:110  */
  assign n5805 = ir == 8'b10010111;
  /* T80_MCode.vhd:1788:110  */
  assign n5806 = n5803 | n5805;
  /* T80_MCode.vhd:1789:33  */
  assign n5808 = ir == 8'b10011000;
  /* T80_MCode.vhd:1789:33  */
  assign n5809 = n5806 | n5808;
  /* T80_MCode.vhd:1789:44  */
  assign n5811 = ir == 8'b10011001;
  /* T80_MCode.vhd:1789:44  */
  assign n5812 = n5809 | n5811;
  /* T80_MCode.vhd:1789:55  */
  assign n5814 = ir == 8'b10011010;
  /* T80_MCode.vhd:1789:55  */
  assign n5815 = n5812 | n5814;
  /* T80_MCode.vhd:1789:66  */
  assign n5817 = ir == 8'b10011011;
  /* T80_MCode.vhd:1789:66  */
  assign n5818 = n5815 | n5817;
  /* T80_MCode.vhd:1789:77  */
  assign n5820 = ir == 8'b10011100;
  /* T80_MCode.vhd:1789:77  */
  assign n5821 = n5818 | n5820;
  /* T80_MCode.vhd:1789:88  */
  assign n5823 = ir == 8'b10011101;
  /* T80_MCode.vhd:1789:88  */
  assign n5824 = n5821 | n5823;
  /* T80_MCode.vhd:1789:99  */
  assign n5826 = ir == 8'b10011110;
  /* T80_MCode.vhd:1789:99  */
  assign n5827 = n5824 | n5826;
  /* T80_MCode.vhd:1789:110  */
  assign n5829 = ir == 8'b10011111;
  /* T80_MCode.vhd:1789:110  */
  assign n5830 = n5827 | n5829;
  /* T80_MCode.vhd:1790:33  */
  assign n5832 = ir == 8'b10100100;
  /* T80_MCode.vhd:1790:33  */
  assign n5833 = n5830 | n5832;
  /* T80_MCode.vhd:1790:88  */
  assign n5835 = ir == 8'b10100101;
  /* T80_MCode.vhd:1790:88  */
  assign n5836 = n5833 | n5835;
  /* T80_MCode.vhd:1790:99  */
  assign n5838 = ir == 8'b10100110;
  /* T80_MCode.vhd:1790:99  */
  assign n5839 = n5836 | n5838;
  /* T80_MCode.vhd:1790:110  */
  assign n5841 = ir == 8'b10100111;
  /* T80_MCode.vhd:1790:110  */
  assign n5842 = n5839 | n5841;
  /* T80_MCode.vhd:1791:33  */
  assign n5844 = ir == 8'b10101100;
  /* T80_MCode.vhd:1791:33  */
  assign n5845 = n5842 | n5844;
  /* T80_MCode.vhd:1791:88  */
  assign n5847 = ir == 8'b10101101;
  /* T80_MCode.vhd:1791:88  */
  assign n5848 = n5845 | n5847;
  /* T80_MCode.vhd:1791:99  */
  assign n5850 = ir == 8'b10101110;
  /* T80_MCode.vhd:1791:99  */
  assign n5851 = n5848 | n5850;
  /* T80_MCode.vhd:1791:110  */
  assign n5853 = ir == 8'b10101111;
  /* T80_MCode.vhd:1791:110  */
  assign n5854 = n5851 | n5853;
  /* T80_MCode.vhd:1792:33  */
  assign n5856 = ir == 8'b10110100;
  /* T80_MCode.vhd:1792:33  */
  assign n5857 = n5854 | n5856;
  /* T80_MCode.vhd:1792:88  */
  assign n5859 = ir == 8'b10110101;
  /* T80_MCode.vhd:1792:88  */
  assign n5860 = n5857 | n5859;
  /* T80_MCode.vhd:1792:99  */
  assign n5862 = ir == 8'b10110110;
  /* T80_MCode.vhd:1792:99  */
  assign n5863 = n5860 | n5862;
  /* T80_MCode.vhd:1792:110  */
  assign n5865 = ir == 8'b10110111;
  /* T80_MCode.vhd:1792:110  */
  assign n5866 = n5863 | n5865;
  /* T80_MCode.vhd:1793:33  */
  assign n5868 = ir == 8'b10111100;
  /* T80_MCode.vhd:1793:33  */
  assign n5869 = n5866 | n5868;
  /* T80_MCode.vhd:1793:88  */
  assign n5871 = ir == 8'b10111101;
  /* T80_MCode.vhd:1793:88  */
  assign n5872 = n5869 | n5871;
  /* T80_MCode.vhd:1793:99  */
  assign n5874 = ir == 8'b10111110;
  /* T80_MCode.vhd:1793:99  */
  assign n5875 = n5872 | n5874;
  /* T80_MCode.vhd:1793:110  */
  assign n5877 = ir == 8'b10111111;
  /* T80_MCode.vhd:1793:110  */
  assign n5878 = n5875 | n5877;
  /* T80_MCode.vhd:1794:33  */
  assign n5880 = ir == 8'b11000000;
  /* T80_MCode.vhd:1794:33  */
  assign n5881 = n5878 | n5880;
  /* T80_MCode.vhd:1794:44  */
  assign n5883 = ir == 8'b11000010;
  /* T80_MCode.vhd:1794:44  */
  assign n5884 = n5881 | n5883;
  /* T80_MCode.vhd:1794:77  */
  assign n5886 = ir == 8'b11000100;
  /* T80_MCode.vhd:1794:77  */
  assign n5887 = n5884 | n5886;
  /* T80_MCode.vhd:1794:88  */
  assign n5889 = ir == 8'b11000101;
  /* T80_MCode.vhd:1794:88  */
  assign n5890 = n5887 | n5889;
  /* T80_MCode.vhd:1794:99  */
  assign n5892 = ir == 8'b11000110;
  /* T80_MCode.vhd:1794:99  */
  assign n5893 = n5890 | n5892;
  /* T80_MCode.vhd:1794:110  */
  assign n5895 = ir == 8'b11000111;
  /* T80_MCode.vhd:1794:110  */
  assign n5896 = n5893 | n5895;
  /* T80_MCode.vhd:1795:33  */
  assign n5898 = ir == 8'b11001000;
  /* T80_MCode.vhd:1795:33  */
  assign n5899 = n5896 | n5898;
  /* T80_MCode.vhd:1795:44  */
  assign n5901 = ir == 8'b11001010;
  /* T80_MCode.vhd:1795:44  */
  assign n5902 = n5899 | n5901;
  /* T80_MCode.vhd:1795:66  */
  assign n5904 = ir == 8'b11001011;
  /* T80_MCode.vhd:1795:66  */
  assign n5905 = n5902 | n5904;
  /* T80_MCode.vhd:1795:77  */
  assign n5907 = ir == 8'b11001100;
  /* T80_MCode.vhd:1795:77  */
  assign n5908 = n5905 | n5907;
  /* T80_MCode.vhd:1795:88  */
  assign n5910 = ir == 8'b11001101;
  /* T80_MCode.vhd:1795:88  */
  assign n5911 = n5908 | n5910;
  /* T80_MCode.vhd:1795:99  */
  assign n5913 = ir == 8'b11001110;
  /* T80_MCode.vhd:1795:99  */
  assign n5914 = n5911 | n5913;
  /* T80_MCode.vhd:1795:110  */
  assign n5916 = ir == 8'b11001111;
  /* T80_MCode.vhd:1795:110  */
  assign n5917 = n5914 | n5916;
  /* T80_MCode.vhd:1796:33  */
  assign n5919 = ir == 8'b11010000;
  /* T80_MCode.vhd:1796:33  */
  assign n5920 = n5917 | n5919;
  /* T80_MCode.vhd:1796:44  */
  assign n5922 = ir == 8'b11010010;
  /* T80_MCode.vhd:1796:44  */
  assign n5923 = n5920 | n5922;
  /* T80_MCode.vhd:1796:66  */
  assign n5925 = ir == 8'b11010011;
  /* T80_MCode.vhd:1796:66  */
  assign n5926 = n5923 | n5925;
  /* T80_MCode.vhd:1796:77  */
  assign n5928 = ir == 8'b11010100;
  /* T80_MCode.vhd:1796:77  */
  assign n5929 = n5926 | n5928;
  /* T80_MCode.vhd:1796:88  */
  assign n5931 = ir == 8'b11010101;
  /* T80_MCode.vhd:1796:88  */
  assign n5932 = n5929 | n5931;
  /* T80_MCode.vhd:1796:99  */
  assign n5934 = ir == 8'b11010110;
  /* T80_MCode.vhd:1796:99  */
  assign n5935 = n5932 | n5934;
  /* T80_MCode.vhd:1796:110  */
  assign n5937 = ir == 8'b11010111;
  /* T80_MCode.vhd:1796:110  */
  assign n5938 = n5935 | n5937;
  /* T80_MCode.vhd:1797:33  */
  assign n5940 = ir == 8'b11011000;
  /* T80_MCode.vhd:1797:33  */
  assign n5941 = n5938 | n5940;
  /* T80_MCode.vhd:1797:44  */
  assign n5943 = ir == 8'b11011010;
  /* T80_MCode.vhd:1797:44  */
  assign n5944 = n5941 | n5943;
  /* T80_MCode.vhd:1797:66  */
  assign n5946 = ir == 8'b11011011;
  /* T80_MCode.vhd:1797:66  */
  assign n5947 = n5944 | n5946;
  /* T80_MCode.vhd:1797:77  */
  assign n5949 = ir == 8'b11011100;
  /* T80_MCode.vhd:1797:77  */
  assign n5950 = n5947 | n5949;
  /* T80_MCode.vhd:1797:88  */
  assign n5952 = ir == 8'b11011101;
  /* T80_MCode.vhd:1797:88  */
  assign n5953 = n5950 | n5952;
  /* T80_MCode.vhd:1797:99  */
  assign n5955 = ir == 8'b11011110;
  /* T80_MCode.vhd:1797:99  */
  assign n5956 = n5953 | n5955;
  /* T80_MCode.vhd:1797:110  */
  assign n5958 = ir == 8'b11011111;
  /* T80_MCode.vhd:1797:110  */
  assign n5959 = n5956 | n5958;
  /* T80_MCode.vhd:1798:33  */
  assign n5961 = ir == 8'b11100000;
  /* T80_MCode.vhd:1798:33  */
  assign n5962 = n5959 | n5961;
  /* T80_MCode.vhd:1798:44  */
  assign n5964 = ir == 8'b11100001;
  /* T80_MCode.vhd:1798:44  */
  assign n5965 = n5962 | n5964;
  /* T80_MCode.vhd:1798:55  */
  assign n5967 = ir == 8'b11100010;
  /* T80_MCode.vhd:1798:55  */
  assign n5968 = n5965 | n5967;
  /* T80_MCode.vhd:1798:66  */
  assign n5970 = ir == 8'b11100011;
  /* T80_MCode.vhd:1798:66  */
  assign n5971 = n5968 | n5970;
  /* T80_MCode.vhd:1798:77  */
  assign n5973 = ir == 8'b11100100;
  /* T80_MCode.vhd:1798:77  */
  assign n5974 = n5971 | n5973;
  /* T80_MCode.vhd:1798:88  */
  assign n5976 = ir == 8'b11100101;
  /* T80_MCode.vhd:1798:88  */
  assign n5977 = n5974 | n5976;
  /* T80_MCode.vhd:1798:99  */
  assign n5979 = ir == 8'b11100110;
  /* T80_MCode.vhd:1798:99  */
  assign n5980 = n5977 | n5979;
  /* T80_MCode.vhd:1798:110  */
  assign n5982 = ir == 8'b11100111;
  /* T80_MCode.vhd:1798:110  */
  assign n5983 = n5980 | n5982;
  /* T80_MCode.vhd:1799:33  */
  assign n5985 = ir == 8'b11101000;
  /* T80_MCode.vhd:1799:33  */
  assign n5986 = n5983 | n5985;
  /* T80_MCode.vhd:1799:44  */
  assign n5988 = ir == 8'b11101001;
  /* T80_MCode.vhd:1799:44  */
  assign n5989 = n5986 | n5988;
  /* T80_MCode.vhd:1799:55  */
  assign n5991 = ir == 8'b11101010;
  /* T80_MCode.vhd:1799:55  */
  assign n5992 = n5989 | n5991;
  /* T80_MCode.vhd:1799:66  */
  assign n5994 = ir == 8'b11101011;
  /* T80_MCode.vhd:1799:66  */
  assign n5995 = n5992 | n5994;
  /* T80_MCode.vhd:1799:77  */
  assign n5997 = ir == 8'b11101100;
  /* T80_MCode.vhd:1799:77  */
  assign n5998 = n5995 | n5997;
  /* T80_MCode.vhd:1799:88  */
  assign n6000 = ir == 8'b11101101;
  /* T80_MCode.vhd:1799:88  */
  assign n6001 = n5998 | n6000;
  /* T80_MCode.vhd:1799:99  */
  assign n6003 = ir == 8'b11101110;
  /* T80_MCode.vhd:1799:99  */
  assign n6004 = n6001 | n6003;
  /* T80_MCode.vhd:1799:110  */
  assign n6006 = ir == 8'b11101111;
  /* T80_MCode.vhd:1799:110  */
  assign n6007 = n6004 | n6006;
  /* T80_MCode.vhd:1800:33  */
  assign n6009 = ir == 8'b11110000;
  /* T80_MCode.vhd:1800:33  */
  assign n6010 = n6007 | n6009;
  /* T80_MCode.vhd:1800:44  */
  assign n6012 = ir == 8'b11110001;
  /* T80_MCode.vhd:1800:44  */
  assign n6013 = n6010 | n6012;
  /* T80_MCode.vhd:1800:55  */
  assign n6015 = ir == 8'b11110010;
  /* T80_MCode.vhd:1800:55  */
  assign n6016 = n6013 | n6015;
  /* T80_MCode.vhd:1800:77  */
  assign n6018 = ir == 8'b11110100;
  /* T80_MCode.vhd:1800:77  */
  assign n6019 = n6016 | n6018;
  /* T80_MCode.vhd:1800:88  */
  assign n6021 = ir == 8'b11110101;
  /* T80_MCode.vhd:1800:88  */
  assign n6022 = n6019 | n6021;
  /* T80_MCode.vhd:1800:99  */
  assign n6024 = ir == 8'b11110110;
  /* T80_MCode.vhd:1800:99  */
  assign n6025 = n6022 | n6024;
  /* T80_MCode.vhd:1800:110  */
  assign n6027 = ir == 8'b11110111;
  /* T80_MCode.vhd:1800:110  */
  assign n6028 = n6025 | n6027;
  /* T80_MCode.vhd:1801:33  */
  assign n6030 = ir == 8'b11111000;
  /* T80_MCode.vhd:1801:33  */
  assign n6031 = n6028 | n6030;
  /* T80_MCode.vhd:1801:44  */
  assign n6033 = ir == 8'b11111001;
  /* T80_MCode.vhd:1801:44  */
  assign n6034 = n6031 | n6033;
  /* T80_MCode.vhd:1801:55  */
  assign n6036 = ir == 8'b11111010;
  /* T80_MCode.vhd:1801:55  */
  assign n6037 = n6034 | n6036;
  /* T80_MCode.vhd:1801:66  */
  assign n6039 = ir == 8'b11111011;
  /* T80_MCode.vhd:1801:66  */
  assign n6040 = n6037 | n6039;
  /* T80_MCode.vhd:1801:77  */
  assign n6042 = ir == 8'b11111100;
  /* T80_MCode.vhd:1801:77  */
  assign n6043 = n6040 | n6042;
  /* T80_MCode.vhd:1801:88  */
  assign n6045 = ir == 8'b11111101;
  /* T80_MCode.vhd:1801:88  */
  assign n6046 = n6043 | n6045;
  /* T80_MCode.vhd:1801:99  */
  assign n6048 = ir == 8'b11111110;
  /* T80_MCode.vhd:1801:99  */
  assign n6049 = n6046 | n6048;
  /* T80_MCode.vhd:1801:110  */
  assign n6051 = ir == 8'b11111111;
  /* T80_MCode.vhd:1801:110  */
  assign n6052 = n6049 | n6051;
  /* T80_MCode.vhd:1803:25  */
  assign n6054 = ir == 8'b01110111;
  /* T80_MCode.vhd:1803:40  */
  assign n6056 = ir == 8'b01111111;
  /* T80_MCode.vhd:1803:40  */
  assign n6057 = n6054 | n6056;
  /* T80_MCode.vhd:1807:25  */
  assign n6059 = ir == 8'b01010111;
  /* T80_MCode.vhd:1811:25  */
  assign n6061 = ir == 8'b01011111;
  /* T80_MCode.vhd:1815:25  */
  assign n6063 = ir == 8'b01000111;
  /* T80_MCode.vhd:1819:25  */
  assign n6065 = ir == 8'b01001111;
  /* T80_MCode.vhd:1827:38  */
  assign n6066 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1828:33  */
  assign n6068 = n6066 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1831:33  */
  assign n6070 = n6066 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:1837:46  */
  assign n6071 = ir[5:4]; // extract
  /* T80_MCode.vhd:1837:59  */
  assign n6073 = n6071 == 2'b11;
  /* T80_MCode.vhd:1840:78  */
  assign n6074 = ir[5:4]; // extract
  assign n6076 = {n6074, 1'b1};
  /* T80_MCode.vhd:1837:41  */
  assign n6078 = n6073 ? 3'b000 : n6076;
  /* T80_MCode.vhd:1837:41  */
  assign n6081 = n6073 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:1835:33  */
  assign n6083 = n6066 == 31'b0000000000000000000000000000100;
  /* T80_MCode.vhd:1847:46  */
  assign n6084 = ir[5:4]; // extract
  /* T80_MCode.vhd:1847:59  */
  assign n6086 = n6084 == 2'b11;
  /* T80_MCode.vhd:1850:78  */
  assign n6087 = ir[5:4]; // extract
  assign n6089 = {n6087, 1'b0};
  /* T80_MCode.vhd:1847:41  */
  assign n6091 = n6086 ? 3'b001 : n6089;
  /* T80_MCode.vhd:1847:41  */
  assign n6094 = n6086 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:1845:33  */
  assign n6096 = n6066 == 31'b0000000000000000000000000000101;
  assign n6097 = {n6096, n6083, n6070, n6068};
  /* T80_MCode.vhd:1827:33  */
  always @*
    case (n6097)
      4'b1000: n6101 = 1'b0;
      4'b0100: n6101 = 1'b0;
      4'b0010: n6101 = 1'b1;
      4'b0001: n6101 = 1'b1;
      default: n6101 = 1'b0;
    endcase
  /* T80_MCode.vhd:1827:33  */
  always @*
    case (n6097)
      4'b1000: n6104 = 1'b0;
      4'b0100: n6104 = 1'b1;
      4'b0010: n6104 = 1'b0;
      4'b0001: n6104 = 1'b0;
      default: n6104 = 1'b0;
    endcase
  /* T80_MCode.vhd:1827:33  */
  always @*
    case (n6097)
      4'b1000: n6108 = 1'b1;
      4'b0100: n6108 = 1'b1;
      4'b0010: n6108 = 1'b0;
      4'b0001: n6108 = 1'b0;
      default: n6108 = 1'b0;
    endcase
  /* T80_MCode.vhd:1827:33  */
  always @*
    case (n6097)
      4'b1000: n6110 = n6091;
      4'b0100: n6110 = n6078;
      4'b0010: n6110 = 3'b000;
      4'b0001: n6110 = 3'b000;
      default: n6110 = 3'b000;
    endcase
  /* T80_MCode.vhd:1827:33  */
  always @*
    case (n6097)
      4'b1000: n6112 = n6094;
      4'b0100: n6112 = n6081;
      4'b0010: n6112 = 1'b0;
      4'b0001: n6112 = 1'b0;
      default: n6112 = 1'b0;
    endcase
  /* T80_MCode.vhd:1827:33  */
  always @*
    case (n6097)
      4'b1000: n6116 = 3'b111;
      4'b0100: n6116 = 3'b110;
      4'b0010: n6116 = 3'b110;
      4'b0001: n6116 = 3'b111;
      default: n6116 = 3'b111;
    endcase
  /* T80_MCode.vhd:1827:33  */
  always @*
    case (n6097)
      4'b1000: n6119 = 1'b0;
      4'b0100: n6119 = 1'b0;
      4'b0010: n6119 = 1'b0;
      4'b0001: n6119 = 1'b1;
      default: n6119 = 1'b0;
    endcase
  /* T80_MCode.vhd:1827:33  */
  always @*
    case (n6097)
      4'b1000: n6122 = 1'b0;
      4'b0100: n6122 = 1'b0;
      4'b0010: n6122 = 1'b1;
      4'b0001: n6122 = 1'b0;
      default: n6122 = 1'b0;
    endcase
  /* T80_MCode.vhd:1824:25  */
  assign n6124 = ir == 8'b01001011;
  /* T80_MCode.vhd:1824:40  */
  assign n6126 = ir == 8'b01011011;
  /* T80_MCode.vhd:1824:40  */
  assign n6127 = n6124 | n6126;
  /* T80_MCode.vhd:1824:51  */
  assign n6129 = ir == 8'b01101011;
  /* T80_MCode.vhd:1824:51  */
  assign n6130 = n6127 | n6129;
  /* T80_MCode.vhd:1824:62  */
  assign n6132 = ir == 8'b01111011;
  /* T80_MCode.vhd:1824:62  */
  assign n6133 = n6130 | n6132;
  /* T80_MCode.vhd:1858:38  */
  assign n6134 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1859:33  */
  assign n6136 = n6134 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1866:46  */
  assign n6137 = ir[5:4]; // extract
  /* T80_MCode.vhd:1866:59  */
  assign n6139 = n6137 == 2'b11;
  /* T80_MCode.vhd:1869:78  */
  assign n6140 = ir[5:4]; // extract
  assign n6143 = {1'b0, n6140, 1'b1};
  /* T80_MCode.vhd:1866:41  */
  assign n6145 = n6139 ? 4'b1000 : n6143;
  /* T80_MCode.vhd:1862:33  */
  assign n6147 = n6134 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:1877:46  */
  assign n6148 = ir[5:4]; // extract
  /* T80_MCode.vhd:1877:59  */
  assign n6150 = n6148 == 2'b11;
  /* T80_MCode.vhd:1880:78  */
  assign n6151 = ir[5:4]; // extract
  assign n6154 = {1'b0, n6151, 1'b0};
  /* T80_MCode.vhd:1877:41  */
  assign n6156 = n6150 ? 4'b1001 : n6154;
  /* T80_MCode.vhd:1873:33  */
  assign n6158 = n6134 == 31'b0000000000000000000000000000100;
  /* T80_MCode.vhd:1884:33  */
  assign n6160 = n6134 == 31'b0000000000000000000000000000101;
  assign n6161 = {n6160, n6158, n6147, n6136};
  /* T80_MCode.vhd:1858:33  */
  always @*
    case (n6161)
      4'b1000: n6165 = 1'b0;
      4'b0100: n6165 = 1'b0;
      4'b0010: n6165 = 1'b1;
      4'b0001: n6165 = 1'b1;
      default: n6165 = 1'b0;
    endcase
  /* T80_MCode.vhd:1858:33  */
  always @*
    case (n6161)
      4'b1000: n6168 = 1'b0;
      4'b0100: n6168 = 1'b1;
      4'b0010: n6168 = 1'b0;
      4'b0001: n6168 = 1'b0;
      default: n6168 = 1'b0;
    endcase
  /* T80_MCode.vhd:1858:33  */
  always @*
    case (n6161)
      4'b1000: n6170 = 4'b0000;
      4'b0100: n6170 = n6156;
      4'b0010: n6170 = n6145;
      4'b0001: n6170 = 4'b0000;
      default: n6170 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1858:33  */
  always @*
    case (n6161)
      4'b1000: n6174 = 3'b111;
      4'b0100: n6174 = 3'b110;
      4'b0010: n6174 = 3'b110;
      4'b0001: n6174 = 3'b111;
      default: n6174 = 3'b111;
    endcase
  /* T80_MCode.vhd:1858:33  */
  always @*
    case (n6161)
      4'b1000: n6177 = 1'b0;
      4'b0100: n6177 = 1'b0;
      4'b0010: n6177 = 1'b0;
      4'b0001: n6177 = 1'b1;
      default: n6177 = 1'b0;
    endcase
  /* T80_MCode.vhd:1858:33  */
  always @*
    case (n6161)
      4'b1000: n6180 = 1'b0;
      4'b0100: n6180 = 1'b0;
      4'b0010: n6180 = 1'b1;
      4'b0001: n6180 = 1'b0;
      default: n6180 = 1'b0;
    endcase
  /* T80_MCode.vhd:1858:33  */
  always @*
    case (n6161)
      4'b1000: n6184 = 1'b1;
      4'b0100: n6184 = 1'b1;
      4'b0010: n6184 = 1'b0;
      4'b0001: n6184 = 1'b0;
      default: n6184 = 1'b0;
    endcase
  /* T80_MCode.vhd:1855:25  */
  assign n6186 = ir == 8'b01000011;
  /* T80_MCode.vhd:1855:40  */
  assign n6188 = ir == 8'b01010011;
  /* T80_MCode.vhd:1855:40  */
  assign n6189 = n6186 | n6188;
  /* T80_MCode.vhd:1855:51  */
  assign n6191 = ir == 8'b01100011;
  /* T80_MCode.vhd:1855:51  */
  assign n6192 = n6189 | n6191;
  /* T80_MCode.vhd:1855:62  */
  assign n6194 = ir == 8'b01110011;
  /* T80_MCode.vhd:1855:62  */
  assign n6195 = n6192 | n6194;
  /* T80_MCode.vhd:1891:38  */
  assign n6196 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1892:33  */
  assign n6198 = n6196 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1900:46  */
  assign n6200 = ir[3]; // extract
  /* T80_MCode.vhd:1900:50  */
  assign n6201 = ~n6200;
  /* T80_MCode.vhd:1900:41  */
  assign n6204 = n6201 ? 4'b0110 : 4'b1110;
  /* T80_MCode.vhd:1895:33  */
  assign n6206 = n6196 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1909:46  */
  assign n6207 = ir[3]; // extract
  /* T80_MCode.vhd:1909:50  */
  assign n6208 = ~n6207;
  /* T80_MCode.vhd:1909:41  */
  assign n6211 = n6208 ? 4'b0101 : 4'b1101;
  /* T80_MCode.vhd:1905:33  */
  assign n6213 = n6196 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:1915:33  */
  assign n6215 = n6196 == 31'b0000000000000000000000000000100;
  assign n6216 = {n6215, n6213, n6206, n6198};
  /* T80_MCode.vhd:1891:33  */
  always @*
    case (n6216)
      4'b1000: n6219 = 3'b101;
      4'b0100: n6219 = 3'b101;
      4'b0010: n6219 = n2222;
      4'b0001: n6219 = n2222;
      default: n6219 = n2222;
    endcase
  /* T80_MCode.vhd:1891:33  */
  always @*
    case (n6216)
      4'b1000: n6222 = 4'b0000;
      4'b0100: n6222 = n6211;
      4'b0010: n6222 = n6204;
      4'b0001: n6222 = 4'b1100;
      default: n6222 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1891:33  */
  always @*
    case (n6216)
      4'b1000: n6224 = 3'b000;
      4'b0100: n6224 = 3'b000;
      4'b0010: n6224 = 3'b111;
      4'b0001: n6224 = 3'b000;
      default: n6224 = 3'b000;
    endcase
  /* T80_MCode.vhd:1891:33  */
  always @*
    case (n6216)
      4'b1000: n6227 = 4'b0000;
      4'b0100: n6227 = 4'b0000;
      4'b0010: n6227 = 4'b0110;
      4'b0001: n6227 = 4'b0000;
      default: n6227 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1891:33  */
  always @*
    case (n6216)
      4'b1000: n6229 = n2225;
      4'b0100: n6229 = n2225;
      4'b0010: n6229 = 4'b0000;
      4'b0001: n6229 = n2225;
      default: n6229 = n2225;
    endcase
  /* T80_MCode.vhd:1891:33  */
  always @*
    case (n6216)
      4'b1000: n6233 = 3'b111;
      4'b0100: n6233 = 3'b111;
      4'b0010: n6233 = 3'b001;
      4'b0001: n6233 = 3'b010;
      default: n6233 = 3'b111;
    endcase
  /* T80_MCode.vhd:1891:33  */
  always @*
    case (n6216)
      4'b1000: n6236 = 1'b0;
      4'b0100: n6236 = 1'b1;
      4'b0010: n6236 = 1'b0;
      4'b0001: n6236 = 1'b0;
      default: n6236 = 1'b0;
    endcase
  /* T80_MCode.vhd:1891:33  */
  always @*
    case (n6216)
      4'b1000: n6239 = 1'b1;
      4'b0100: n6239 = 1'b0;
      4'b0010: n6239 = 1'b0;
      4'b0001: n6239 = 1'b0;
      default: n6239 = 1'b0;
    endcase
  /* T80_MCode.vhd:1891:33  */
  always @*
    case (n6216)
      4'b1000: n6242 = 1'b0;
      4'b0100: n6242 = 1'b1;
      4'b0010: n6242 = 1'b0;
      4'b0001: n6242 = 1'b0;
      default: n6242 = 1'b0;
    endcase
  /* T80_MCode.vhd:1891:33  */
  always @*
    case (n6216)
      4'b1000: n6245 = 1'b0;
      4'b0100: n6245 = 1'b1;
      4'b0010: n6245 = 1'b0;
      4'b0001: n6245 = 1'b0;
      default: n6245 = 1'b0;
    endcase
  /* T80_MCode.vhd:1888:25  */
  assign n6247 = ir == 8'b10100000;
  /* T80_MCode.vhd:1888:41  */
  assign n6249 = ir == 8'b10101000;
  /* T80_MCode.vhd:1888:41  */
  assign n6250 = n6247 | n6249;
  /* T80_MCode.vhd:1888:54  */
  assign n6252 = ir == 8'b10110000;
  /* T80_MCode.vhd:1888:54  */
  assign n6253 = n6250 | n6252;
  /* T80_MCode.vhd:1888:67  */
  assign n6255 = ir == 8'b10111000;
  /* T80_MCode.vhd:1888:67  */
  assign n6256 = n6253 | n6255;
  /* T80_MCode.vhd:1923:38  */
  assign n6257 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1924:33  */
  assign n6259 = n6257 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1933:46  */
  assign n6261 = ir[3]; // extract
  /* T80_MCode.vhd:1933:50  */
  assign n6262 = ~n6261;
  /* T80_MCode.vhd:1933:41  */
  assign n6265 = n6262 ? 4'b0110 : 4'b1110;
  /* T80_MCode.vhd:1927:33  */
  assign n6267 = n6257 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1939:33  */
  assign n6269 = n6257 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:1944:33  */
  assign n6271 = n6257 == 31'b0000000000000000000000000000100;
  assign n6272 = {n6271, n6269, n6267, n6259};
  /* T80_MCode.vhd:1923:33  */
  always @*
    case (n6272)
      4'b1000: n6275 = 3'b101;
      4'b0100: n6275 = 3'b101;
      4'b0010: n6275 = n2222;
      4'b0001: n6275 = n2222;
      default: n6275 = n2222;
    endcase
  /* T80_MCode.vhd:1923:33  */
  always @*
    case (n6272)
      4'b1000: n6278 = 4'b0000;
      4'b0100: n6278 = 4'b0000;
      4'b0010: n6278 = n6265;
      4'b0001: n6278 = 4'b1100;
      default: n6278 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1923:33  */
  always @*
    case (n6272)
      4'b1000: n6280 = 3'b000;
      4'b0100: n6280 = 3'b000;
      4'b0010: n6280 = 3'b111;
      4'b0001: n6280 = 3'b000;
      default: n6280 = 3'b000;
    endcase
  /* T80_MCode.vhd:1923:33  */
  always @*
    case (n6272)
      4'b1000: n6283 = 4'b0000;
      4'b0100: n6283 = 4'b0000;
      4'b0010: n6283 = 4'b0110;
      4'b0001: n6283 = 4'b0000;
      default: n6283 = 4'b0000;
    endcase
  /* T80_MCode.vhd:1923:33  */
  always @*
    case (n6272)
      4'b1000: n6285 = n2225;
      4'b0100: n6285 = n2225;
      4'b0010: n6285 = 4'b0111;
      4'b0001: n6285 = n2225;
      default: n6285 = n2225;
    endcase
  /* T80_MCode.vhd:1923:33  */
  always @*
    case (n6272)
      4'b1000: n6288 = 1'b0;
      4'b0100: n6288 = 1'b0;
      4'b0010: n6288 = 1'b1;
      4'b0001: n6288 = 1'b0;
      default: n6288 = 1'b0;
    endcase
  /* T80_MCode.vhd:1923:33  */
  always @*
    case (n6272)
      4'b1000: n6291 = 1'b0;
      4'b0100: n6291 = 1'b0;
      4'b0010: n6291 = 1'b1;
      4'b0001: n6291 = 1'b0;
      default: n6291 = 1'b0;
    endcase
  /* T80_MCode.vhd:1923:33  */
  always @*
    case (n6272)
      4'b1000: n6294 = 3'b111;
      4'b0100: n6294 = 3'b111;
      4'b0010: n6294 = 3'b111;
      4'b0001: n6294 = 3'b010;
      default: n6294 = 3'b111;
    endcase
  /* T80_MCode.vhd:1923:33  */
  always @*
    case (n6272)
      4'b1000: n6297 = 1'b0;
      4'b0100: n6297 = 1'b1;
      4'b0010: n6297 = 1'b0;
      4'b0001: n6297 = 1'b0;
      default: n6297 = 1'b0;
    endcase
  /* T80_MCode.vhd:1923:33  */
  always @*
    case (n6272)
      4'b1000: n6301 = 1'b1;
      4'b0100: n6301 = 1'b1;
      4'b0010: n6301 = 1'b0;
      4'b0001: n6301 = 1'b0;
      default: n6301 = 1'b0;
    endcase
  /* T80_MCode.vhd:1923:33  */
  always @*
    case (n6272)
      4'b1000: n6305 = 1'b0;
      4'b0100: n6305 = 1'b1;
      4'b0010: n6305 = 1'b1;
      4'b0001: n6305 = 1'b0;
      default: n6305 = 1'b0;
    endcase
  /* T80_MCode.vhd:1920:25  */
  assign n6307 = ir == 8'b10100001;
  /* T80_MCode.vhd:1920:41  */
  assign n6309 = ir == 8'b10101001;
  /* T80_MCode.vhd:1920:41  */
  assign n6310 = n6307 | n6309;
  /* T80_MCode.vhd:1920:54  */
  assign n6312 = ir == 8'b10110001;
  /* T80_MCode.vhd:1920:54  */
  assign n6313 = n6310 | n6312;
  /* T80_MCode.vhd:1920:67  */
  assign n6315 = ir == 8'b10111001;
  /* T80_MCode.vhd:1920:67  */
  assign n6316 = n6313 | n6315;
  /* T80_MCode.vhd:1949:25  */
  assign n6318 = ir == 8'b01000100;
  /* T80_MCode.vhd:1949:40  */
  assign n6320 = ir == 8'b01001100;
  /* T80_MCode.vhd:1949:40  */
  assign n6321 = n6318 | n6320;
  /* T80_MCode.vhd:1949:51  */
  assign n6323 = ir == 8'b01010100;
  /* T80_MCode.vhd:1949:51  */
  assign n6324 = n6321 | n6323;
  /* T80_MCode.vhd:1949:62  */
  assign n6326 = ir == 8'b01011100;
  /* T80_MCode.vhd:1949:62  */
  assign n6327 = n6324 | n6326;
  /* T80_MCode.vhd:1949:73  */
  assign n6329 = ir == 8'b01100100;
  /* T80_MCode.vhd:1949:73  */
  assign n6330 = n6327 | n6329;
  /* T80_MCode.vhd:1949:84  */
  assign n6332 = ir == 8'b01101100;
  /* T80_MCode.vhd:1949:84  */
  assign n6333 = n6330 | n6332;
  /* T80_MCode.vhd:1949:95  */
  assign n6335 = ir == 8'b01110100;
  /* T80_MCode.vhd:1949:95  */
  assign n6336 = n6333 | n6335;
  /* T80_MCode.vhd:1949:106  */
  assign n6338 = ir == 8'b01111100;
  /* T80_MCode.vhd:1949:106  */
  assign n6339 = n6336 | n6338;
  /* T80_MCode.vhd:1956:25  */
  assign n6341 = ir == 8'b01000110;
  /* T80_MCode.vhd:1956:40  */
  assign n6343 = ir == 8'b01001110;
  /* T80_MCode.vhd:1956:40  */
  assign n6344 = n6341 | n6343;
  /* T80_MCode.vhd:1956:51  */
  assign n6346 = ir == 8'b01100110;
  /* T80_MCode.vhd:1956:51  */
  assign n6347 = n6344 | n6346;
  /* T80_MCode.vhd:1956:62  */
  assign n6349 = ir == 8'b01101110;
  /* T80_MCode.vhd:1956:62  */
  assign n6350 = n6347 | n6349;
  /* T80_MCode.vhd:1959:25  */
  assign n6352 = ir == 8'b01010110;
  /* T80_MCode.vhd:1959:40  */
  assign n6354 = ir == 8'b01110110;
  /* T80_MCode.vhd:1959:40  */
  assign n6355 = n6352 | n6354;
  /* T80_MCode.vhd:1962:25  */
  assign n6357 = ir == 8'b01011110;
  /* T80_MCode.vhd:1962:40  */
  assign n6359 = ir == 8'b01111110;
  /* T80_MCode.vhd:1962:40  */
  assign n6360 = n6357 | n6359;
  /* T80_MCode.vhd:1969:38  */
  assign n6361 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:1970:33  */
  assign n6363 = n6361 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1978:68  */
  assign n6365 = ir[5:4]; // extract
  /* T80_MCode.vhd:1978:46  */
  assign n6366 = {29'b0, n6365};  //  uext
  /* T80_MCode.vhd:1980:78  */
  assign n6367 = ir[5:4]; // extract
  /* T80_MCode.vhd:1979:41  */
  assign n6370 = n6366 == 31'b0000000000000000000000000000000;
  /* T80_MCode.vhd:1979:47  */
  assign n6372 = n6366 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1979:47  */
  assign n6373 = n6370 | n6372;
  /* T80_MCode.vhd:1979:49  */
  assign n6375 = n6366 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1979:49  */
  assign n6376 = n6373 | n6375;
  /* T80_MCode.vhd:1978:41  */
  always @*
    case (n6376)
      1'b1: n6378 = 1'b1;
      default: n6378 = 1'b0;
    endcase
  /* T80_MCode.vhd:1978:41  */
  always @*
    case (n6376)
      1'b1: n6380 = n6367;
      default: n6380 = 2'b00;
    endcase
  /* T80_MCode.vhd:1978:41  */
  always @*
    case (n6376)
      1'b1: n6383 = 1'b0;
      default: n6383 = 1'b1;
    endcase
  /* T80_MCode.vhd:1972:33  */
  assign n6385 = n6361 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1994:68  */
  assign n6387 = ir[5:4]; // extract
  /* T80_MCode.vhd:1994:46  */
  assign n6388 = {29'b0, n6387};  //  uext
  /* T80_MCode.vhd:1996:78  */
  assign n6389 = ir[5:4]; // extract
  /* T80_MCode.vhd:1995:41  */
  assign n6392 = n6388 == 31'b0000000000000000000000000000000;
  /* T80_MCode.vhd:1995:47  */
  assign n6394 = n6388 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:1995:47  */
  assign n6395 = n6392 | n6394;
  /* T80_MCode.vhd:1995:49  */
  assign n6397 = n6388 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:1995:49  */
  assign n6398 = n6395 | n6397;
  /* T80_MCode.vhd:1994:41  */
  always @*
    case (n6398)
      1'b1: n6400 = 1'b0;
      default: n6400 = 1'b1;
    endcase
  /* T80_MCode.vhd:1994:41  */
  always @*
    case (n6398)
      1'b1: n6402 = n6389;
      default: n6402 = 2'b00;
    endcase
  /* T80_MCode.vhd:1994:41  */
  always @*
    case (n6398)
      1'b1: n6405 = 1'b0;
      default: n6405 = 1'b1;
    endcase
  /* T80_MCode.vhd:1988:33  */
  assign n6407 = n6361 == 31'b0000000000000000000000000000011;
  assign n6408 = {n6407, n6385, n6363};
  /* T80_MCode.vhd:1969:33  */
  always @*
    case (n6408)
      3'b100: n6410 = n2222;
      3'b010: n6410 = 3'b100;
      3'b001: n6410 = n2222;
      default: n6410 = n2222;
    endcase
  /* T80_MCode.vhd:1969:33  */
  always @*
    case (n6408)
      3'b100: n6414 = 1'b1;
      3'b010: n6414 = 1'b1;
      3'b001: n6414 = 1'b0;
      default: n6414 = 1'b0;
    endcase
  /* T80_MCode.vhd:1969:33  */
  always @*
    case (n6408)
      3'b100: n6416 = 3'b100;
      3'b010: n6416 = 3'b101;
      3'b001: n6416 = 3'b000;
      default: n6416 = 3'b000;
    endcase
  /* T80_MCode.vhd:1969:33  */
  always @*
    case (n6408)
      3'b100: n6418 = n6400;
      3'b010: n6418 = n6378;
      3'b001: n6418 = 1'b0;
      default: n6418 = 1'b0;
    endcase
  /* T80_MCode.vhd:1969:33  */
  always @*
    case (n6408)
      3'b100: n6420 = n6402;
      3'b010: n6420 = n6380;
      3'b001: n6420 = 2'b00;
      default: n6420 = 2'b00;
    endcase
  /* T80_MCode.vhd:1969:33  */
  always @*
    case (n6408)
      3'b100: n6422 = n6405;
      3'b010: n6422 = n6383;
      3'b001: n6422 = 1'b0;
      default: n6422 = 1'b0;
    endcase
  /* T80_MCode.vhd:1969:33  */
  always @*
    case (n6408)
      3'b100: n6425 = 4'b0001;
      3'b010: n6425 = 4'b0001;
      3'b001: n6425 = n2225;
      default: n6425 = n2225;
    endcase
  /* T80_MCode.vhd:1969:33  */
  always @*
    case (n6408)
      3'b100: n6429 = 1'b1;
      3'b010: n6429 = 1'b1;
      3'b001: n6429 = 1'b0;
      default: n6429 = 1'b0;
    endcase
  /* T80_MCode.vhd:1969:33  */
  always @*
    case (n6408)
      3'b100: n6432 = 2'b00;
      3'b010: n6432 = 2'b11;
      3'b001: n6432 = 2'b00;
      default: n6432 = 2'b00;
    endcase
  /* T80_MCode.vhd:1969:33  */
  always @*
    case (n6408)
      3'b100: n6436 = 1'b1;
      3'b010: n6436 = 1'b1;
      3'b001: n6436 = 1'b0;
      default: n6436 = 1'b0;
    endcase
  /* T80_MCode.vhd:1969:33  */
  always @*
    case (n6408)
      3'b100: n6440 = 1'b0;
      3'b010: n6440 = 1'b1;
      3'b001: n6440 = 1'b1;
      default: n6440 = 1'b0;
    endcase
  /* T80_MCode.vhd:1966:25  */
  assign n6442 = ir == 8'b01001010;
  /* T80_MCode.vhd:1966:40  */
  assign n6444 = ir == 8'b01011010;
  /* T80_MCode.vhd:1966:40  */
  assign n6445 = n6442 | n6444;
  /* T80_MCode.vhd:1966:51  */
  assign n6447 = ir == 8'b01101010;
  /* T80_MCode.vhd:1966:51  */
  assign n6448 = n6445 | n6447;
  /* T80_MCode.vhd:1966:62  */
  assign n6450 = ir == 8'b01111010;
  /* T80_MCode.vhd:1966:62  */
  assign n6451 = n6448 | n6450;
  /* T80_MCode.vhd:2006:38  */
  assign n6452 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:2007:33  */
  assign n6454 = n6452 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:2015:68  */
  assign n6456 = ir[5:4]; // extract
  /* T80_MCode.vhd:2015:46  */
  assign n6457 = {29'b0, n6456};  //  uext
  /* T80_MCode.vhd:2017:78  */
  assign n6458 = ir[5:4]; // extract
  /* T80_MCode.vhd:2016:41  */
  assign n6461 = n6457 == 31'b0000000000000000000000000000000;
  /* T80_MCode.vhd:2016:47  */
  assign n6463 = n6457 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:2016:47  */
  assign n6464 = n6461 | n6463;
  /* T80_MCode.vhd:2016:49  */
  assign n6466 = n6457 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:2016:49  */
  assign n6467 = n6464 | n6466;
  /* T80_MCode.vhd:2015:41  */
  always @*
    case (n6467)
      1'b1: n6469 = 1'b1;
      default: n6469 = 1'b0;
    endcase
  /* T80_MCode.vhd:2015:41  */
  always @*
    case (n6467)
      1'b1: n6471 = n6458;
      default: n6471 = 2'b00;
    endcase
  /* T80_MCode.vhd:2015:41  */
  always @*
    case (n6467)
      1'b1: n6474 = 1'b0;
      default: n6474 = 1'b1;
    endcase
  /* T80_MCode.vhd:2009:33  */
  assign n6476 = n6452 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:2031:68  */
  assign n6478 = ir[5:4]; // extract
  /* T80_MCode.vhd:2031:46  */
  assign n6479 = {29'b0, n6478};  //  uext
  /* T80_MCode.vhd:2033:78  */
  assign n6480 = ir[5:4]; // extract
  /* T80_MCode.vhd:2032:41  */
  assign n6482 = n6479 == 31'b0000000000000000000000000000000;
  /* T80_MCode.vhd:2032:47  */
  assign n6484 = n6479 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:2032:47  */
  assign n6485 = n6482 | n6484;
  /* T80_MCode.vhd:2032:49  */
  assign n6487 = n6479 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:2032:49  */
  assign n6488 = n6485 | n6487;
  /* T80_MCode.vhd:2031:41  */
  always @*
    case (n6488)
      1'b1: n6491 = 1'b0;
      default: n6491 = 1'b1;
    endcase
  /* T80_MCode.vhd:2031:41  */
  always @*
    case (n6488)
      1'b1: n6493 = n6480;
      default: n6493 = 2'b00;
    endcase
  /* T80_MCode.vhd:2031:41  */
  always @*
    case (n6488)
      1'b1: n6496 = 1'b0;
      default: n6496 = 1'b1;
    endcase
  /* T80_MCode.vhd:2025:33  */
  assign n6498 = n6452 == 31'b0000000000000000000000000000011;
  assign n6499 = {n6498, n6476, n6454};
  /* T80_MCode.vhd:2006:33  */
  always @*
    case (n6499)
      3'b100: n6501 = n2222;
      3'b010: n6501 = 3'b100;
      3'b001: n6501 = n2222;
      default: n6501 = n2222;
    endcase
  /* T80_MCode.vhd:2006:33  */
  always @*
    case (n6499)
      3'b100: n6505 = 1'b1;
      3'b010: n6505 = 1'b1;
      3'b001: n6505 = 1'b0;
      default: n6505 = 1'b0;
    endcase
  /* T80_MCode.vhd:2006:33  */
  always @*
    case (n6499)
      3'b100: n6507 = 3'b100;
      3'b010: n6507 = 3'b101;
      3'b001: n6507 = 3'b000;
      default: n6507 = 3'b000;
    endcase
  /* T80_MCode.vhd:2006:33  */
  always @*
    case (n6499)
      3'b100: n6509 = n6491;
      3'b010: n6509 = n6469;
      3'b001: n6509 = 1'b0;
      default: n6509 = 1'b0;
    endcase
  /* T80_MCode.vhd:2006:33  */
  always @*
    case (n6499)
      3'b100: n6511 = n6493;
      3'b010: n6511 = n6471;
      3'b001: n6511 = 2'b00;
      default: n6511 = 2'b00;
    endcase
  /* T80_MCode.vhd:2006:33  */
  always @*
    case (n6499)
      3'b100: n6513 = n6496;
      3'b010: n6513 = n6474;
      3'b001: n6513 = 1'b0;
      default: n6513 = 1'b0;
    endcase
  /* T80_MCode.vhd:2006:33  */
  always @*
    case (n6499)
      3'b100: n6516 = 4'b0011;
      3'b010: n6516 = 4'b0011;
      3'b001: n6516 = n2225;
      default: n6516 = n2225;
    endcase
  /* T80_MCode.vhd:2006:33  */
  always @*
    case (n6499)
      3'b100: n6520 = 1'b1;
      3'b010: n6520 = 1'b1;
      3'b001: n6520 = 1'b0;
      default: n6520 = 1'b0;
    endcase
  /* T80_MCode.vhd:2006:33  */
  always @*
    case (n6499)
      3'b100: n6523 = 2'b00;
      3'b010: n6523 = 2'b11;
      3'b001: n6523 = 2'b00;
      default: n6523 = 2'b00;
    endcase
  /* T80_MCode.vhd:2006:33  */
  always @*
    case (n6499)
      3'b100: n6527 = 1'b1;
      3'b010: n6527 = 1'b1;
      3'b001: n6527 = 1'b0;
      default: n6527 = 1'b0;
    endcase
  /* T80_MCode.vhd:2006:33  */
  always @*
    case (n6499)
      3'b100: n6531 = 1'b0;
      3'b010: n6531 = 1'b1;
      3'b001: n6531 = 1'b1;
      default: n6531 = 1'b0;
    endcase
  /* T80_MCode.vhd:2003:25  */
  assign n6533 = ir == 8'b01000010;
  /* T80_MCode.vhd:2003:40  */
  assign n6535 = ir == 8'b01010010;
  /* T80_MCode.vhd:2003:40  */
  assign n6536 = n6533 | n6535;
  /* T80_MCode.vhd:2003:51  */
  assign n6538 = ir == 8'b01100010;
  /* T80_MCode.vhd:2003:51  */
  assign n6539 = n6536 | n6538;
  /* T80_MCode.vhd:2003:62  */
  assign n6541 = ir == 8'b01110010;
  /* T80_MCode.vhd:2003:62  */
  assign n6542 = n6539 | n6541;
  /* T80_MCode.vhd:2042:38  */
  assign n6543 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:2043:33  */
  assign n6545 = n6543 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:2045:33  */
  assign n6549 = n6543 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:2052:33  */
  assign n6551 = n6543 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:2057:33  */
  assign n6553 = n6543 == 31'b0000000000000000000000000000100;
  assign n6554 = {n6553, n6551, n6549, n6545};
  /* T80_MCode.vhd:2042:33  */
  always @*
    case (n6554)
      4'b1000: n6556 = n2222;
      4'b0100: n6556 = 3'b100;
      4'b0010: n6556 = n2222;
      4'b0001: n6556 = n2222;
      default: n6556 = n2222;
    endcase
  /* T80_MCode.vhd:2042:33  */
  always @*
    case (n6554)
      4'b1000: n6559 = 1'b0;
      4'b0100: n6559 = 1'b0;
      4'b0010: n6559 = 1'b1;
      4'b0001: n6559 = 1'b0;
      default: n6559 = 1'b0;
    endcase
  /* T80_MCode.vhd:2042:33  */
  always @*
    case (n6554)
      4'b1000: n6561 = 3'b000;
      4'b0100: n6561 = 3'b000;
      4'b0010: n6561 = 3'b111;
      4'b0001: n6561 = 3'b000;
      default: n6561 = 3'b000;
    endcase
  /* T80_MCode.vhd:2042:33  */
  always @*
    case (n6554)
      4'b1000: n6563 = 3'b000;
      4'b0100: n6563 = 3'b000;
      4'b0010: n6563 = 3'b110;
      4'b0001: n6563 = 3'b000;
      default: n6563 = 3'b000;
    endcase
  /* T80_MCode.vhd:2042:33  */
  always @*
    case (n6554)
      4'b1000: n6565 = n2225;
      4'b0100: n6565 = n2225;
      4'b0010: n6565 = 4'b1101;
      4'b0001: n6565 = n2225;
      default: n6565 = n2225;
    endcase
  /* T80_MCode.vhd:2042:33  */
  always @*
    case (n6554)
      4'b1000: n6568 = 1'b0;
      4'b0100: n6568 = 1'b0;
      4'b0010: n6568 = 1'b1;
      4'b0001: n6568 = 1'b0;
      default: n6568 = 1'b0;
    endcase
  /* T80_MCode.vhd:2042:33  */
  always @*
    case (n6554)
      4'b1000: n6572 = 3'b111;
      4'b0100: n6572 = 3'b010;
      4'b0010: n6572 = 3'b111;
      4'b0001: n6572 = 3'b010;
      default: n6572 = 3'b111;
    endcase
  /* T80_MCode.vhd:2042:33  */
  always @*
    case (n6554)
      4'b1000: n6575 = 1'b0;
      4'b0100: n6575 = 1'b1;
      4'b0010: n6575 = 1'b0;
      4'b0001: n6575 = 1'b0;
      default: n6575 = 1'b0;
    endcase
  /* T80_MCode.vhd:2042:33  */
  always @*
    case (n6554)
      4'b1000: n6578 = 1'b0;
      4'b0100: n6578 = 1'b1;
      4'b0010: n6578 = 1'b0;
      4'b0001: n6578 = 1'b0;
      default: n6578 = 1'b0;
    endcase
  /* T80_MCode.vhd:2042:33  */
  always @*
    case (n6554)
      4'b1000: n6581 = 1'b1;
      4'b0100: n6581 = 1'b0;
      4'b0010: n6581 = 1'b0;
      4'b0001: n6581 = 1'b0;
      default: n6581 = 1'b0;
    endcase
  /* T80_MCode.vhd:2042:33  */
  always @*
    case (n6554)
      4'b1000: n6584 = 1'b0;
      4'b0100: n6584 = 1'b0;
      4'b0010: n6584 = 1'b1;
      4'b0001: n6584 = 1'b0;
      default: n6584 = 1'b0;
    endcase
  /* T80_MCode.vhd:2039:25  */
  assign n6586 = ir == 8'b01101111;
  /* T80_MCode.vhd:2064:38  */
  assign n6587 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:2065:33  */
  assign n6589 = n6587 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:2067:33  */
  assign n6593 = n6587 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:2074:33  */
  assign n6595 = n6587 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:2079:33  */
  assign n6597 = n6587 == 31'b0000000000000000000000000000100;
  assign n6598 = {n6597, n6595, n6593, n6589};
  /* T80_MCode.vhd:2064:33  */
  always @*
    case (n6598)
      4'b1000: n6600 = n2222;
      4'b0100: n6600 = 3'b100;
      4'b0010: n6600 = n2222;
      4'b0001: n6600 = n2222;
      default: n6600 = n2222;
    endcase
  /* T80_MCode.vhd:2064:33  */
  always @*
    case (n6598)
      4'b1000: n6603 = 1'b0;
      4'b0100: n6603 = 1'b0;
      4'b0010: n6603 = 1'b1;
      4'b0001: n6603 = 1'b0;
      default: n6603 = 1'b0;
    endcase
  /* T80_MCode.vhd:2064:33  */
  always @*
    case (n6598)
      4'b1000: n6605 = 3'b000;
      4'b0100: n6605 = 3'b000;
      4'b0010: n6605 = 3'b111;
      4'b0001: n6605 = 3'b000;
      default: n6605 = 3'b000;
    endcase
  /* T80_MCode.vhd:2064:33  */
  always @*
    case (n6598)
      4'b1000: n6607 = 3'b000;
      4'b0100: n6607 = 3'b000;
      4'b0010: n6607 = 3'b110;
      4'b0001: n6607 = 3'b000;
      default: n6607 = 3'b000;
    endcase
  /* T80_MCode.vhd:2064:33  */
  always @*
    case (n6598)
      4'b1000: n6609 = n2225;
      4'b0100: n6609 = n2225;
      4'b0010: n6609 = 4'b1110;
      4'b0001: n6609 = n2225;
      default: n6609 = n2225;
    endcase
  /* T80_MCode.vhd:2064:33  */
  always @*
    case (n6598)
      4'b1000: n6612 = 1'b0;
      4'b0100: n6612 = 1'b0;
      4'b0010: n6612 = 1'b1;
      4'b0001: n6612 = 1'b0;
      default: n6612 = 1'b0;
    endcase
  /* T80_MCode.vhd:2064:33  */
  always @*
    case (n6598)
      4'b1000: n6616 = 3'b111;
      4'b0100: n6616 = 3'b010;
      4'b0010: n6616 = 3'b111;
      4'b0001: n6616 = 3'b010;
      default: n6616 = 3'b111;
    endcase
  /* T80_MCode.vhd:2064:33  */
  always @*
    case (n6598)
      4'b1000: n6619 = 1'b0;
      4'b0100: n6619 = 1'b1;
      4'b0010: n6619 = 1'b0;
      4'b0001: n6619 = 1'b0;
      default: n6619 = 1'b0;
    endcase
  /* T80_MCode.vhd:2064:33  */
  always @*
    case (n6598)
      4'b1000: n6622 = 1'b0;
      4'b0100: n6622 = 1'b1;
      4'b0010: n6622 = 1'b0;
      4'b0001: n6622 = 1'b0;
      default: n6622 = 1'b0;
    endcase
  /* T80_MCode.vhd:2064:33  */
  always @*
    case (n6598)
      4'b1000: n6625 = 1'b1;
      4'b0100: n6625 = 1'b0;
      4'b0010: n6625 = 1'b0;
      4'b0001: n6625 = 1'b0;
      default: n6625 = 1'b0;
    endcase
  /* T80_MCode.vhd:2064:33  */
  always @*
    case (n6598)
      4'b1000: n6628 = 1'b0;
      4'b0100: n6628 = 1'b0;
      4'b0010: n6628 = 1'b1;
      4'b0001: n6628 = 1'b0;
      default: n6628 = 1'b0;
    endcase
  /* T80_MCode.vhd:2061:25  */
  assign n6630 = ir == 8'b01100111;
  /* T80_MCode.vhd:2086:38  */
  assign n6631 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:2087:33  */
  assign n6633 = n6631 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:2089:33  */
  assign n6635 = n6631 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:2093:33  */
  assign n6637 = n6631 == 31'b0000000000000000000000000000011;
  assign n6638 = {n6637, n6635, n6633};
  /* T80_MCode.vhd:2086:33  */
  always @*
    case (n6638)
      3'b100: n6642 = 4'b0111;
      3'b010: n6642 = 4'b0111;
      3'b001: n6642 = 4'b0000;
      default: n6642 = 4'b0000;
    endcase
  /* T80_MCode.vhd:2086:33  */
  always @*
    case (n6638)
      3'b100: n6646 = 3'b111;
      3'b010: n6646 = 3'b101;
      3'b001: n6646 = 3'b101;
      default: n6646 = 3'b111;
    endcase
  /* T80_MCode.vhd:2086:33  */
  always @*
    case (n6638)
      3'b100: n6649 = 1'b1;
      3'b010: n6649 = 1'b0;
      3'b001: n6649 = 1'b0;
      default: n6649 = 1'b0;
    endcase
  /* T80_MCode.vhd:2086:33  */
  always @*
    case (n6638)
      3'b100: n6652 = 1'b0;
      3'b010: n6652 = 1'b1;
      3'b001: n6652 = 1'b0;
      default: n6652 = 1'b0;
    endcase
  /* T80_MCode.vhd:2086:33  */
  always @*
    case (n6638)
      3'b100: n6655 = 1'b1;
      3'b010: n6655 = 1'b0;
      3'b001: n6655 = 1'b0;
      default: n6655 = 1'b0;
    endcase
  /* T80_MCode.vhd:2086:33  */
  always @*
    case (n6638)
      3'b100: n6658 = 1'b1;
      3'b010: n6658 = 1'b0;
      3'b001: n6658 = 1'b0;
      default: n6658 = 1'b0;
    endcase
  /* T80_MCode.vhd:2083:25  */
  assign n6660 = ir == 8'b01000101;
  /* T80_MCode.vhd:2083:40  */
  assign n6662 = ir == 8'b01001101;
  /* T80_MCode.vhd:2083:40  */
  assign n6663 = n6660 | n6662;
  /* T80_MCode.vhd:2083:51  */
  assign n6665 = ir == 8'b01010101;
  /* T80_MCode.vhd:2083:51  */
  assign n6666 = n6663 | n6665;
  /* T80_MCode.vhd:2083:62  */
  assign n6668 = ir == 8'b01011101;
  /* T80_MCode.vhd:2083:62  */
  assign n6669 = n6666 | n6668;
  /* T80_MCode.vhd:2083:73  */
  assign n6671 = ir == 8'b01100101;
  /* T80_MCode.vhd:2083:73  */
  assign n6672 = n6669 | n6671;
  /* T80_MCode.vhd:2083:84  */
  assign n6674 = ir == 8'b01101101;
  /* T80_MCode.vhd:2083:84  */
  assign n6675 = n6672 | n6674;
  /* T80_MCode.vhd:2083:95  */
  assign n6677 = ir == 8'b01110101;
  /* T80_MCode.vhd:2083:95  */
  assign n6678 = n6675 | n6677;
  /* T80_MCode.vhd:2083:106  */
  assign n6680 = ir == 8'b01111101;
  /* T80_MCode.vhd:2083:106  */
  assign n6681 = n6678 | n6680;
  /* T80_MCode.vhd:2103:38  */
  assign n6682 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:2104:33  */
  assign n6684 = n6682 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:2109:46  */
  assign n6685 = ir[5:3]; // extract
  /* T80_MCode.vhd:2109:59  */
  assign n6687 = n6685 != 3'b110;
  /* T80_MCode.vhd:2111:78  */
  assign n6688 = ir[5:3]; // extract
  /* T80_MCode.vhd:2109:41  */
  assign n6691 = n6687 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:2109:41  */
  assign n6693 = n6687 ? n6688 : 3'b000;
  /* T80_MCode.vhd:2107:33  */
  assign n6695 = n6682 == 31'b0000000000000000000000000000010;
  assign n6696 = {n6695, n6684};
  /* T80_MCode.vhd:2103:33  */
  always @*
    case (n6696)
      2'b10: n6698 = n6691;
      2'b01: n6698 = 1'b0;
      default: n6698 = 1'b0;
    endcase
  /* T80_MCode.vhd:2103:33  */
  always @*
    case (n6696)
      2'b10: n6700 = n6693;
      2'b01: n6700 = 3'b000;
      default: n6700 = 3'b000;
    endcase
  /* T80_MCode.vhd:2103:33  */
  always @*
    case (n6696)
      2'b10: n6703 = 3'b111;
      2'b01: n6703 = 3'b000;
      default: n6703 = 3'b111;
    endcase
  /* T80_MCode.vhd:2103:33  */
  always @*
    case (n6696)
      2'b10: n6706 = 1'b1;
      2'b01: n6706 = 1'b0;
      default: n6706 = 1'b0;
    endcase
  /* T80_MCode.vhd:2103:33  */
  always @*
    case (n6696)
      2'b10: n6709 = 1'b1;
      2'b01: n6709 = 1'b0;
      default: n6709 = 1'b0;
    endcase
  /* T80_MCode.vhd:2103:33  */
  always @*
    case (n6696)
      2'b10: n6712 = 2'b00;
      2'b01: n6712 = 2'b01;
      default: n6712 = 2'b00;
    endcase
  /* T80_MCode.vhd:2100:25  */
  assign n6714 = ir == 8'b01000000;
  /* T80_MCode.vhd:2100:40  */
  assign n6716 = ir == 8'b01001000;
  /* T80_MCode.vhd:2100:40  */
  assign n6717 = n6714 | n6716;
  /* T80_MCode.vhd:2100:51  */
  assign n6719 = ir == 8'b01010000;
  /* T80_MCode.vhd:2100:51  */
  assign n6720 = n6717 | n6719;
  /* T80_MCode.vhd:2100:62  */
  assign n6722 = ir == 8'b01011000;
  /* T80_MCode.vhd:2100:62  */
  assign n6723 = n6720 | n6722;
  /* T80_MCode.vhd:2100:73  */
  assign n6725 = ir == 8'b01100000;
  /* T80_MCode.vhd:2100:73  */
  assign n6726 = n6723 | n6725;
  /* T80_MCode.vhd:2100:84  */
  assign n6728 = ir == 8'b01101000;
  /* T80_MCode.vhd:2100:84  */
  assign n6729 = n6726 | n6728;
  /* T80_MCode.vhd:2100:95  */
  assign n6731 = ir == 8'b01110000;
  /* T80_MCode.vhd:2100:95  */
  assign n6732 = n6729 | n6731;
  /* T80_MCode.vhd:2100:106  */
  assign n6734 = ir == 8'b01111000;
  /* T80_MCode.vhd:2100:106  */
  assign n6735 = n6732 | n6734;
  /* T80_MCode.vhd:2120:38  */
  assign n6736 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:2124:78  */
  assign n6737 = ir[5:3]; // extract
  /* T80_MCode.vhd:2125:46  */
  assign n6738 = ir[5:3]; // extract
  /* T80_MCode.vhd:2125:59  */
  assign n6740 = n6738 == 3'b110;
  /* T80_MCode.vhd:2125:41  */
  assign n6743 = n6740 ? 1'b1 : 1'b0;
  /* T80_MCode.vhd:2121:33  */
  assign n6745 = n6736 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:2128:33  */
  assign n6747 = n6736 == 31'b0000000000000000000000000000010;
  assign n6748 = {n6747, n6745};
  /* T80_MCode.vhd:2120:33  */
  always @*
    case (n6748)
      2'b10: n6750 = 3'b000;
      2'b01: n6750 = n6737;
      default: n6750 = 3'b000;
    endcase
  /* T80_MCode.vhd:2120:33  */
  always @*
    case (n6748)
      2'b10: n6752 = 1'b0;
      2'b01: n6752 = n6743;
      default: n6752 = 1'b0;
    endcase
  /* T80_MCode.vhd:2120:33  */
  always @*
    case (n6748)
      2'b10: n6755 = 3'b111;
      2'b01: n6755 = 3'b000;
      default: n6755 = 3'b111;
    endcase
  /* T80_MCode.vhd:2120:33  */
  always @*
    case (n6748)
      2'b10: n6758 = 1'b1;
      2'b01: n6758 = 1'b0;
      default: n6758 = 1'b0;
    endcase
  /* T80_MCode.vhd:2120:33  */
  always @*
    case (n6748)
      2'b10: n6761 = 2'b00;
      2'b01: n6761 = 2'b01;
      default: n6761 = 2'b00;
    endcase
  /* T80_MCode.vhd:2120:33  */
  always @*
    case (n6748)
      2'b10: n6764 = 1'b1;
      2'b01: n6764 = 1'b0;
      default: n6764 = 1'b0;
    endcase
  /* T80_MCode.vhd:2116:25  */
  assign n6766 = ir == 8'b01000001;
  /* T80_MCode.vhd:2116:40  */
  assign n6768 = ir == 8'b01001001;
  /* T80_MCode.vhd:2116:40  */
  assign n6769 = n6766 | n6768;
  /* T80_MCode.vhd:2116:51  */
  assign n6771 = ir == 8'b01010001;
  /* T80_MCode.vhd:2116:51  */
  assign n6772 = n6769 | n6771;
  /* T80_MCode.vhd:2116:62  */
  assign n6774 = ir == 8'b01011001;
  /* T80_MCode.vhd:2116:62  */
  assign n6775 = n6772 | n6774;
  /* T80_MCode.vhd:2116:73  */
  assign n6777 = ir == 8'b01100001;
  /* T80_MCode.vhd:2116:73  */
  assign n6778 = n6775 | n6777;
  /* T80_MCode.vhd:2116:84  */
  assign n6780 = ir == 8'b01101001;
  /* T80_MCode.vhd:2116:84  */
  assign n6781 = n6778 | n6780;
  /* T80_MCode.vhd:2116:95  */
  assign n6783 = ir == 8'b01110001;
  /* T80_MCode.vhd:2116:95  */
  assign n6784 = n6781 | n6783;
  /* T80_MCode.vhd:2116:106  */
  assign n6786 = ir == 8'b01111001;
  /* T80_MCode.vhd:2116:106  */
  assign n6787 = n6784 | n6786;
  /* T80_MCode.vhd:2136:38  */
  assign n6788 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:2146:59  */
  assign n6789 = ir[3]; // extract
  /* T80_MCode.vhd:2137:33  */
  assign n6791 = n6788 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:2147:33  */
  assign n6793 = n6788 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:2152:46  */
  assign n6794 = ir[3]; // extract
  /* T80_MCode.vhd:2152:50  */
  assign n6795 = ~n6794;
  /* T80_MCode.vhd:2152:41  */
  assign n6798 = n6795 ? 4'b0110 : 4'b1110;
  /* T80_MCode.vhd:2151:33  */
  assign n6800 = n6788 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:2159:33  */
  assign n6802 = n6788 == 31'b0000000000000000000000000000100;
  assign n6803 = {n6802, n6800, n6793, n6791};
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6806 = 3'b101;
      4'b0100: n6806 = n2222;
      4'b0010: n6806 = n2222;
      4'b0001: n6806 = 3'b101;
      default: n6806 = n2222;
    endcase
  assign n6807 = n6798[2:0]; // extract
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6809 = 3'b000;
      4'b0100: n6809 = n6807;
      4'b0010: n6809 = 3'b000;
      4'b0001: n6809 = 3'b000;
      default: n6809 = 3'b000;
    endcase
  assign n6810 = n6798[3]; // extract
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6812 = 1'b0;
      4'b0100: n6812 = n6810;
      4'b0010: n6812 = 1'b0;
      4'b0001: n6812 = n6789;
      default: n6812 = 1'b0;
    endcase
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6815 = 1'b0;
      4'b0100: n6815 = 1'b0;
      4'b0010: n6815 = 1'b0;
      4'b0001: n6815 = 1'b1;
      default: n6815 = 1'b0;
    endcase
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6818 = 4'b0000;
      4'b0100: n6818 = 4'b0000;
      4'b0010: n6818 = 4'b0000;
      4'b0001: n6818 = 4'b0000;
      default: n6818 = 4'b0000;
    endcase
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6822 = 4'b0000;
      4'b0100: n6822 = 4'b0000;
      4'b0010: n6822 = 4'b0110;
      4'b0001: n6822 = 4'b1010;
      default: n6822 = 4'b0000;
    endcase
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6824 = n2225;
      4'b0100: n6824 = n2225;
      4'b0010: n6824 = n2225;
      4'b0001: n6824 = 4'b0010;
      default: n6824 = n2225;
    endcase
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6827 = 1'b0;
      4'b0100: n6827 = 1'b0;
      4'b0010: n6827 = 1'b0;
      4'b0001: n6827 = 1'b1;
      default: n6827 = 1'b0;
    endcase
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6831 = 3'b111;
      4'b0100: n6831 = 3'b111;
      4'b0010: n6831 = 3'b010;
      4'b0001: n6831 = 3'b000;
      default: n6831 = 3'b111;
    endcase
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6834 = 1'b0;
      4'b0100: n6834 = 1'b0;
      4'b0010: n6834 = 1'b1;
      4'b0001: n6834 = 1'b0;
      default: n6834 = 1'b0;
    endcase
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6837 = 1'b0;
      4'b0100: n6837 = 1'b1;
      4'b0010: n6837 = 1'b0;
      4'b0001: n6837 = 1'b0;
      default: n6837 = 1'b0;
    endcase
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6840 = 2'b00;
      4'b0100: n6840 = 2'b00;
      4'b0010: n6840 = 2'b00;
      4'b0001: n6840 = 2'b11;
      default: n6840 = 2'b00;
    endcase
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6843 = 1'b1;
      4'b0100: n6843 = 1'b0;
      4'b0010: n6843 = 1'b0;
      4'b0001: n6843 = 1'b0;
      default: n6843 = 1'b0;
    endcase
  /* T80_MCode.vhd:2136:33  */
  always @*
    case (n6803)
      4'b1000: n6846 = 1'b0;
      4'b0100: n6846 = 1'b1;
      4'b0010: n6846 = 1'b0;
      4'b0001: n6846 = 1'b0;
      default: n6846 = 1'b0;
    endcase
  /* T80_MCode.vhd:2133:25  */
  assign n6848 = ir == 8'b10100010;
  /* T80_MCode.vhd:2133:41  */
  assign n6850 = ir == 8'b10101010;
  /* T80_MCode.vhd:2133:41  */
  assign n6851 = n6848 | n6850;
  /* T80_MCode.vhd:2133:54  */
  assign n6853 = ir == 8'b10110010;
  /* T80_MCode.vhd:2133:54  */
  assign n6854 = n6851 | n6853;
  /* T80_MCode.vhd:2133:67  */
  assign n6856 = ir == 8'b10111010;
  /* T80_MCode.vhd:2133:67  */
  assign n6857 = n6854 | n6856;
  /* T80_MCode.vhd:2167:38  */
  assign n6858 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:2168:33  */
  assign n6860 = n6858 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:2180:59  */
  assign n6861 = ir[3]; // extract
  /* T80_MCode.vhd:2176:33  */
  assign n6863 = n6858 == 31'b0000000000000000000000000000010;
  /* T80_MCode.vhd:2182:46  */
  assign n6864 = ir[3]; // extract
  /* T80_MCode.vhd:2182:50  */
  assign n6865 = ~n6864;
  /* T80_MCode.vhd:2182:41  */
  assign n6868 = n6865 ? 4'b0110 : 4'b1110;
  /* T80_MCode.vhd:2181:33  */
  assign n6870 = n6858 == 31'b0000000000000000000000000000011;
  /* T80_MCode.vhd:2190:33  */
  assign n6872 = n6858 == 31'b0000000000000000000000000000100;
  assign n6873 = {n6872, n6870, n6863, n6860};
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6876 = 3'b101;
      4'b0100: n6876 = n2222;
      4'b0010: n6876 = n2222;
      4'b0001: n6876 = 3'b101;
      default: n6876 = n2222;
    endcase
  assign n6877 = n6868[2:0]; // extract
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6879 = 3'b000;
      4'b0100: n6879 = n6877;
      4'b0010: n6879 = 3'b000;
      4'b0001: n6879 = 3'b000;
      default: n6879 = 3'b000;
    endcase
  assign n6880 = n6868[3]; // extract
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6882 = 1'b0;
      4'b0100: n6882 = n6880;
      4'b0010: n6882 = n6861;
      4'b0001: n6882 = 1'b0;
      default: n6882 = 1'b0;
    endcase
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6885 = 1'b0;
      4'b0100: n6885 = 1'b0;
      4'b0010: n6885 = 1'b0;
      4'b0001: n6885 = 1'b1;
      default: n6885 = 1'b0;
    endcase
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6888 = 4'b0000;
      4'b0100: n6888 = 4'b0000;
      4'b0010: n6888 = 4'b0000;
      4'b0001: n6888 = 4'b0000;
      default: n6888 = 4'b0000;
    endcase
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6892 = 4'b0000;
      4'b0100: n6892 = 4'b0000;
      4'b0010: n6892 = 4'b0110;
      4'b0001: n6892 = 4'b1010;
      default: n6892 = 4'b0000;
    endcase
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6894 = n2225;
      4'b0100: n6894 = n2225;
      4'b0010: n6894 = n2225;
      4'b0001: n6894 = 4'b0010;
      default: n6894 = n2225;
    endcase
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6897 = 1'b0;
      4'b0100: n6897 = 1'b0;
      4'b0010: n6897 = 1'b0;
      4'b0001: n6897 = 1'b1;
      default: n6897 = 1'b0;
    endcase
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6901 = 3'b111;
      4'b0100: n6901 = 3'b111;
      4'b0010: n6901 = 3'b000;
      4'b0001: n6901 = 3'b010;
      default: n6901 = 3'b111;
    endcase
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6904 = 1'b0;
      4'b0100: n6904 = 1'b1;
      4'b0010: n6904 = 1'b0;
      4'b0001: n6904 = 1'b0;
      default: n6904 = 1'b0;
    endcase
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6907 = 1'b0;
      4'b0100: n6907 = 1'b1;
      4'b0010: n6907 = 1'b0;
      4'b0001: n6907 = 1'b0;
      default: n6907 = 1'b0;
    endcase
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6910 = 2'b00;
      4'b0100: n6910 = 2'b00;
      4'b0010: n6910 = 2'b11;
      4'b0001: n6910 = 2'b00;
      default: n6910 = 2'b00;
    endcase
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6913 = 1'b1;
      4'b0100: n6913 = 1'b0;
      4'b0010: n6913 = 1'b0;
      4'b0001: n6913 = 1'b0;
      default: n6913 = 1'b0;
    endcase
  /* T80_MCode.vhd:2167:33  */
  always @*
    case (n6873)
      4'b1000: n6916 = 1'b0;
      4'b0100: n6916 = 1'b1;
      4'b0010: n6916 = 1'b0;
      4'b0001: n6916 = 1'b0;
      default: n6916 = 1'b0;
    endcase
  /* T80_MCode.vhd:2164:25  */
  assign n6918 = ir == 8'b10100011;
  /* T80_MCode.vhd:2164:41  */
  assign n6920 = ir == 8'b10101011;
  /* T80_MCode.vhd:2164:41  */
  assign n6921 = n6918 | n6920;
  /* T80_MCode.vhd:2164:54  */
  assign n6923 = ir == 8'b10110011;
  /* T80_MCode.vhd:2164:54  */
  assign n6924 = n6921 | n6923;
  /* T80_MCode.vhd:2164:67  */
  assign n6926 = ir == 8'b10111011;
  /* T80_MCode.vhd:2164:67  */
  assign n6927 = n6924 | n6926;
  /* T80_MCode.vhd:2199:46  */
  assign n6928 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:2203:78  */
  assign n6929 = ir[5:3]; // extract
  /* T80_MCode.vhd:2200:41  */
  assign n6932 = n6928 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:2205:41  */
  assign n6935 = n6928 == 31'b0000000000000000000000000000010;
  assign n6936 = {n6935, n6932};
  /* T80_MCode.vhd:2199:41  */
  always @*
    case (n6936)
      2'b10: n6938 = 3'b100;
      2'b01: n6938 = 3'b000;
      default: n6938 = 3'b000;
    endcase
  /* T80_MCode.vhd:2199:41  */
  always @*
    case (n6936)
      2'b10: n6940 = 3'b000;
      2'b01: n6940 = n6929;
      default: n6940 = 3'b000;
    endcase
  /* T80_MCode.vhd:2199:41  */
  always @*
    case (n6936)
      2'b10: n6942 = 1'b0;
      2'b01: n6942 = 1'b0;
      default: n6942 = 1'b0;
    endcase
  /* T80_MCode.vhd:2199:41  */
  always @*
    case (n6936)
      2'b10: n6945 = 1'b0;
      2'b01: n6945 = 1'b1;
      default: n6945 = 1'b0;
    endcase
  /* T80_MCode.vhd:2199:41  */
  always @*
    case (n6936)
      2'b10: n6948 = 1'b1;
      2'b01: n6948 = 1'b0;
      default: n6948 = 1'b0;
    endcase
  /* T80_MCode.vhd:2199:41  */
  always @*
    case (n6936)
      2'b10: n6952 = 1'b1;
      2'b01: n6952 = 1'b1;
      default: n6952 = 1'b0;
    endcase
  /* T80_MCode.vhd:2197:33  */
  assign n6955 = r800_mode ? 3'b010 : 3'b001;
  /* T80_MCode.vhd:2197:33  */
  assign n6957 = r800_mode ? n6938 : 3'b000;
  assign n6958 = {n6942, n6940};
  /* T80_MCode.vhd:2197:33  */
  assign n6960 = r800_mode ? n6958 : 4'b0000;
  /* T80_MCode.vhd:2197:33  */
  assign n6962 = r800_mode ? n6945 : 1'b0;
  /* T80_MCode.vhd:2197:33  */
  assign n6964 = r800_mode ? n6948 : 1'b0;
  /* T80_MCode.vhd:2197:33  */
  assign n6966 = r800_mode ? n6952 : 1'b0;
  /* T80_MCode.vhd:2195:25  */
  assign n6968 = ir == 8'b11000001;
  /* T80_MCode.vhd:2195:40  */
  assign n6970 = ir == 8'b11001001;
  /* T80_MCode.vhd:2195:40  */
  assign n6971 = n6968 | n6970;
  /* T80_MCode.vhd:2195:51  */
  assign n6973 = ir == 8'b11010001;
  /* T80_MCode.vhd:2195:51  */
  assign n6974 = n6971 | n6973;
  /* T80_MCode.vhd:2195:62  */
  assign n6976 = ir == 8'b11011001;
  /* T80_MCode.vhd:2195:62  */
  assign n6977 = n6974 | n6976;
  /* T80_MCode.vhd:2216:46  */
  assign n6978 = {28'b0, mcycle};  //  uext
  /* T80_MCode.vhd:2219:58  */
  assign n6980 = n2217 == 2'b11;
  assign n6983 = {1'b0, n2217, 1'b0};
  /* T80_MCode.vhd:2219:49  */
  assign n6985 = n6980 ? 4'b1000 : n6983;
  /* T80_MCode.vhd:2217:41  */
  assign n6988 = n6978 == 31'b0000000000000000000000000000001;
  /* T80_MCode.vhd:2227:41  */
  assign n6991 = n6978 == 31'b0000000000000000000000000000010;
  assign n6992 = {n6991, n6988};
  /* T80_MCode.vhd:2216:41  */
  always @*
    case (n6992)
      2'b10: n6994 = 3'b101;
      2'b01: n6994 = n2222;
      default: n6994 = n2222;
    endcase
  /* T80_MCode.vhd:2216:41  */
  always @*
    case (n6992)
      2'b10: n6996 = 3'b100;
      2'b01: n6996 = 3'b100;
      default: n6996 = 3'b000;
    endcase
  /* T80_MCode.vhd:2216:41  */
  always @*
    case (n6992)
      2'b10: n6998 = 4'b0000;
      2'b01: n6998 = n6985;
      default: n6998 = 4'b0000;
    endcase
  /* T80_MCode.vhd:2216:41  */
  always @*
    case (n6992)
      2'b10: n7001 = 1'b1;
      2'b01: n7001 = 1'b0;
      default: n7001 = 1'b0;
    endcase
  /* T80_MCode.vhd:2216:41  */
  always @*
    case (n6992)
      2'b10: n7005 = 1'b1;
      2'b01: n7005 = 1'b1;
      default: n7005 = 1'b0;
    endcase
  /* T80_MCode.vhd:2214:33  */
  assign n7008 = r800_mode ? 3'b010 : 3'b001;
  /* T80_MCode.vhd:2214:33  */
  assign n7009 = r800_mode ? n6994 : n2222;
  /* T80_MCode.vhd:2214:33  */
  assign n7011 = r800_mode ? n6996 : 3'b000;
  /* T80_MCode.vhd:2214:33  */
  assign n7013 = r800_mode ? n6998 : 4'b0000;
  /* T80_MCode.vhd:2214:33  */
  assign n7015 = r800_mode ? n7001 : 1'b0;
  /* T80_MCode.vhd:2214:33  */
  assign n7017 = r800_mode ? n7005 : 1'b0;
  /* T80_MCode.vhd:2212:25  */
  assign n7019 = ir == 8'b11000011;
  /* T80_MCode.vhd:2212:40  */
  assign n7021 = ir == 8'b11110011;
  /* T80_MCode.vhd:2212:40  */
  assign n7022 = n7019 | n7021;
  assign n7023 = {n7022, n6977, n6927, n6857, n6787, n6735, n6681, n6630, n6586, n6542, n6451, n6360, n6355, n6350, n6339, n6316, n6256, n6195, n6133, n6065, n6063, n6061, n6059, n6057, n6052};
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7039 = n7008;
      25'b0100000000000000000000000: n7039 = n6955;
      25'b0010000000000000000000000: n7039 = 3'b100;
      25'b0001000000000000000000000: n7039 = 3'b100;
      25'b0000100000000000000000000: n7039 = 3'b010;
      25'b0000010000000000000000000: n7039 = 3'b010;
      25'b0000001000000000000000000: n7039 = 3'b011;
      25'b0000000100000000000000000: n7039 = 3'b100;
      25'b0000000010000000000000000: n7039 = 3'b100;
      25'b0000000001000000000000000: n7039 = 3'b011;
      25'b0000000000100000000000000: n7039 = 3'b011;
      25'b0000000000010000000000000: n7039 = 3'b001;
      25'b0000000000001000000000000: n7039 = 3'b001;
      25'b0000000000000100000000000: n7039 = 3'b001;
      25'b0000000000000010000000000: n7039 = 3'b001;
      25'b0000000000000001000000000: n7039 = 3'b100;
      25'b0000000000000000100000000: n7039 = 3'b100;
      25'b0000000000000000010000000: n7039 = 3'b101;
      25'b0000000000000000001000000: n7039 = 3'b101;
      25'b0000000000000000000100000: n7039 = 3'b001;
      25'b0000000000000000000010000: n7039 = 3'b001;
      25'b0000000000000000000001000: n7039 = 3'b001;
      25'b0000000000000000000000100: n7039 = 3'b001;
      25'b0000000000000000000000010: n7039 = 3'b001;
      25'b0000000000000000000000001: n7039 = 3'b001;
      default: n7039 = 3'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7045 = n7009;
      25'b0100000000000000000000000: n7045 = n2222;
      25'b0010000000000000000000000: n7045 = n6876;
      25'b0001000000000000000000000: n7045 = n6806;
      25'b0000100000000000000000000: n7045 = n2222;
      25'b0000010000000000000000000: n7045 = n2222;
      25'b0000001000000000000000000: n7045 = n2222;
      25'b0000000100000000000000000: n7045 = n6600;
      25'b0000000010000000000000000: n7045 = n6556;
      25'b0000000001000000000000000: n7045 = n6501;
      25'b0000000000100000000000000: n7045 = n6410;
      25'b0000000000010000000000000: n7045 = n2222;
      25'b0000000000001000000000000: n7045 = n2222;
      25'b0000000000000100000000000: n7045 = n2222;
      25'b0000000000000010000000000: n7045 = n2222;
      25'b0000000000000001000000000: n7045 = n6275;
      25'b0000000000000000100000000: n7045 = n6219;
      25'b0000000000000000010000000: n7045 = n2222;
      25'b0000000000000000001000000: n7045 = n2222;
      25'b0000000000000000000100000: n7045 = 3'b101;
      25'b0000000000000000000010000: n7045 = 3'b101;
      25'b0000000000000000000001000: n7045 = 3'b101;
      25'b0000000000000000000000100: n7045 = 3'b101;
      25'b0000000000000000000000010: n7045 = n2222;
      25'b0000000000000000000000001: n7045 = n2222;
      default: n7045 = 3'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7048 = 1'b0;
      25'b0100000000000000000000000: n7048 = 1'b0;
      25'b0010000000000000000000000: n7048 = 1'b0;
      25'b0001000000000000000000000: n7048 = 1'b0;
      25'b0000100000000000000000000: n7048 = 1'b0;
      25'b0000010000000000000000000: n7048 = 1'b0;
      25'b0000001000000000000000000: n7048 = 1'b0;
      25'b0000000100000000000000000: n7048 = 1'b0;
      25'b0000000010000000000000000: n7048 = 1'b0;
      25'b0000000001000000000000000: n7048 = 1'b0;
      25'b0000000000100000000000000: n7048 = 1'b0;
      25'b0000000000010000000000000: n7048 = 1'b0;
      25'b0000000000001000000000000: n7048 = 1'b0;
      25'b0000000000000100000000000: n7048 = 1'b0;
      25'b0000000000000010000000000: n7048 = 1'b0;
      25'b0000000000000001000000000: n7048 = 1'b0;
      25'b0000000000000000100000000: n7048 = 1'b0;
      25'b0000000000000000010000000: n7048 = n6165;
      25'b0000000000000000001000000: n7048 = n6101;
      25'b0000000000000000000100000: n7048 = 1'b0;
      25'b0000000000000000000010000: n7048 = 1'b0;
      25'b0000000000000000000001000: n7048 = 1'b0;
      25'b0000000000000000000000100: n7048 = 1'b0;
      25'b0000000000000000000000010: n7048 = 1'b0;
      25'b0000000000000000000000001: n7048 = 1'b0;
      default: n7048 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7051 = 1'b0;
      25'b0100000000000000000000000: n7051 = 1'b0;
      25'b0010000000000000000000000: n7051 = 1'b0;
      25'b0001000000000000000000000: n7051 = 1'b0;
      25'b0000100000000000000000000: n7051 = 1'b0;
      25'b0000010000000000000000000: n7051 = 1'b0;
      25'b0000001000000000000000000: n7051 = 1'b0;
      25'b0000000100000000000000000: n7051 = 1'b0;
      25'b0000000010000000000000000: n7051 = 1'b0;
      25'b0000000001000000000000000: n7051 = 1'b0;
      25'b0000000000100000000000000: n7051 = 1'b0;
      25'b0000000000010000000000000: n7051 = 1'b0;
      25'b0000000000001000000000000: n7051 = 1'b0;
      25'b0000000000000100000000000: n7051 = 1'b0;
      25'b0000000000000010000000000: n7051 = 1'b0;
      25'b0000000000000001000000000: n7051 = 1'b0;
      25'b0000000000000000100000000: n7051 = 1'b0;
      25'b0000000000000000010000000: n7051 = n6168;
      25'b0000000000000000001000000: n7051 = n6104;
      25'b0000000000000000000100000: n7051 = 1'b0;
      25'b0000000000000000000010000: n7051 = 1'b0;
      25'b0000000000000000000001000: n7051 = 1'b0;
      25'b0000000000000000000000100: n7051 = 1'b0;
      25'b0000000000000000000000010: n7051 = 1'b0;
      25'b0000000000000000000000001: n7051 = 1'b0;
      default: n7051 = 1'bX;
    endcase
  assign n7052 = n6222[2:0]; // extract
  assign n7053 = n6278[2:0]; // extract
  assign n7054 = n6642[2:0]; // extract
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7057 = 3'b000;
      25'b0100000000000000000000000: n7057 = 3'b000;
      25'b0010000000000000000000000: n7057 = n6879;
      25'b0001000000000000000000000: n7057 = n6809;
      25'b0000100000000000000000000: n7057 = 3'b000;
      25'b0000010000000000000000000: n7057 = 3'b000;
      25'b0000001000000000000000000: n7057 = n7054;
      25'b0000000100000000000000000: n7057 = 3'b000;
      25'b0000000010000000000000000: n7057 = 3'b000;
      25'b0000000001000000000000000: n7057 = 3'b000;
      25'b0000000000100000000000000: n7057 = 3'b000;
      25'b0000000000010000000000000: n7057 = 3'b000;
      25'b0000000000001000000000000: n7057 = 3'b000;
      25'b0000000000000100000000000: n7057 = 3'b000;
      25'b0000000000000010000000000: n7057 = 3'b000;
      25'b0000000000000001000000000: n7057 = n7053;
      25'b0000000000000000100000000: n7057 = n7052;
      25'b0000000000000000010000000: n7057 = 3'b000;
      25'b0000000000000000001000000: n7057 = 3'b000;
      25'b0000000000000000000100000: n7057 = 3'b000;
      25'b0000000000000000000010000: n7057 = 3'b000;
      25'b0000000000000000000001000: n7057 = 3'b000;
      25'b0000000000000000000000100: n7057 = 3'b000;
      25'b0000000000000000000000010: n7057 = 3'b000;
      25'b0000000000000000000000001: n7057 = 3'b000;
      default: n7057 = 3'bX;
    endcase
  assign n7058 = n6222[3]; // extract
  assign n7059 = n6278[3]; // extract
  assign n7060 = n6642[3]; // extract
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7063 = 1'b0;
      25'b0100000000000000000000000: n7063 = 1'b0;
      25'b0010000000000000000000000: n7063 = n6882;
      25'b0001000000000000000000000: n7063 = n6812;
      25'b0000100000000000000000000: n7063 = 1'b0;
      25'b0000010000000000000000000: n7063 = 1'b0;
      25'b0000001000000000000000000: n7063 = n7060;
      25'b0000000100000000000000000: n7063 = 1'b0;
      25'b0000000010000000000000000: n7063 = 1'b0;
      25'b0000000001000000000000000: n7063 = 1'b0;
      25'b0000000000100000000000000: n7063 = 1'b0;
      25'b0000000000010000000000000: n7063 = 1'b0;
      25'b0000000000001000000000000: n7063 = 1'b0;
      25'b0000000000000100000000000: n7063 = 1'b0;
      25'b0000000000000010000000000: n7063 = 1'b0;
      25'b0000000000000001000000000: n7063 = n7059;
      25'b0000000000000000100000000: n7063 = n7058;
      25'b0000000000000000010000000: n7063 = 1'b0;
      25'b0000000000000000001000000: n7063 = 1'b0;
      25'b0000000000000000000100000: n7063 = 1'b0;
      25'b0000000000000000000010000: n7063 = 1'b0;
      25'b0000000000000000000001000: n7063 = 1'b0;
      25'b0000000000000000000000100: n7063 = 1'b0;
      25'b0000000000000000000000010: n7063 = 1'b0;
      25'b0000000000000000000000001: n7063 = 1'b0;
      default: n7063 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7066 = 1'b0;
      25'b0100000000000000000000000: n7066 = 1'b0;
      25'b0010000000000000000000000: n7066 = n6885;
      25'b0001000000000000000000000: n7066 = n6815;
      25'b0000100000000000000000000: n7066 = 1'b0;
      25'b0000010000000000000000000: n7066 = n6698;
      25'b0000001000000000000000000: n7066 = 1'b0;
      25'b0000000100000000000000000: n7066 = n6603;
      25'b0000000010000000000000000: n7066 = n6559;
      25'b0000000001000000000000000: n7066 = n6505;
      25'b0000000000100000000000000: n7066 = n6414;
      25'b0000000000010000000000000: n7066 = 1'b0;
      25'b0000000000001000000000000: n7066 = 1'b0;
      25'b0000000000000100000000000: n7066 = 1'b0;
      25'b0000000000000010000000000: n7066 = 1'b0;
      25'b0000000000000001000000000: n7066 = 1'b0;
      25'b0000000000000000100000000: n7066 = 1'b0;
      25'b0000000000000000010000000: n7066 = 1'b0;
      25'b0000000000000000001000000: n7066 = n6108;
      25'b0000000000000000000100000: n7066 = 1'b0;
      25'b0000000000000000000010000: n7066 = 1'b0;
      25'b0000000000000000000001000: n7066 = 1'b0;
      25'b0000000000000000000000100: n7066 = 1'b0;
      25'b0000000000000000000000010: n7066 = 1'b0;
      25'b0000000000000000000000001: n7066 = 1'b0;
      default: n7066 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7070 = 1'b0;
      25'b0100000000000000000000000: n7070 = 1'b0;
      25'b0010000000000000000000000: n7070 = 1'b0;
      25'b0001000000000000000000000: n7070 = 1'b0;
      25'b0000100000000000000000000: n7070 = 1'b0;
      25'b0000010000000000000000000: n7070 = 1'b0;
      25'b0000001000000000000000000: n7070 = 1'b0;
      25'b0000000100000000000000000: n7070 = 1'b0;
      25'b0000000010000000000000000: n7070 = 1'b0;
      25'b0000000001000000000000000: n7070 = 1'b0;
      25'b0000000000100000000000000: n7070 = 1'b0;
      25'b0000000000010000000000000: n7070 = 1'b0;
      25'b0000000000001000000000000: n7070 = 1'b0;
      25'b0000000000000100000000000: n7070 = 1'b0;
      25'b0000000000000010000000000: n7070 = 1'b1;
      25'b0000000000000001000000000: n7070 = 1'b0;
      25'b0000000000000000100000000: n7070 = 1'b0;
      25'b0000000000000000010000000: n7070 = 1'b0;
      25'b0000000000000000001000000: n7070 = 1'b0;
      25'b0000000000000000000100000: n7070 = 1'b0;
      25'b0000000000000000000010000: n7070 = 1'b0;
      25'b0000000000000000000001000: n7070 = 1'b0;
      25'b0000000000000000000000100: n7070 = 1'b0;
      25'b0000000000000000000000010: n7070 = 1'b0;
      25'b0000000000000000000000001: n7070 = 1'b0;
      default: n7070 = 1'bX;
    endcase
  assign n7072 = n6818[2:0]; // extract
  assign n7073 = n6888[2:0]; // extract
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7076 = n7011;
      25'b0100000000000000000000000: n7076 = n6957;
      25'b0010000000000000000000000: n7076 = n7073;
      25'b0001000000000000000000000: n7076 = n7072;
      25'b0000100000000000000000000: n7076 = 3'b000;
      25'b0000010000000000000000000: n7076 = n6700;
      25'b0000001000000000000000000: n7076 = 3'b000;
      25'b0000000100000000000000000: n7076 = n6605;
      25'b0000000010000000000000000: n7076 = n6561;
      25'b0000000001000000000000000: n7076 = n6507;
      25'b0000000000100000000000000: n7076 = n6416;
      25'b0000000000010000000000000: n7076 = 3'b000;
      25'b0000000000001000000000000: n7076 = 3'b000;
      25'b0000000000000100000000000: n7076 = 3'b000;
      25'b0000000000000010000000000: n7076 = 3'b010;
      25'b0000000000000001000000000: n7076 = n6280;
      25'b0000000000000000100000000: n7076 = n6224;
      25'b0000000000000000010000000: n7076 = 3'b000;
      25'b0000000000000000001000000: n7076 = n6110;
      25'b0000000000000000000100000: n7076 = 3'b000;
      25'b0000000000000000000010000: n7076 = 3'b000;
      25'b0000000000000000000001000: n7076 = 3'b000;
      25'b0000000000000000000000100: n7076 = 3'b000;
      25'b0000000000000000000000010: n7076 = 3'b000;
      25'b0000000000000000000000001: n7076 = 3'b000;
      default: n7076 = 3'bX;
    endcase
  assign n7078 = n6818[3]; // extract
  assign n7079 = n6888[3]; // extract
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7082 = 1'b0;
      25'b0100000000000000000000000: n7082 = 1'b0;
      25'b0010000000000000000000000: n7082 = n7079;
      25'b0001000000000000000000000: n7082 = n7078;
      25'b0000100000000000000000000: n7082 = 1'b0;
      25'b0000010000000000000000000: n7082 = 1'b0;
      25'b0000001000000000000000000: n7082 = 1'b0;
      25'b0000000100000000000000000: n7082 = 1'b0;
      25'b0000000010000000000000000: n7082 = 1'b0;
      25'b0000000001000000000000000: n7082 = 1'b0;
      25'b0000000000100000000000000: n7082 = 1'b0;
      25'b0000000000010000000000000: n7082 = 1'b0;
      25'b0000000000001000000000000: n7082 = 1'b0;
      25'b0000000000000100000000000: n7082 = 1'b0;
      25'b0000000000000010000000000: n7082 = 1'b1;
      25'b0000000000000001000000000: n7082 = 1'b0;
      25'b0000000000000000100000000: n7082 = 1'b0;
      25'b0000000000000000010000000: n7082 = 1'b0;
      25'b0000000000000000001000000: n7082 = n6112;
      25'b0000000000000000000100000: n7082 = 1'b0;
      25'b0000000000000000000010000: n7082 = 1'b0;
      25'b0000000000000000000001000: n7082 = 1'b0;
      25'b0000000000000000000000100: n7082 = 1'b0;
      25'b0000000000000000000000010: n7082 = 1'b0;
      25'b0000000000000000000000001: n7082 = 1'b0;
      default: n7082 = 1'bX;
    endcase
  assign n7083 = n6170[0]; // extract
  assign n7084 = n6227[0]; // extract
  assign n7085 = n6283[0]; // extract
  assign n7087 = n6563[0]; // extract
  assign n7088 = n6607[0]; // extract
  assign n7089 = n6750[0]; // extract
  assign n7090 = n6822[0]; // extract
  assign n7091 = n6892[0]; // extract
  assign n7092 = n6960[0]; // extract
  assign n7093 = n7013[0]; // extract
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7096 = n7093;
      25'b0100000000000000000000000: n7096 = n7092;
      25'b0010000000000000000000000: n7096 = n7091;
      25'b0001000000000000000000000: n7096 = n7090;
      25'b0000100000000000000000000: n7096 = n7089;
      25'b0000010000000000000000000: n7096 = 1'b0;
      25'b0000001000000000000000000: n7096 = 1'b0;
      25'b0000000100000000000000000: n7096 = n7088;
      25'b0000000010000000000000000: n7096 = n7087;
      25'b0000000001000000000000000: n7096 = n6509;
      25'b0000000000100000000000000: n7096 = n6418;
      25'b0000000000010000000000000: n7096 = 1'b0;
      25'b0000000000001000000000000: n7096 = 1'b0;
      25'b0000000000000100000000000: n7096 = 1'b0;
      25'b0000000000000010000000000: n7096 = 1'b1;
      25'b0000000000000001000000000: n7096 = n7085;
      25'b0000000000000000100000000: n7096 = n7084;
      25'b0000000000000000010000000: n7096 = n7083;
      25'b0000000000000000001000000: n7096 = 1'b0;
      25'b0000000000000000000100000: n7096 = 1'b0;
      25'b0000000000000000000010000: n7096 = 1'b0;
      25'b0000000000000000000001000: n7096 = 1'b0;
      25'b0000000000000000000000100: n7096 = 1'b0;
      25'b0000000000000000000000010: n7096 = 1'b0;
      25'b0000000000000000000000001: n7096 = 1'b0;
      default: n7096 = 1'bX;
    endcase
  assign n7097 = n6170[2:1]; // extract
  assign n7098 = n6227[2:1]; // extract
  assign n7099 = n6283[2:1]; // extract
  assign n7101 = n6563[2:1]; // extract
  assign n7102 = n6607[2:1]; // extract
  assign n7103 = n6750[2:1]; // extract
  assign n7104 = n6822[2:1]; // extract
  assign n7105 = n6892[2:1]; // extract
  assign n7106 = n6960[2:1]; // extract
  assign n7107 = n7013[2:1]; // extract
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7110 = n7107;
      25'b0100000000000000000000000: n7110 = n7106;
      25'b0010000000000000000000000: n7110 = n7105;
      25'b0001000000000000000000000: n7110 = n7104;
      25'b0000100000000000000000000: n7110 = n7103;
      25'b0000010000000000000000000: n7110 = 2'b00;
      25'b0000001000000000000000000: n7110 = 2'b00;
      25'b0000000100000000000000000: n7110 = n7102;
      25'b0000000010000000000000000: n7110 = n7101;
      25'b0000000001000000000000000: n7110 = n6511;
      25'b0000000000100000000000000: n7110 = n6420;
      25'b0000000000010000000000000: n7110 = 2'b00;
      25'b0000000000001000000000000: n7110 = 2'b00;
      25'b0000000000000100000000000: n7110 = 2'b00;
      25'b0000000000000010000000000: n7110 = 2'b11;
      25'b0000000000000001000000000: n7110 = n7099;
      25'b0000000000000000100000000: n7110 = n7098;
      25'b0000000000000000010000000: n7110 = n7097;
      25'b0000000000000000001000000: n7110 = 2'b00;
      25'b0000000000000000000100000: n7110 = 2'b00;
      25'b0000000000000000000010000: n7110 = 2'b00;
      25'b0000000000000000000001000: n7110 = 2'b00;
      25'b0000000000000000000000100: n7110 = 2'b00;
      25'b0000000000000000000000010: n7110 = 2'b00;
      25'b0000000000000000000000001: n7110 = 2'b00;
      default: n7110 = 2'bX;
    endcase
  assign n7111 = n6170[3]; // extract
  assign n7112 = n6227[3]; // extract
  assign n7113 = n6283[3]; // extract
  assign n7115 = n6822[3]; // extract
  assign n7116 = n6892[3]; // extract
  assign n7117 = n6960[3]; // extract
  assign n7118 = n7013[3]; // extract
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7121 = n7118;
      25'b0100000000000000000000000: n7121 = n7117;
      25'b0010000000000000000000000: n7121 = n7116;
      25'b0001000000000000000000000: n7121 = n7115;
      25'b0000100000000000000000000: n7121 = n6752;
      25'b0000010000000000000000000: n7121 = 1'b0;
      25'b0000001000000000000000000: n7121 = 1'b0;
      25'b0000000100000000000000000: n7121 = 1'b0;
      25'b0000000010000000000000000: n7121 = 1'b0;
      25'b0000000001000000000000000: n7121 = n6513;
      25'b0000000000100000000000000: n7121 = n6422;
      25'b0000000000010000000000000: n7121 = 1'b0;
      25'b0000000000001000000000000: n7121 = 1'b0;
      25'b0000000000000100000000000: n7121 = 1'b0;
      25'b0000000000000010000000000: n7121 = 1'b0;
      25'b0000000000000001000000000: n7121 = n7113;
      25'b0000000000000000100000000: n7121 = n7112;
      25'b0000000000000000010000000: n7121 = n7111;
      25'b0000000000000000001000000: n7121 = 1'b0;
      25'b0000000000000000000100000: n7121 = 1'b0;
      25'b0000000000000000000010000: n7121 = 1'b0;
      25'b0000000000000000000001000: n7121 = 1'b0;
      25'b0000000000000000000000100: n7121 = 1'b0;
      25'b0000000000000000000000010: n7121 = 1'b0;
      25'b0000000000000000000000001: n7121 = 1'b0;
      default: n7121 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7124 = n2225;
      25'b0100000000000000000000000: n7124 = n2225;
      25'b0010000000000000000000000: n7124 = n6894;
      25'b0001000000000000000000000: n7124 = n6824;
      25'b0000100000000000000000000: n7124 = n2225;
      25'b0000010000000000000000000: n7124 = n2225;
      25'b0000001000000000000000000: n7124 = n2225;
      25'b0000000100000000000000000: n7124 = n6609;
      25'b0000000010000000000000000: n7124 = n6565;
      25'b0000000001000000000000000: n7124 = n6516;
      25'b0000000000100000000000000: n7124 = n6425;
      25'b0000000000010000000000000: n7124 = n2225;
      25'b0000000000001000000000000: n7124 = n2225;
      25'b0000000000000100000000000: n7124 = n2225;
      25'b0000000000000010000000000: n7124 = 4'b0010;
      25'b0000000000000001000000000: n7124 = n6285;
      25'b0000000000000000100000000: n7124 = n6229;
      25'b0000000000000000010000000: n7124 = n2225;
      25'b0000000000000000001000000: n7124 = n2225;
      25'b0000000000000000000100000: n7124 = n2225;
      25'b0000000000000000000010000: n7124 = n2225;
      25'b0000000000000000000001000: n7124 = n2225;
      25'b0000000000000000000000100: n7124 = n2225;
      25'b0000000000000000000000010: n7124 = n2225;
      25'b0000000000000000000000001: n7124 = n2225;
      default: n7124 = 4'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7128 = 1'b0;
      25'b0100000000000000000000000: n7128 = 1'b0;
      25'b0010000000000000000000000: n7128 = n6897;
      25'b0001000000000000000000000: n7128 = n6827;
      25'b0000100000000000000000000: n7128 = 1'b0;
      25'b0000010000000000000000000: n7128 = 1'b0;
      25'b0000001000000000000000000: n7128 = 1'b0;
      25'b0000000100000000000000000: n7128 = n6612;
      25'b0000000010000000000000000: n7128 = n6568;
      25'b0000000001000000000000000: n7128 = n6520;
      25'b0000000000100000000000000: n7128 = n6429;
      25'b0000000000010000000000000: n7128 = 1'b0;
      25'b0000000000001000000000000: n7128 = 1'b0;
      25'b0000000000000100000000000: n7128 = 1'b0;
      25'b0000000000000010000000000: n7128 = 1'b1;
      25'b0000000000000001000000000: n7128 = n6288;
      25'b0000000000000000100000000: n7128 = 1'b0;
      25'b0000000000000000010000000: n7128 = 1'b0;
      25'b0000000000000000001000000: n7128 = 1'b0;
      25'b0000000000000000000100000: n7128 = 1'b0;
      25'b0000000000000000000010000: n7128 = 1'b0;
      25'b0000000000000000000001000: n7128 = 1'b0;
      25'b0000000000000000000000100: n7128 = 1'b0;
      25'b0000000000000000000000010: n7128 = 1'b0;
      25'b0000000000000000000000001: n7128 = 1'b0;
      default: n7128 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7131 = 1'b0;
      25'b0100000000000000000000000: n7131 = 1'b0;
      25'b0010000000000000000000000: n7131 = 1'b0;
      25'b0001000000000000000000000: n7131 = 1'b0;
      25'b0000100000000000000000000: n7131 = 1'b0;
      25'b0000010000000000000000000: n7131 = 1'b0;
      25'b0000001000000000000000000: n7131 = 1'b0;
      25'b0000000100000000000000000: n7131 = 1'b0;
      25'b0000000010000000000000000: n7131 = 1'b0;
      25'b0000000001000000000000000: n7131 = 1'b0;
      25'b0000000000100000000000000: n7131 = 1'b0;
      25'b0000000000010000000000000: n7131 = 1'b0;
      25'b0000000000001000000000000: n7131 = 1'b0;
      25'b0000000000000100000000000: n7131 = 1'b0;
      25'b0000000000000010000000000: n7131 = 1'b0;
      25'b0000000000000001000000000: n7131 = n6291;
      25'b0000000000000000100000000: n7131 = 1'b0;
      25'b0000000000000000010000000: n7131 = 1'b0;
      25'b0000000000000000001000000: n7131 = 1'b0;
      25'b0000000000000000000100000: n7131 = 1'b0;
      25'b0000000000000000000010000: n7131 = 1'b0;
      25'b0000000000000000000001000: n7131 = 1'b0;
      25'b0000000000000000000000100: n7131 = 1'b0;
      25'b0000000000000000000000010: n7131 = 1'b0;
      25'b0000000000000000000000001: n7131 = 1'b0;
      default: n7131 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7134 = 3'b111;
      25'b0100000000000000000000000: n7134 = 3'b111;
      25'b0010000000000000000000000: n7134 = n6901;
      25'b0001000000000000000000000: n7134 = n6831;
      25'b0000100000000000000000000: n7134 = n6755;
      25'b0000010000000000000000000: n7134 = n6703;
      25'b0000001000000000000000000: n7134 = n6646;
      25'b0000000100000000000000000: n7134 = n6616;
      25'b0000000010000000000000000: n7134 = n6572;
      25'b0000000001000000000000000: n7134 = 3'b111;
      25'b0000000000100000000000000: n7134 = 3'b111;
      25'b0000000000010000000000000: n7134 = 3'b111;
      25'b0000000000001000000000000: n7134 = 3'b111;
      25'b0000000000000100000000000: n7134 = 3'b111;
      25'b0000000000000010000000000: n7134 = 3'b111;
      25'b0000000000000001000000000: n7134 = n6294;
      25'b0000000000000000100000000: n7134 = n6233;
      25'b0000000000000000010000000: n7134 = n6174;
      25'b0000000000000000001000000: n7134 = n6116;
      25'b0000000000000000000100000: n7134 = 3'b111;
      25'b0000000000000000000010000: n7134 = 3'b111;
      25'b0000000000000000000001000: n7134 = 3'b111;
      25'b0000000000000000000000100: n7134 = 3'b111;
      25'b0000000000000000000000010: n7134 = 3'b111;
      25'b0000000000000000000000001: n7134 = 3'b111;
      default: n7134 = 3'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7137 = 1'b0;
      25'b0100000000000000000000000: n7137 = 1'b0;
      25'b0010000000000000000000000: n7137 = n6904;
      25'b0001000000000000000000000: n7137 = n6834;
      25'b0000100000000000000000000: n7137 = n6758;
      25'b0000010000000000000000000: n7137 = n6706;
      25'b0000001000000000000000000: n7137 = 1'b0;
      25'b0000000100000000000000000: n7137 = 1'b0;
      25'b0000000010000000000000000: n7137 = 1'b0;
      25'b0000000001000000000000000: n7137 = 1'b0;
      25'b0000000000100000000000000: n7137 = 1'b0;
      25'b0000000000010000000000000: n7137 = 1'b0;
      25'b0000000000001000000000000: n7137 = 1'b0;
      25'b0000000000000100000000000: n7137 = 1'b0;
      25'b0000000000000010000000000: n7137 = 1'b0;
      25'b0000000000000001000000000: n7137 = 1'b0;
      25'b0000000000000000100000000: n7137 = 1'b0;
      25'b0000000000000000010000000: n7137 = 1'b0;
      25'b0000000000000000001000000: n7137 = 1'b0;
      25'b0000000000000000000100000: n7137 = 1'b0;
      25'b0000000000000000000010000: n7137 = 1'b0;
      25'b0000000000000000000001000: n7137 = 1'b0;
      25'b0000000000000000000000100: n7137 = 1'b0;
      25'b0000000000000000000000010: n7137 = 1'b0;
      25'b0000000000000000000000001: n7137 = 1'b0;
      default: n7137 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7140 = 1'b0;
      25'b0100000000000000000000000: n7140 = 1'b0;
      25'b0010000000000000000000000: n7140 = 1'b0;
      25'b0001000000000000000000000: n7140 = 1'b0;
      25'b0000100000000000000000000: n7140 = 1'b0;
      25'b0000010000000000000000000: n7140 = 1'b0;
      25'b0000001000000000000000000: n7140 = n6649;
      25'b0000000100000000000000000: n7140 = 1'b0;
      25'b0000000010000000000000000: n7140 = 1'b0;
      25'b0000000001000000000000000: n7140 = 1'b0;
      25'b0000000000100000000000000: n7140 = 1'b0;
      25'b0000000000010000000000000: n7140 = 1'b0;
      25'b0000000000001000000000000: n7140 = 1'b0;
      25'b0000000000000100000000000: n7140 = 1'b0;
      25'b0000000000000010000000000: n7140 = 1'b0;
      25'b0000000000000001000000000: n7140 = 1'b0;
      25'b0000000000000000100000000: n7140 = 1'b0;
      25'b0000000000000000010000000: n7140 = 1'b0;
      25'b0000000000000000001000000: n7140 = 1'b0;
      25'b0000000000000000000100000: n7140 = 1'b0;
      25'b0000000000000000000010000: n7140 = 1'b0;
      25'b0000000000000000000001000: n7140 = 1'b0;
      25'b0000000000000000000000100: n7140 = 1'b0;
      25'b0000000000000000000000010: n7140 = 1'b0;
      25'b0000000000000000000000001: n7140 = 1'b0;
      default: n7140 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7143 = 1'b0;
      25'b0100000000000000000000000: n7143 = 1'b0;
      25'b0010000000000000000000000: n7143 = 1'b0;
      25'b0001000000000000000000000: n7143 = 1'b0;
      25'b0000100000000000000000000: n7143 = 1'b0;
      25'b0000010000000000000000000: n7143 = 1'b0;
      25'b0000001000000000000000000: n7143 = n6652;
      25'b0000000100000000000000000: n7143 = 1'b0;
      25'b0000000010000000000000000: n7143 = 1'b0;
      25'b0000000001000000000000000: n7143 = 1'b0;
      25'b0000000000100000000000000: n7143 = 1'b0;
      25'b0000000000010000000000000: n7143 = 1'b0;
      25'b0000000000001000000000000: n7143 = 1'b0;
      25'b0000000000000100000000000: n7143 = 1'b0;
      25'b0000000000000010000000000: n7143 = 1'b0;
      25'b0000000000000001000000000: n7143 = 1'b0;
      25'b0000000000000000100000000: n7143 = 1'b0;
      25'b0000000000000000010000000: n7143 = n6177;
      25'b0000000000000000001000000: n7143 = n6119;
      25'b0000000000000000000100000: n7143 = 1'b0;
      25'b0000000000000000000010000: n7143 = 1'b0;
      25'b0000000000000000000001000: n7143 = 1'b0;
      25'b0000000000000000000000100: n7143 = 1'b0;
      25'b0000000000000000000000010: n7143 = 1'b0;
      25'b0000000000000000000000001: n7143 = 1'b0;
      default: n7143 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7146 = 1'b0;
      25'b0100000000000000000000000: n7146 = 1'b0;
      25'b0010000000000000000000000: n7146 = 1'b0;
      25'b0001000000000000000000000: n7146 = 1'b0;
      25'b0000100000000000000000000: n7146 = 1'b0;
      25'b0000010000000000000000000: n7146 = 1'b0;
      25'b0000001000000000000000000: n7146 = n6655;
      25'b0000000100000000000000000: n7146 = 1'b0;
      25'b0000000010000000000000000: n7146 = 1'b0;
      25'b0000000001000000000000000: n7146 = 1'b0;
      25'b0000000000100000000000000: n7146 = 1'b0;
      25'b0000000000010000000000000: n7146 = 1'b0;
      25'b0000000000001000000000000: n7146 = 1'b0;
      25'b0000000000000100000000000: n7146 = 1'b0;
      25'b0000000000000010000000000: n7146 = 1'b0;
      25'b0000000000000001000000000: n7146 = 1'b0;
      25'b0000000000000000100000000: n7146 = 1'b0;
      25'b0000000000000000010000000: n7146 = n6180;
      25'b0000000000000000001000000: n7146 = n6122;
      25'b0000000000000000000100000: n7146 = 1'b0;
      25'b0000000000000000000010000: n7146 = 1'b0;
      25'b0000000000000000000001000: n7146 = 1'b0;
      25'b0000000000000000000000100: n7146 = 1'b0;
      25'b0000000000000000000000010: n7146 = 1'b0;
      25'b0000000000000000000000001: n7146 = 1'b0;
      default: n7146 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7153 = 3'b000;
      25'b0100000000000000000000000: n7153 = 3'b000;
      25'b0010000000000000000000000: n7153 = 3'b000;
      25'b0001000000000000000000000: n7153 = 3'b000;
      25'b0000100000000000000000000: n7153 = 3'b000;
      25'b0000010000000000000000000: n7153 = 3'b000;
      25'b0000001000000000000000000: n7153 = 3'b000;
      25'b0000000100000000000000000: n7153 = 3'b000;
      25'b0000000010000000000000000: n7153 = 3'b000;
      25'b0000000001000000000000000: n7153 = 3'b000;
      25'b0000000000100000000000000: n7153 = 3'b000;
      25'b0000000000010000000000000: n7153 = 3'b000;
      25'b0000000000001000000000000: n7153 = 3'b000;
      25'b0000000000000100000000000: n7153 = 3'b000;
      25'b0000000000000010000000000: n7153 = 3'b000;
      25'b0000000000000001000000000: n7153 = 3'b000;
      25'b0000000000000000100000000: n7153 = 3'b000;
      25'b0000000000000000010000000: n7153 = 3'b000;
      25'b0000000000000000001000000: n7153 = 3'b000;
      25'b0000000000000000000100000: n7153 = 3'b111;
      25'b0000000000000000000010000: n7153 = 3'b110;
      25'b0000000000000000000001000: n7153 = 3'b101;
      25'b0000000000000000000000100: n7153 = 3'b100;
      25'b0000000000000000000000010: n7153 = 3'b000;
      25'b0000000000000000000000001: n7153 = 3'b000;
      default: n7153 = 3'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7156 = 1'b0;
      25'b0100000000000000000000000: n7156 = 1'b0;
      25'b0010000000000000000000000: n7156 = 1'b0;
      25'b0001000000000000000000000: n7156 = 1'b0;
      25'b0000100000000000000000000: n7156 = 1'b0;
      25'b0000010000000000000000000: n7156 = 1'b0;
      25'b0000001000000000000000000: n7156 = n6658;
      25'b0000000100000000000000000: n7156 = 1'b0;
      25'b0000000010000000000000000: n7156 = 1'b0;
      25'b0000000001000000000000000: n7156 = 1'b0;
      25'b0000000000100000000000000: n7156 = 1'b0;
      25'b0000000000010000000000000: n7156 = 1'b0;
      25'b0000000000001000000000000: n7156 = 1'b0;
      25'b0000000000000100000000000: n7156 = 1'b0;
      25'b0000000000000010000000000: n7156 = 1'b0;
      25'b0000000000000001000000000: n7156 = 1'b0;
      25'b0000000000000000100000000: n7156 = 1'b0;
      25'b0000000000000000010000000: n7156 = 1'b0;
      25'b0000000000000000001000000: n7156 = 1'b0;
      25'b0000000000000000000100000: n7156 = 1'b0;
      25'b0000000000000000000010000: n7156 = 1'b0;
      25'b0000000000000000000001000: n7156 = 1'b0;
      25'b0000000000000000000000100: n7156 = 1'b0;
      25'b0000000000000000000000010: n7156 = 1'b0;
      25'b0000000000000000000000001: n7156 = 1'b0;
      default: n7156 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7159 = 1'b0;
      25'b0100000000000000000000000: n7159 = 1'b0;
      25'b0010000000000000000000000: n7159 = 1'b0;
      25'b0001000000000000000000000: n7159 = 1'b0;
      25'b0000100000000000000000000: n7159 = 1'b0;
      25'b0000010000000000000000000: n7159 = 1'b0;
      25'b0000001000000000000000000: n7159 = 1'b0;
      25'b0000000100000000000000000: n7159 = 1'b0;
      25'b0000000010000000000000000: n7159 = 1'b0;
      25'b0000000001000000000000000: n7159 = 1'b0;
      25'b0000000000100000000000000: n7159 = 1'b0;
      25'b0000000000010000000000000: n7159 = 1'b0;
      25'b0000000000001000000000000: n7159 = 1'b0;
      25'b0000000000000100000000000: n7159 = 1'b0;
      25'b0000000000000010000000000: n7159 = 1'b0;
      25'b0000000000000001000000000: n7159 = 1'b0;
      25'b0000000000000000100000000: n7159 = n6236;
      25'b0000000000000000010000000: n7159 = 1'b0;
      25'b0000000000000000001000000: n7159 = 1'b0;
      25'b0000000000000000000100000: n7159 = 1'b0;
      25'b0000000000000000000010000: n7159 = 1'b0;
      25'b0000000000000000000001000: n7159 = 1'b0;
      25'b0000000000000000000000100: n7159 = 1'b0;
      25'b0000000000000000000000010: n7159 = 1'b0;
      25'b0000000000000000000000001: n7159 = 1'b0;
      default: n7159 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7162 = 1'b0;
      25'b0100000000000000000000000: n7162 = 1'b0;
      25'b0010000000000000000000000: n7162 = 1'b0;
      25'b0001000000000000000000000: n7162 = 1'b0;
      25'b0000100000000000000000000: n7162 = 1'b0;
      25'b0000010000000000000000000: n7162 = 1'b0;
      25'b0000001000000000000000000: n7162 = 1'b0;
      25'b0000000100000000000000000: n7162 = 1'b0;
      25'b0000000010000000000000000: n7162 = 1'b0;
      25'b0000000001000000000000000: n7162 = 1'b0;
      25'b0000000000100000000000000: n7162 = 1'b0;
      25'b0000000000010000000000000: n7162 = 1'b0;
      25'b0000000000001000000000000: n7162 = 1'b0;
      25'b0000000000000100000000000: n7162 = 1'b0;
      25'b0000000000000010000000000: n7162 = 1'b0;
      25'b0000000000000001000000000: n7162 = n6297;
      25'b0000000000000000100000000: n7162 = 1'b0;
      25'b0000000000000000010000000: n7162 = 1'b0;
      25'b0000000000000000001000000: n7162 = 1'b0;
      25'b0000000000000000000100000: n7162 = 1'b0;
      25'b0000000000000000000010000: n7162 = 1'b0;
      25'b0000000000000000000001000: n7162 = 1'b0;
      25'b0000000000000000000000100: n7162 = 1'b0;
      25'b0000000000000000000000010: n7162 = 1'b0;
      25'b0000000000000000000000001: n7162 = 1'b0;
      default: n7162 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7165 = 1'b0;
      25'b0100000000000000000000000: n7165 = 1'b0;
      25'b0010000000000000000000000: n7165 = n6907;
      25'b0001000000000000000000000: n7165 = n6837;
      25'b0000100000000000000000000: n7165 = 1'b0;
      25'b0000010000000000000000000: n7165 = 1'b0;
      25'b0000001000000000000000000: n7165 = 1'b0;
      25'b0000000100000000000000000: n7165 = 1'b0;
      25'b0000000010000000000000000: n7165 = 1'b0;
      25'b0000000001000000000000000: n7165 = 1'b0;
      25'b0000000000100000000000000: n7165 = 1'b0;
      25'b0000000000010000000000000: n7165 = 1'b0;
      25'b0000000000001000000000000: n7165 = 1'b0;
      25'b0000000000000100000000000: n7165 = 1'b0;
      25'b0000000000000010000000000: n7165 = 1'b0;
      25'b0000000000000001000000000: n7165 = 1'b0;
      25'b0000000000000000100000000: n7165 = 1'b0;
      25'b0000000000000000010000000: n7165 = 1'b0;
      25'b0000000000000000001000000: n7165 = 1'b0;
      25'b0000000000000000000100000: n7165 = 1'b0;
      25'b0000000000000000000010000: n7165 = 1'b0;
      25'b0000000000000000000001000: n7165 = 1'b0;
      25'b0000000000000000000000100: n7165 = 1'b0;
      25'b0000000000000000000000010: n7165 = 1'b0;
      25'b0000000000000000000000001: n7165 = 1'b0;
      default: n7165 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7168 = 1'b0;
      25'b0100000000000000000000000: n7168 = 1'b0;
      25'b0010000000000000000000000: n7168 = 1'b0;
      25'b0001000000000000000000000: n7168 = 1'b0;
      25'b0000100000000000000000000: n7168 = 1'b0;
      25'b0000010000000000000000000: n7168 = 1'b0;
      25'b0000001000000000000000000: n7168 = 1'b0;
      25'b0000000100000000000000000: n7168 = 1'b0;
      25'b0000000010000000000000000: n7168 = n6575;
      25'b0000000001000000000000000: n7168 = 1'b0;
      25'b0000000000100000000000000: n7168 = 1'b0;
      25'b0000000000010000000000000: n7168 = 1'b0;
      25'b0000000000001000000000000: n7168 = 1'b0;
      25'b0000000000000100000000000: n7168 = 1'b0;
      25'b0000000000000010000000000: n7168 = 1'b0;
      25'b0000000000000001000000000: n7168 = 1'b0;
      25'b0000000000000000100000000: n7168 = 1'b0;
      25'b0000000000000000010000000: n7168 = 1'b0;
      25'b0000000000000000001000000: n7168 = 1'b0;
      25'b0000000000000000000100000: n7168 = 1'b0;
      25'b0000000000000000000010000: n7168 = 1'b0;
      25'b0000000000000000000001000: n7168 = 1'b0;
      25'b0000000000000000000000100: n7168 = 1'b0;
      25'b0000000000000000000000010: n7168 = 1'b0;
      25'b0000000000000000000000001: n7168 = 1'b0;
      default: n7168 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7171 = 1'b0;
      25'b0100000000000000000000000: n7171 = 1'b0;
      25'b0010000000000000000000000: n7171 = 1'b0;
      25'b0001000000000000000000000: n7171 = 1'b0;
      25'b0000100000000000000000000: n7171 = 1'b0;
      25'b0000010000000000000000000: n7171 = 1'b0;
      25'b0000001000000000000000000: n7171 = 1'b0;
      25'b0000000100000000000000000: n7171 = n6619;
      25'b0000000010000000000000000: n7171 = 1'b0;
      25'b0000000001000000000000000: n7171 = 1'b0;
      25'b0000000000100000000000000: n7171 = 1'b0;
      25'b0000000000010000000000000: n7171 = 1'b0;
      25'b0000000000001000000000000: n7171 = 1'b0;
      25'b0000000000000100000000000: n7171 = 1'b0;
      25'b0000000000000010000000000: n7171 = 1'b0;
      25'b0000000000000001000000000: n7171 = 1'b0;
      25'b0000000000000000100000000: n7171 = 1'b0;
      25'b0000000000000000010000000: n7171 = 1'b0;
      25'b0000000000000000001000000: n7171 = 1'b0;
      25'b0000000000000000000100000: n7171 = 1'b0;
      25'b0000000000000000000010000: n7171 = 1'b0;
      25'b0000000000000000000001000: n7171 = 1'b0;
      25'b0000000000000000000000100: n7171 = 1'b0;
      25'b0000000000000000000000010: n7171 = 1'b0;
      25'b0000000000000000000000001: n7171 = 1'b0;
      default: n7171 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7174 = 1'b0;
      25'b0100000000000000000000000: n7174 = 1'b0;
      25'b0010000000000000000000000: n7174 = 1'b0;
      25'b0001000000000000000000000: n7174 = 1'b0;
      25'b0000100000000000000000000: n7174 = 1'b0;
      25'b0000010000000000000000000: n7174 = n6709;
      25'b0000001000000000000000000: n7174 = 1'b0;
      25'b0000000100000000000000000: n7174 = 1'b0;
      25'b0000000010000000000000000: n7174 = 1'b0;
      25'b0000000001000000000000000: n7174 = 1'b0;
      25'b0000000000100000000000000: n7174 = 1'b0;
      25'b0000000000010000000000000: n7174 = 1'b0;
      25'b0000000000001000000000000: n7174 = 1'b0;
      25'b0000000000000100000000000: n7174 = 1'b0;
      25'b0000000000000010000000000: n7174 = 1'b0;
      25'b0000000000000001000000000: n7174 = 1'b0;
      25'b0000000000000000100000000: n7174 = 1'b0;
      25'b0000000000000000010000000: n7174 = 1'b0;
      25'b0000000000000000001000000: n7174 = 1'b0;
      25'b0000000000000000000100000: n7174 = 1'b0;
      25'b0000000000000000000010000: n7174 = 1'b0;
      25'b0000000000000000000001000: n7174 = 1'b0;
      25'b0000000000000000000000100: n7174 = 1'b0;
      25'b0000000000000000000000010: n7174 = 1'b0;
      25'b0000000000000000000000001: n7174 = 1'b0;
      default: n7174 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7177 = 1'b0;
      25'b0100000000000000000000000: n7177 = n6962;
      25'b0010000000000000000000000: n7177 = 1'b0;
      25'b0001000000000000000000000: n7177 = 1'b0;
      25'b0000100000000000000000000: n7177 = 1'b0;
      25'b0000010000000000000000000: n7177 = 1'b0;
      25'b0000001000000000000000000: n7177 = 1'b0;
      25'b0000000100000000000000000: n7177 = 1'b0;
      25'b0000000010000000000000000: n7177 = 1'b0;
      25'b0000000001000000000000000: n7177 = 1'b0;
      25'b0000000000100000000000000: n7177 = 1'b0;
      25'b0000000000010000000000000: n7177 = 1'b0;
      25'b0000000000001000000000000: n7177 = 1'b0;
      25'b0000000000000100000000000: n7177 = 1'b0;
      25'b0000000000000010000000000: n7177 = 1'b0;
      25'b0000000000000001000000000: n7177 = 1'b0;
      25'b0000000000000000100000000: n7177 = 1'b0;
      25'b0000000000000000010000000: n7177 = 1'b0;
      25'b0000000000000000001000000: n7177 = 1'b0;
      25'b0000000000000000000100000: n7177 = 1'b0;
      25'b0000000000000000000010000: n7177 = 1'b0;
      25'b0000000000000000000001000: n7177 = 1'b0;
      25'b0000000000000000000000100: n7177 = 1'b0;
      25'b0000000000000000000000010: n7177 = 1'b0;
      25'b0000000000000000000000001: n7177 = 1'b0;
      default: n7177 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7180 = n7015;
      25'b0100000000000000000000000: n7180 = n6964;
      25'b0010000000000000000000000: n7180 = 1'b0;
      25'b0001000000000000000000000: n7180 = 1'b0;
      25'b0000100000000000000000000: n7180 = 1'b0;
      25'b0000010000000000000000000: n7180 = 1'b0;
      25'b0000001000000000000000000: n7180 = 1'b0;
      25'b0000000100000000000000000: n7180 = 1'b0;
      25'b0000000010000000000000000: n7180 = 1'b0;
      25'b0000000001000000000000000: n7180 = 1'b0;
      25'b0000000000100000000000000: n7180 = 1'b0;
      25'b0000000000010000000000000: n7180 = 1'b0;
      25'b0000000000001000000000000: n7180 = 1'b0;
      25'b0000000000000100000000000: n7180 = 1'b0;
      25'b0000000000000010000000000: n7180 = 1'b0;
      25'b0000000000000001000000000: n7180 = 1'b0;
      25'b0000000000000000100000000: n7180 = 1'b0;
      25'b0000000000000000010000000: n7180 = 1'b0;
      25'b0000000000000000001000000: n7180 = 1'b0;
      25'b0000000000000000000100000: n7180 = 1'b0;
      25'b0000000000000000000010000: n7180 = 1'b0;
      25'b0000000000000000000001000: n7180 = 1'b0;
      25'b0000000000000000000000100: n7180 = 1'b0;
      25'b0000000000000000000000010: n7180 = 1'b0;
      25'b0000000000000000000000001: n7180 = 1'b0;
      default: n7180 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7183 = 2'b00;
      25'b0100000000000000000000000: n7183 = 2'b00;
      25'b0010000000000000000000000: n7183 = n6910;
      25'b0001000000000000000000000: n7183 = n6840;
      25'b0000100000000000000000000: n7183 = n6761;
      25'b0000010000000000000000000: n7183 = n6712;
      25'b0000001000000000000000000: n7183 = 2'b00;
      25'b0000000100000000000000000: n7183 = 2'b00;
      25'b0000000010000000000000000: n7183 = 2'b00;
      25'b0000000001000000000000000: n7183 = n6523;
      25'b0000000000100000000000000: n7183 = n6432;
      25'b0000000000010000000000000: n7183 = 2'b00;
      25'b0000000000001000000000000: n7183 = 2'b00;
      25'b0000000000000100000000000: n7183 = 2'b00;
      25'b0000000000000010000000000: n7183 = 2'b00;
      25'b0000000000000001000000000: n7183 = 2'b00;
      25'b0000000000000000100000000: n7183 = 2'b00;
      25'b0000000000000000010000000: n7183 = 2'b00;
      25'b0000000000000000001000000: n7183 = 2'b00;
      25'b0000000000000000000100000: n7183 = 2'b00;
      25'b0000000000000000000010000: n7183 = 2'b00;
      25'b0000000000000000000001000: n7183 = 2'b00;
      25'b0000000000000000000000100: n7183 = 2'b00;
      25'b0000000000000000000000010: n7183 = 2'b00;
      25'b0000000000000000000000001: n7183 = 2'b00;
      default: n7183 = 2'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7189 = 2'b11;
      25'b0100000000000000000000000: n7189 = 2'b11;
      25'b0010000000000000000000000: n7189 = 2'b11;
      25'b0001000000000000000000000: n7189 = 2'b11;
      25'b0000100000000000000000000: n7189 = 2'b11;
      25'b0000010000000000000000000: n7189 = 2'b11;
      25'b0000001000000000000000000: n7189 = 2'b11;
      25'b0000000100000000000000000: n7189 = 2'b11;
      25'b0000000010000000000000000: n7189 = 2'b11;
      25'b0000000001000000000000000: n7189 = 2'b11;
      25'b0000000000100000000000000: n7189 = 2'b11;
      25'b0000000000010000000000000: n7189 = 2'b10;
      25'b0000000000001000000000000: n7189 = 2'b01;
      25'b0000000000000100000000000: n7189 = 2'b00;
      25'b0000000000000010000000000: n7189 = 2'b11;
      25'b0000000000000001000000000: n7189 = 2'b11;
      25'b0000000000000000100000000: n7189 = 2'b11;
      25'b0000000000000000010000000: n7189 = 2'b11;
      25'b0000000000000000001000000: n7189 = 2'b11;
      25'b0000000000000000000100000: n7189 = 2'b11;
      25'b0000000000000000000010000: n7189 = 2'b11;
      25'b0000000000000000000001000: n7189 = 2'b11;
      25'b0000000000000000000000100: n7189 = 2'b11;
      25'b0000000000000000000000010: n7189 = 2'b11;
      25'b0000000000000000000000001: n7189 = 2'b11;
      default: n7189 = 2'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7192 = n7017;
      25'b0100000000000000000000000: n7192 = n6966;
      25'b0010000000000000000000000: n7192 = n6913;
      25'b0001000000000000000000000: n7192 = n6843;
      25'b0000100000000000000000000: n7192 = 1'b0;
      25'b0000010000000000000000000: n7192 = 1'b0;
      25'b0000001000000000000000000: n7192 = 1'b0;
      25'b0000000100000000000000000: n7192 = n6622;
      25'b0000000010000000000000000: n7192 = n6578;
      25'b0000000001000000000000000: n7192 = n6527;
      25'b0000000000100000000000000: n7192 = n6436;
      25'b0000000000010000000000000: n7192 = 1'b0;
      25'b0000000000001000000000000: n7192 = 1'b0;
      25'b0000000000000100000000000: n7192 = 1'b0;
      25'b0000000000000010000000000: n7192 = 1'b0;
      25'b0000000000000001000000000: n7192 = n6301;
      25'b0000000000000000100000000: n7192 = n6239;
      25'b0000000000000000010000000: n7192 = 1'b0;
      25'b0000000000000000001000000: n7192 = 1'b0;
      25'b0000000000000000000100000: n7192 = 1'b0;
      25'b0000000000000000000010000: n7192 = 1'b0;
      25'b0000000000000000000001000: n7192 = 1'b0;
      25'b0000000000000000000000100: n7192 = 1'b0;
      25'b0000000000000000000000010: n7192 = 1'b0;
      25'b0000000000000000000000001: n7192 = 1'b0;
      default: n7192 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7195 = 1'b0;
      25'b0100000000000000000000000: n7195 = 1'b0;
      25'b0010000000000000000000000: n7195 = n6916;
      25'b0001000000000000000000000: n7195 = n6846;
      25'b0000100000000000000000000: n7195 = n6764;
      25'b0000010000000000000000000: n7195 = 1'b0;
      25'b0000001000000000000000000: n7195 = 1'b0;
      25'b0000000100000000000000000: n7195 = n6625;
      25'b0000000010000000000000000: n7195 = n6581;
      25'b0000000001000000000000000: n7195 = 1'b0;
      25'b0000000000100000000000000: n7195 = 1'b0;
      25'b0000000000010000000000000: n7195 = 1'b0;
      25'b0000000000001000000000000: n7195 = 1'b0;
      25'b0000000000000100000000000: n7195 = 1'b0;
      25'b0000000000000010000000000: n7195 = 1'b0;
      25'b0000000000000001000000000: n7195 = 1'b0;
      25'b0000000000000000100000000: n7195 = n6242;
      25'b0000000000000000010000000: n7195 = n6184;
      25'b0000000000000000001000000: n7195 = 1'b0;
      25'b0000000000000000000100000: n7195 = 1'b0;
      25'b0000000000000000000010000: n7195 = 1'b0;
      25'b0000000000000000000001000: n7195 = 1'b0;
      25'b0000000000000000000000100: n7195 = 1'b0;
      25'b0000000000000000000000010: n7195 = 1'b0;
      25'b0000000000000000000000001: n7195 = 1'b0;
      default: n7195 = 1'bX;
    endcase
  /* T80_MCode.vhd:1775:25  */
  always @*
    case (n7023)
      25'b1000000000000000000000000: n7198 = 1'b0;
      25'b0100000000000000000000000: n7198 = 1'b0;
      25'b0010000000000000000000000: n7198 = 1'b0;
      25'b0001000000000000000000000: n7198 = 1'b0;
      25'b0000100000000000000000000: n7198 = 1'b0;
      25'b0000010000000000000000000: n7198 = 1'b0;
      25'b0000001000000000000000000: n7198 = 1'b0;
      25'b0000000100000000000000000: n7198 = n6628;
      25'b0000000010000000000000000: n7198 = n6584;
      25'b0000000001000000000000000: n7198 = n6531;
      25'b0000000000100000000000000: n7198 = n6440;
      25'b0000000000010000000000000: n7198 = 1'b0;
      25'b0000000000001000000000000: n7198 = 1'b0;
      25'b0000000000000100000000000: n7198 = 1'b0;
      25'b0000000000000010000000000: n7198 = 1'b0;
      25'b0000000000000001000000000: n7198 = n6305;
      25'b0000000000000000100000000: n7198 = n6245;
      25'b0000000000000000010000000: n7198 = 1'b0;
      25'b0000000000000000001000000: n7198 = 1'b0;
      25'b0000000000000000000100000: n7198 = 1'b0;
      25'b0000000000000000000010000: n7198 = 1'b0;
      25'b0000000000000000000001000: n7198 = 1'b0;
      25'b0000000000000000000000100: n7198 = 1'b0;
      25'b0000000000000000000000010: n7198 = 1'b0;
      25'b0000000000000000000000001: n7198 = 1'b0;
      default: n7198 = 1'bX;
    endcase
  assign n7199 = {n5543, n4455};
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7200 = n5521;
      2'b01: n7200 = n4210;
      default: n7200 = n7039;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7202 = n5523;
      2'b01: n7202 = n4215;
      default: n7202 = n7045;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7204 = 2'b00;
      2'b01: n7204 = n4221;
      default: n7204 = 2'b00;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7207 = 1'b0;
      2'b01: n7207 = n4224;
      default: n7207 = n7048;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7210 = 1'b0;
      2'b01: n7210 = n4227;
      default: n7210 = n7051;
    endcase
  assign n7212 = n7057[1:0]; // extract
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7214 = 2'b00;
      2'b01: n7214 = n4239;
      default: n7214 = n7212;
    endcase
  assign n7215 = n4251[0]; // extract
  assign n7216 = n7057[2]; // extract
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7218 = 1'b0;
      2'b01: n7218 = n7215;
      default: n7218 = n7216;
    endcase
  assign n7219 = n4251[1]; // extract
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7221 = 1'b0;
      2'b01: n7221 = n7219;
      default: n7221 = n7063;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7225 = n5526;
      2'b01: n7225 = n4260;
      default: n7225 = n7066;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7228 = 1'b0;
      2'b01: n7228 = n4263;
      default: n7228 = n7070;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7230 = n4456;
      2'b01: n7230 = n4267;
      default: n7230 = n7076;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7232 = 1'b0;
      2'b01: n7232 = n4271;
      default: n7232 = n7082;
    endcase
  assign n7235 = n5528[0]; // extract
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7236 = n7235;
      2'b01: n7236 = n4296;
      default: n7236 = n7096;
    endcase
  assign n7237 = n5528[2:1]; // extract
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7238 = n7237;
      2'b01: n7238 = n4321;
      default: n7238 = n7110;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7240 = 1'b0;
      2'b01: n7240 = n4340;
      default: n7240 = n7121;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7244 = n5530;
      2'b01: n7244 = n4346;
      default: n7244 = n7124;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7245 = n5533;
      2'b01: n7245 = n4354;
      default: n7245 = n7128;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7248 = 1'b0;
      2'b01: n7248 = n4358;
      default: n7248 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7251 = 1'b0;
      2'b01: n7251 = n4363;
      default: n7251 = n7131;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7254 = 1'b0;
      2'b01: n7254 = n4366;
      default: n7254 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7256 = n5535;
      2'b01: n7256 = n4369;
      default: n7256 = n7134;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7259 = 1'b0;
      2'b01: n7259 = n4372;
      default: n7259 = n7137;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7262 = 1'b0;
      2'b01: n7262 = n4375;
      default: n7262 = n7140;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7265 = 1'b0;
      2'b01: n7265 = n4378;
      default: n7265 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7268 = 1'b0;
      2'b01: n7268 = n4382;
      default: n7268 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7271 = 1'b0;
      2'b01: n7271 = n4385;
      default: n7271 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7274 = 1'b0;
      2'b01: n7274 = n4388;
      default: n7274 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7277 = 1'b0;
      2'b01: n7277 = n4391;
      default: n7277 = n7143;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7280 = 1'b0;
      2'b01: n7280 = n4394;
      default: n7280 = n7146;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7283 = 1'b0;
      2'b01: n7283 = n4398;
      default: n7283 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7286 = 3'b000;
      2'b01: n7286 = 3'b000;
      default: n7286 = n7153;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7289 = 1'b0;
      2'b01: n7289 = n4402;
      default: n7289 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7292 = 1'b0;
      2'b01: n7292 = n4406;
      default: n7292 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7295 = 1'b0;
      2'b01: n7295 = n4410;
      default: n7295 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7298 = 1'b0;
      2'b01: n7298 = n4414;
      default: n7298 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7301 = 1'b0;
      2'b01: n7301 = n4417;
      default: n7301 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7304 = 1'b0;
      2'b01: n7304 = n4421;
      default: n7304 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7307 = 1'b0;
      2'b01: n7307 = n4425;
      default: n7307 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7310 = 1'b0;
      2'b01: n7310 = n4429;
      default: n7310 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7313 = 1'b0;
      2'b01: n7313 = 1'b0;
      default: n7313 = n7156;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7316 = 1'b0;
      2'b01: n7316 = 1'b0;
      default: n7316 = n7159;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7319 = 1'b0;
      2'b01: n7319 = 1'b0;
      default: n7319 = n7162;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7322 = 1'b0;
      2'b01: n7322 = 1'b0;
      default: n7322 = n7165;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7325 = 1'b0;
      2'b01: n7325 = 1'b0;
      default: n7325 = n7168;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7328 = 1'b0;
      2'b01: n7328 = 1'b0;
      default: n7328 = n7171;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7331 = 1'b0;
      2'b01: n7331 = 1'b0;
      default: n7331 = n7174;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7334 = 1'b0;
      2'b01: n7334 = 1'b0;
      default: n7334 = n7177;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7337 = 1'b0;
      2'b01: n7337 = 1'b0;
      default: n7337 = n7180;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7340 = 2'b00;
      2'b01: n7340 = n4432;
      default: n7340 = n7183;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7343 = 1'b0;
      2'b01: n7343 = n4436;
      default: n7343 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7346 = 1'b0;
      2'b01: n7346 = n4440;
      default: n7346 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7349 = 2'b11;
      2'b01: n7349 = 2'b11;
      default: n7349 = n7189;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7352 = 1'b0;
      2'b01: n7352 = n4444;
      default: n7352 = 1'b0;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7355 = 1'b0;
      2'b01: n7355 = n4447;
      default: n7355 = n7192;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7357 = n5538;
      2'b01: n7357 = n4450;
      default: n7357 = n7195;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7360 = 1'b0;
      2'b01: n7360 = n4453;
      default: n7360 = n7198;
    endcase
  /* T80_MCode.vhd:263:17  */
  always @*
    case (n7199)
      2'b10: n7363 = n5541;
      2'b01: n7363 = 1'b0;
      default: n7363 = 1'b0;
    endcase
  /* T80_MCode.vhd:2256:35  */
  assign n7366 = mcycle == 3'b110;
  /* T80_MCode.vhd:2264:40  */
  assign n7368 = ir == 8'b00110110;
  /* T80_MCode.vhd:2264:60  */
  assign n7370 = ir == 8'b11001011;
  /* T80_MCode.vhd:2264:53  */
  assign n7371 = n7368 | n7370;
  /* T80_MCode.vhd:2256:25  */
  assign n7373 = n7384 ? 3'b111 : n7256;
  /* T80_MCode.vhd:2267:45  */
  assign n7375 = ir == 8'b00110110;
  /* T80_MCode.vhd:2267:66  */
  assign n7377 = iset == 2'b01;
  /* T80_MCode.vhd:2267:58  */
  assign n7378 = n7375 | n7377;
  /* T80_MCode.vhd:2267:36  */
  assign n7379 = ~n7378;
  /* T80_MCode.vhd:2256:25  */
  assign n7381 = n7385 ? 1'b1 : n7360;
  /* T80_MCode.vhd:2256:25  */
  assign n7383 = n7366 ? 1'b1 : n7207;
  /* T80_MCode.vhd:2256:25  */
  assign n7384 = n7371 & n7366;
  /* T80_MCode.vhd:2256:25  */
  assign n7385 = n7379 & n7366;
  /* T80_MCode.vhd:2271:35  */
  assign n7387 = mcycle == 3'b111;
  /* T80_MCode.vhd:2275:41  */
  assign n7389 = iset != 2'b01;
  /* T80_MCode.vhd:2271:25  */
  assign n7391 = n7408 ? 3'b010 : n7373;
  /* T80_MCode.vhd:2280:40  */
  assign n7394 = ir == 8'b00110110;
  /* T80_MCode.vhd:2280:61  */
  assign n7396 = iset == 2'b01;
  /* T80_MCode.vhd:2280:53  */
  assign n7397 = n7394 | n7396;
  /* T80_MCode.vhd:2271:25  */
  assign n7399 = n7404 ? 1'b1 : n7383;
  /* T80_MCode.vhd:2280:33  */
  assign n7401 = n7397 ? n7355 : 1'b1;
  /* T80_MCode.vhd:2271:25  */
  assign n7403 = n7387 ? 3'b101 : n7202;
  /* T80_MCode.vhd:2271:25  */
  assign n7404 = n7397 & n7387;
  assign n7405 = {1'b0, n2216};
  assign n7406 = {n7240, n7238, n7236};
  /* T80_MCode.vhd:2271:25  */
  assign n7407 = n7387 ? n7405 : n7406;
  /* T80_MCode.vhd:2271:25  */
  assign n7408 = n7389 & n7387;
  /* T80_MCode.vhd:2271:25  */
  assign n7409 = n7387 ? n7401 : n7355;
  assign n7413 = {n7221, n7218, n7214};
  assign n7414 = {n7232, n7230};
endmodule

module t80_0_1_0_1_2_3_4_5_6_7
  (input  reset_n,
   input  clk_n,
   input  cen,
   input  wait_n,
   input  int_n,
   input  nmi_n,
   input  busrq_n,
   input  [7:0] dinst,
   input  [7:0] di,
   input  r800_mode,
   input  out0,
   input  dirset,
   input  [211:0] dir,
   output m1_n,
   output iorq,
   output noread,
   output write,
   output rfsh_n,
   output halt_n,
   output busak_n,
   output [15:0] a,
   output [7:0] do_sig,
   output [2:0] mc,
   output [2:0] ts,
   output intcycle_n,
   output inte,
   output stop,
   output [211:0] \reg );
  wire [7:0] acc;
  wire [7:0] f;
  wire [7:0] ap;
  wire [7:0] fp;
  wire [7:0] i;
  wire [7:0] r;
  wire [15:0] sp;
  wire [15:0] pc;
  wire [7:0] regdih;
  wire [7:0] regdil;
  wire [15:0] regbusa;
  wire [15:0] regbusb;
  wire [15:0] regbusc;
  wire [2:0] regaddra_r;
  wire [2:0] regaddra;
  wire [2:0] regaddrb_r;
  wire [2:0] regaddrb;
  wire [2:0] regaddrc;
  wire regweh;
  wire regwel;
  wire alternate;
  wire [15:0] wz;
  wire [15:0] tmpaddr2;
  wire [7:0] ir;
  wire [1:0] iset;
  wire [15:0] regbusa_r;
  wire [31:0] mulu_prod32;
  wire [31:0] mulu_tmp;
  wire [15:0] mulu_fakt1;
  wire [15:0] id16;
  wire [7:0] save_mux;
  wire [2:0] tstate;
  wire [2:0] mcycle;
  wire inte_ff1;
  wire inte_ff2;
  wire halt_ff;
  reg busreq_s;
  reg busack;
  wire clken;
  wire nmi_s;
  wire [1:0] istatus;
  wire [7:0] di_reg;
  wire t_res;
  wire [1:0] xy_state;
  wire [2:0] pre_xy_f_m;
  wire nextis_xy_fetch;
  wire xy_ind;
  wire no_btr;
  wire btr_r;
  wire auto_wait;
  wire auto_wait_t1;
  wire auto_wait_t2;
  wire incdecz;
  wire [7:0] busb;
  wire [7:0] busa;
  wire [7:0] alu_q;
  wire [7:0] f_out;
  wire [4:0] read_to_reg_r;
  wire arith16_r;
  wire z16_r;
  wire [3:0] alu_op_r;
  wire save_alu_r;
  wire preservec_r;
  wire [2:0] mcycles;
  wire [2:0] mcycles_d;
  wire [2:0] tstates;
  wire intcycle;
  wire nmicycle;
  wire inc_pc;
  wire inc_wz;
  wire [3:0] incdec_16;
  wire [1:0] prefix;
  wire read_to_acc;
  wire read_to_reg;
  wire [3:0] set_busb_to;
  wire [3:0] set_busa_to;
  wire [3:0] alu_op;
  wire save_alu;
  wire rot_akku;
  wire preservec;
  wire arith16;
  wire [2:0] set_addr_to;
  wire jump;
  wire jumpe;
  wire jumpxy;
  wire call;
  wire rstp;
  wire ldz;
  wire ldw;
  wire ldsphl;
  wire ldhlsp;
  wire addspdd;
  wire iorq_i;
  wire [2:0] special_ld;
  wire exchangedh;
  wire exchangerp;
  wire exchangeaf;
  wire exchangers;
  wire i_djnz;
  wire i_cpl;
  wire i_ccf;
  wire i_scf;
  wire i_retn;
  wire i_bt;
  wire i_bc;
  wire i_btr;
  wire i_rld;
  wire i_rrd;
  wire i_rxdd;
  wire i_inrc;
  wire i_mulub;
  wire i_mulu;
  wire [1:0] setwz;
  wire setdi;
  wire setei;
  wire [1:0] imode;
  wire halt;
  wire xybit_undoc;
  wire no_pc;
  wire [127:0] dor;
  wire [1:0] n174;
  wire [3:0] n175;
  wire [131:0] n176;
  wire [147:0] n177;
  wire [163:0] n178;
  wire [171:0] n179;
  wire [179:0] n180;
  wire [187:0] n181;
  wire [195:0] n182;
  wire [203:0] n183;
  wire [211:0] n184;
  wire n185;
  wire [211:0] n186;
  wire [1:0] n187;
  wire [3:0] n188;
  wire [15:0] n189;
  wire [19:0] n190;
  wire [47:0] n191;
  wire [67:0] n192;
  wire [15:0] n193;
  wire [83:0] n194;
  wire [47:0] n195;
  wire [131:0] n196;
  wire [147:0] n197;
  wire [163:0] n198;
  wire [171:0] n199;
  wire [179:0] n200;
  wire [187:0] n201;
  wire [195:0] n202;
  wire [203:0] n203;
  wire [211:0] n204;
  wire [2:0] mcode_n205;
  wire [2:0] mcode_n206;
  wire [1:0] mcode_n207;
  wire mcode_n208;
  wire mcode_n209;
  wire [3:0] mcode_n210;
  wire mcode_n211;
  wire mcode_n212;
  wire [3:0] mcode_n213;
  wire [3:0] mcode_n214;
  wire [3:0] mcode_n215;
  wire mcode_n216;
  wire mcode_n217;
  wire mcode_n218;
  wire mcode_n219;
  wire [2:0] mcode_n220;
  wire mcode_n221;
  wire mcode_n222;
  wire mcode_n223;
  wire mcode_n224;
  wire mcode_n225;
  wire mcode_n226;
  wire mcode_n227;
  wire mcode_n228;
  wire mcode_n229;
  wire mcode_n230;
  wire mcode_n231;
  wire [2:0] mcode_n232;
  wire mcode_n233;
  wire mcode_n234;
  wire mcode_n235;
  wire mcode_n236;
  wire mcode_n237;
  wire mcode_n238;
  wire mcode_n239;
  wire mcode_n240;
  wire mcode_n241;
  wire mcode_n242;
  wire mcode_n243;
  wire mcode_n244;
  wire mcode_n245;
  wire mcode_n246;
  wire mcode_n247;
  wire mcode_n248;
  wire mcode_n249;
  wire [1:0] mcode_n250;
  wire mcode_n251;
  wire mcode_n252;
  wire [1:0] mcode_n253;
  wire mcode_n254;
  wire mcode_n255;
  wire mcode_n256;
  wire mcode_n257;
  wire mcode_n258;
  wire [5:0] n367;
  wire [7:0] alu_n368;
  wire [7:0] alu_n369;
  wire n374;
  wire n375;
  wire n377;
  wire n378;
  wire n382;
  wire n383;
  wire n384;
  wire n386;
  wire n388;
  wire n390;
  wire n391;
  wire n392;
  wire n394;
  wire n396;
  wire n397;
  wire n398;
  wire n399;
  wire n400;
  wire [7:0] n402;
  wire n403;
  wire [7:0] n404;
  wire n411;
  wire [7:0] n413;
  wire [7:0] n414;
  wire [7:0] n415;
  wire [7:0] n416;
  wire [7:0] n417;
  wire [7:0] n418;
  wire [15:0] n419;
  wire [15:0] n420;
  wire [15:0] n421;
  wire [1:0] n422;
  wire n424;
  wire n425;
  wire n427;
  wire n428;
  wire [7:0] n429;
  wire [8:0] n431;
  wire [8:0] n433;
  wire [8:0] n434;
  wire [3:0] n435;
  wire [4:0] n437;
  wire [3:0] n438;
  wire [4:0] n440;
  wire [4:0] n441;
  wire n444;
  wire n445;
  wire [1:0] n446;
  wire [1:0] n447;
  wire [1:0] n448;
  wire n449;
  wire n450;
  wire n451;
  wire n452;
  wire n456;
  wire n457;
  wire [7:0] n458;
  wire [8:0] n460;
  wire [8:0] n462;
  wire [8:0] n463;
  wire [3:0] n464;
  wire [4:0] n466;
  wire [3:0] n467;
  wire [4:0] n469;
  wire [4:0] n470;
  wire n473;
  wire n474;
  wire [1:0] n475;
  wire [1:0] n476;
  wire n477;
  wire n478;
  wire n482;
  wire [1:0] n483;
  wire n485;
  wire n486;
  wire n487;
  wire n488;
  wire n489;
  wire n490;
  wire n492;
  wire n493;
  wire n496;
  wire n498;
  wire n499;
  wire n500;
  wire n501;
  wire n503;
  wire n504;
  wire [6:0] n505;
  wire [6:0] n507;
  wire n508;
  wire n509;
  wire n510;
  wire n511;
  wire n512;
  wire n513;
  wire n514;
  wire n515;
  wire n516;
  wire n517;
  wire [15:0] n519;
  wire [15:0] n520;
  wire n522;
  wire n523;
  wire n525;
  wire n526;
  wire n527;
  wire n528;
  wire [7:0] n530;
  wire [7:0] n532;
  wire n534;
  wire n536;
  wire n537;
  wire [1:0] n540;
  wire n542;
  wire [1:0] n544;
  wire n546;
  wire [1:0] n548;
  wire [1:0] n549;
  wire n550;
  wire [1:0] n552;
  wire [1:0] n555;
  wire n557;
  wire [15:0] n558;
  wire [15:0] n559;
  wire [6:0] n560;
  wire [6:0] n561;
  wire n562;
  wire [7:0] n563;
  wire [1:0] n564;
  wire [1:0] n565;
  wire n566;
  wire n568;
  wire n570;
  wire [1:0] n572;
  wire n573;
  wire n575;
  wire n576;
  wire n577;
  wire n578;
  wire n579;
  wire [7:0] n580;
  wire [7:0] n581;
  wire n582;
  wire n583;
  wire n584;
  wire n586;
  wire n588;
  wire n590;
  wire n591;
  wire n593;
  wire n594;
  wire [7:0] n595;
  wire [7:0] n596;
  wire n598;
  wire [15:0] n599;
  wire [15:0] n600;
  wire n602;
  wire [15:0] n603;
  wire [15:0] n606;
  wire n608;
  wire n610;
  wire n612;
  wire [15:0] n615;
  wire [15:0] n616;
  wire n618;
  wire [7:0] n619;
  wire [7:0] n622;
  wire [15:0] n623;
  wire [15:0] n624;
  wire n626;
  wire n628;
  wire [7:0] n629;
  wire [7:0] n632;
  wire [15:0] n633;
  wire [15:0] n634;
  wire n636;
  wire [15:0] n638;
  wire [7:0] n639;
  wire n641;
  wire [7:0] n642;
  wire [7:0] n645;
  wire [15:0] n646;
  wire [15:0] n647;
  wire [15:0] n648;
  wire [15:0] n649;
  wire [15:0] n650;
  wire n652;
  wire n654;
  wire [3:0] n655;
  wire n657;
  wire n658;
  wire [1:0] n659;
  wire n661;
  wire n662;
  wire n664;
  wire n665;
  wire n666;
  wire n667;
  wire n668;
  wire n669;
  wire n670;
  wire n671;
  wire n673;
  wire [15:0] n674;
  wire [15:0] n675;
  wire [5:0] n676;
  wire [7:0] n677;
  wire [7:0] n678;
  wire [7:0] n679;
  wire [7:0] n680;
  wire [7:0] n681;
  wire [7:0] n682;
  reg [7:0] n683;
  wire [7:0] n684;
  wire [7:0] n685;
  wire [7:0] n686;
  wire [7:0] n687;
  wire [7:0] n688;
  wire [7:0] n689;
  reg [7:0] n690;
  reg [15:0] n691;
  wire [15:0] n692;
  wire [15:0] n693;
  wire [15:0] n694;
  wire [15:0] n695;
  wire [15:0] n696;
  wire [15:0] n697;
  wire [15:0] n699;
  wire [15:0] n701;
  wire [15:0] n702;
  wire [15:0] n703;
  wire [15:0] n704;
  wire [15:0] n705;
  wire [15:0] n706;
  wire [15:0] n707;
  wire [15:0] n708;
  wire [15:0] n709;
  wire [15:0] n710;
  wire [15:0] n711;
  wire [15:0] n712;
  wire [15:0] n713;
  wire n715;
  wire [15:0] n716;
  wire [7:0] n717;
  wire n718;
  wire n719;
  wire n721;
  wire n722;
  wire [7:0] n724;
  wire [2:0] n725;
  wire n726;
  wire n727;
  wire n728;
  wire n729;
  wire [2:0] n730;
  wire [2:0] n731;
  wire n732;
  wire n733;
  wire n734;
  wire n735;
  wire n736;
  wire [1:0] n738;
  wire [2:0] n739;
  wire n740;
  wire [1:0] n741;
  wire [1:0] n742;
  wire [2:0] n743;
  wire n745;
  wire n747;
  wire [1:0] n749;
  wire [2:0] n750;
  wire [1:0] n751;
  wire [2:0] n752;
  wire [15:0] n753;
  wire n754;
  wire [1:0] n755;
  wire n756;
  wire n757;
  wire [2:0] n758;
  wire [2:0] n759;
  wire [15:0] n760;
  wire [15:0] n761;
  wire n762;
  wire [3:0] n764;
  wire n766;
  wire n768;
  wire n769;
  wire n770;
  wire n771;
  wire n773;
  wire n774;
  wire n775;
  wire n776;
  wire n777;
  wire n778;
  wire [8:0] n780;
  wire [7:0] n781;
  wire [8:0] n783;
  wire [8:0] n784;
  wire n785;
  wire n786;
  wire n787;
  wire [8:0] n789;
  wire [8:0] n791;
  wire [8:0] n792;
  wire n793;
  wire n794;
  wire n795;
  wire n796;
  wire n797;
  wire n798;
  wire n799;
  wire n800;
  wire n801;
  wire n802;
  wire n803;
  wire n804;
  wire n805;
  wire n806;
  wire n807;
  wire n808;
  wire [2:0] n809;
  wire n810;
  wire [2:0] n811;
  wire [2:0] n812;
  wire n813;
  wire n814;
  wire n815;
  wire n816;
  wire n819;
  wire n820;
  wire n822;
  wire n824;
  wire n825;
  wire [7:0] n826;
  wire [15:0] n827;
  wire [15:0] n828;
  wire [15:0] n829;
  wire [15:0] n830;
  wire [15:0] n832;
  wire [15:0] n833;
  wire [15:0] n834;
  wire [15:0] n835;
  wire [15:0] n837;
  wire [15:0] n838;
  wire [2:0] n839;
  localparam [15:0] n840 = 16'b0000000000000000;
  wire [9:0] n841;
  wire [2:0] n842;
  wire [15:0] n843;
  wire [15:0] n844;
  wire [15:0] n845;
  wire [15:0] n846;
  wire n847;
  wire n849;
  wire n851;
  wire n852;
  wire [15:0] n853;
  wire [15:0] n854;
  wire [15:0] n855;
  wire n857;
  wire n859;
  wire n860;
  wire n861;
  wire n862;
  wire n863;
  wire [15:0] n866;
  wire [15:0] n867;
  wire n868;
  wire n870;
  wire n871;
  wire n873;
  wire n875;
  wire n876;
  wire n877;
  wire [2:0] n878;
  wire n880;
  wire n881;
  wire [15:0] n883;
  wire [15:0] n885;
  wire [15:0] n886;
  wire [15:0] n887;
  wire n888;
  wire n890;
  wire n891;
  wire [15:0] n892;
  wire [15:0] n893;
  wire [15:0] n894;
  wire [15:0] n895;
  wire [15:0] n896;
  wire [7:0] n897;
  wire n898;
  wire [7:0] n899;
  wire [7:0] n900;
  wire [7:0] n901;
  wire [7:0] n902;
  wire n903;
  wire n904;
  wire [15:0] n905;
  wire [7:0] n906;
  wire [1:0] n907;
  wire n908;
  wire n909;
  wire [7:0] n910;
  wire [7:0] n911;
  wire [7:0] n912;
  wire [7:0] n913;
  wire n915;
  wire [15:0] n916;
  wire [15:0] n917;
  wire n918;
  wire [15:0] n919;
  wire [7:0] n920;
  wire [1:0] n921;
  wire n922;
  wire n923;
  wire n924;
  wire [3:0] n926;
  wire n929;
  wire n933;
  wire [7:0] n934;
  wire [7:0] n935;
  wire [7:0] n936;
  wire [7:0] n937;
  wire n938;
  wire [1:0] n939;
  wire n940;
  wire n942;
  wire n945;
  wire n946;
  wire n948;
  wire n951;
  wire n952;
  wire n954;
  wire n957;
  wire n958;
  wire n960;
  wire n963;
  wire n965;
  wire [2:0] n966;
  reg [7:0] n967;
  wire n968;
  reg n969;
  wire n970;
  reg n971;
  wire n972;
  reg n973;
  wire n974;
  reg n975;
  wire n976;
  reg n977;
  wire n978;
  reg n979;
  wire n980;
  reg n981;
  reg [7:0] n982;
  wire n983;
  wire [7:0] n984;
  reg [7:0] n985;
  wire [7:0] n986;
  wire [6:0] n987;
  wire [6:0] n988;
  wire [6:0] n989;
  wire [7:0] n990;
  wire n991;
  wire [7:0] n992;
  wire [7:0] n993;
  wire n994;
  wire n996;
  wire n997;
  wire n998;
  wire n999;
  wire [7:0] n1000;
  wire [7:0] n1001;
  wire [15:0] n1002;
  wire [15:0] n1003;
  wire n1004;
  wire n1005;
  wire n1007;
  wire n1008;
  wire [6:0] n1009;
  wire n1010;
  wire n1011;
  wire n1012;
  wire [7:0] n1013;
  wire [7:0] n1014;
  wire [7:0] n1015;
  wire n1016;
  wire n1019;
  wire n1020;
  wire n1022;
  wire n1025;
  wire n1026;
  wire n1027;
  wire n1028;
  wire n1029;
  wire n1030;
  wire n1031;
  wire n1032;
  wire n1033;
  wire n1034;
  wire n1035;
  wire n1036;
  wire n1037;
  wire n1038;
  wire n1039;
  wire n1040;
  wire n1041;
  wire n1042;
  wire [6:0] n1043;
  wire [6:0] n1044;
  wire [6:0] n1045;
  wire n1046;
  wire n1048;
  wire n1049;
  wire n1050;
  wire n1051;
  wire n1052;
  wire [7:0] n1053;
  wire [3:0] n1054;
  wire [3:0] n1055;
  wire [7:0] n1056;
  wire [7:0] n1057;
  wire [3:0] n1058;
  wire [3:0] n1059;
  wire [7:0] n1060;
  wire [7:0] n1061;
  wire [7:0] n1062;
  wire n1063;
  wire [4:0] n1066;
  wire [4:0] n1067;
  wire [4:0] n1068;
  wire [4:0] n1070;
  wire n1073;
  wire n1074;
  wire n1075;
  wire n1076;
  wire [2:0] n1079;
  wire n1080;
  wire n1081;
  wire [2:0] n1082;
  wire [2:0] n1083;
  wire [1:0] n1085;
  wire n1086;
  wire n1088;
  wire n1089;
  wire n1090;
  wire [7:0] n1092;
  wire [7:0] n1093;
  wire n1094;
  wire n1095;
  wire n1096;
  wire n1097;
  wire n1098;
  wire n1099;
  wire n1101;
  wire n1103;
  wire n1104;
  wire n1106;
  wire n1107;
  wire n1108;
  wire n1109;
  wire n1110;
  wire n1112;
  wire n1113;
  wire n1114;
  wire n1116;
  wire n1118;
  wire n1120;
  wire n1122;
  wire n1124;
  wire [4:0] n1125;
  reg [7:0] n1126;
  reg [7:0] n1127;
  wire [7:0] n1128;
  reg [7:0] n1129;
  wire [7:0] n1130;
  reg [7:0] n1131;
  wire [7:0] n1132;
  reg [7:0] n1133;
  wire [7:0] n1134;
  wire [7:0] n1135;
  wire [7:0] n1136;
  wire [7:0] n1137;
  wire [7:0] n1138;
  wire [15:0] n1139;
  wire [15:0] n1140;
  wire [15:0] n1141;
  wire [7:0] n1142;
  wire [7:0] n1143;
  wire [7:0] n1144;
  wire [7:0] n1145;
  wire [7:0] n1146;
  wire n1147;
  wire [7:0] n1148;
  wire [15:0] n1149;
  wire [15:0] n1150;
  wire n1151;
  wire [15:0] n1152;
  wire [7:0] n1153;
  wire [1:0] n1154;
  wire n1155;
  wire n1156;
  wire n1157;
  wire n1158;
  wire [4:0] n1159;
  wire n1160;
  wire n1161;
  wire [3:0] n1162;
  wire n1163;
  wire n1164;
  wire [2:0] n1165;
  wire n1166;
  wire [15:0] n1171;
  wire [7:0] n1172;
  wire [7:0] n1173;
  wire [7:0] n1174;
  wire [7:0] n1175;
  wire [7:0] n1176;
  wire [7:0] n1177;
  wire [7:0] n1178;
  wire [15:0] n1179;
  wire [15:0] n1180;
  wire n1181;
  wire [15:0] n1182;
  wire [7:0] n1183;
  wire [1:0] n1184;
  wire [1:0] n1185;
  wire [1:0] n1186;
  wire n1187;
  wire n1188;
  wire [4:0] n1189;
  wire n1190;
  wire n1191;
  wire [3:0] n1192;
  wire n1193;
  wire n1194;
  wire [2:0] n1195;
  wire n1196;
  wire [3:0] n1302;
  wire [19:0] n1303;
  wire [19:0] n1304;
  wire [19:0] n1305;
  wire [15:0] n1306;
  wire [19:0] n1308;
  wire [19:0] n1309;
  wire [11:0] n1310;
  wire n1315;
  wire [7:0] n1316;
  wire [7:0] n1317;
  wire [7:0] n1318;
  wire [31:0] n1320;
  wire [31:0] n1321;
  wire [31:0] n1322;
  wire [15:0] n1323;
  wire [15:0] n1324;
  wire [31:0] n1325;
  wire n1328;
  wire [1:0] n1335;
  wire [2:0] n1336;
  wire n1337;
  wire n1339;
  wire n1340;
  wire [1:0] n1341;
  wire n1343;
  wire n1344;
  wire n1345;
  wire [2:0] n1347;
  wire [2:0] n1348;
  wire [1:0] n1349;
  wire [2:0] n1350;
  wire n1351;
  wire n1353;
  wire n1354;
  wire [1:0] n1355;
  wire n1357;
  wire n1358;
  wire n1359;
  wire [2:0] n1361;
  wire [2:0] n1362;
  wire [1:0] n1363;
  wire [2:0] n1364;
  wire n1365;
  wire [2:0] n1367;
  wire [2:0] n1368;
  wire n1369;
  wire n1371;
  wire n1372;
  wire n1374;
  wire n1375;
  wire n1376;
  wire [2:0] n1378;
  wire [2:0] n1379;
  wire n1380;
  wire n1382;
  wire n1383;
  wire n1384;
  wire n1386;
  wire n1388;
  wire n1390;
  wire n1391;
  wire n1392;
  wire [2:0] n1393;
  wire n1395;
  wire n1396;
  wire n1398;
  wire n1401;
  wire n1402;
  wire [1:0] n1414;
  wire [2:0] n1415;
  wire n1417;
  wire n1419;
  wire n1421;
  wire n1422;
  wire n1423;
  wire n1424;
  wire n1425;
  wire n1427;
  wire n1428;
  wire [2:0] n1429;
  wire n1430;
  wire [2:0] n1432;
  wire n1434;
  wire n1436;
  wire n1438;
  wire n1439;
  wire n1440;
  wire n1441;
  wire n1442;
  wire [1:0] n1443;
  wire n1445;
  wire n1446;
  wire [2:0] n1447;
  wire [2:0] n1449;
  wire n1451;
  wire n1452;
  wire [2:0] n1453;
  wire [2:0] n1455;
  wire n1456;
  wire n1458;
  wire n1459;
  wire [2:0] n1460;
  wire n1463;
  wire n1464;
  wire [2:0] n1465;
  wire [2:0] n1467;
  wire n1469;
  wire n1470;
  wire [2:0] n1471;
  wire [15:0] n1473;
  wire n1474;
  wire [15:0] n1475;
  wire [15:0] n1477;
  wire n1481;
  wire n1482;
  wire n1483;
  wire n1484;
  wire n1485;
  wire n1487;
  wire n1488;
  wire n1489;
  wire n1490;
  wire n1491;
  wire n1492;
  wire n1494;
  wire n1496;
  wire n1497;
  wire n1499;
  wire n1500;
  wire n1502;
  wire n1503;
  wire n1505;
  wire n1506;
  wire n1508;
  wire n1509;
  reg n1511;
  reg n1513;
  wire n1515;
  wire n1518;
  wire n1521;
  wire n1522;
  wire n1523;
  wire n1525;
  wire n1527;
  wire n1529;
  wire n1531;
  wire n1532;
  wire n1533;
  wire n1535;
  wire n1537;
  wire n1539;
  wire n1540;
  wire n1542;
  wire n1543;
  wire n1545;
  wire n1547;
  wire n1548;
  wire n1550;
  wire n1551;
  wire n1553;
  wire n1554;
  wire n1556;
  wire n1558;
  wire n1559;
  wire n1560;
  wire n1561;
  wire [1:0] n1562;
  wire n1564;
  wire n1566;
  wire n1567;
  wire n1569;
  wire n1570;
  reg n1572;
  reg n1574;
  wire n1575;
  wire n1576;
  wire [15:0] n1578;
  wire [15:0] n1579;
  wire [7:0] n1582;
  wire [7:0] n1583;
  wire [7:0] n1584;
  wire [7:0] n1585;
  wire [7:0] n1586;
  wire [7:0] n1587;
  wire [7:0] n1588;
  wire [7:0] n1589;
  wire n1591;
  wire n1592;
  wire n1594;
  wire n1595;
  wire [7:0] n1596;
  wire [7:0] n1597;
  wire [7:0] n1598;
  wire [7:0] n1599;
  wire n1601;
  wire n1602;
  wire [7:0] n1603;
  wire [7:0] n1604;
  wire [7:0] n1605;
  wire [7:0] n1606;
  wire n1608;
  wire n1609;
  wire [7:0] n1610;
  wire [7:0] n1611;
  wire [7:0] n1612;
  wire [7:0] n1613;
  wire n1614;
  wire n1616;
  wire n1618;
  wire n1619;
  wire n1621;
  wire n1623;
  wire n1624;
  wire n1625;
  wire n1626;
  wire [7:0] n1627;
  wire [7:0] n1628;
  wire [7:0] n1629;
  wire [7:0] n1630;
  wire [7:0] regs_n1632;
  wire [7:0] regs_n1633;
  wire [7:0] regs_n1634;
  wire [7:0] regs_n1635;
  wire [7:0] regs_n1636;
  wire [7:0] regs_n1637;
  wire [127:0] regs_n1638;
  wire [127:0] n1639;
  wire n1658;
  wire n1659;
  wire [7:0] n1660;
  wire [7:0] n1661;
  wire [7:0] n1662;
  wire n1664;
  wire n1666;
  wire n1667;
  wire n1669;
  wire n1670;
  wire n1672;
  wire n1673;
  wire n1675;
  wire n1676;
  wire n1678;
  wire n1679;
  wire n1681;
  wire [7:0] n1682;
  wire n1684;
  wire [7:0] n1685;
  wire n1687;
  wire n1689;
  wire n1691;
  wire [7:0] n1692;
  wire n1694;
  wire [7:0] n1695;
  wire n1697;
  wire n1699;
  wire n1700;
  wire [7:0] n1703;
  wire n1705;
  wire [9:0] n1706;
  reg [7:0] n1709;
  wire n1711;
  wire n1712;
  wire [7:0] n1713;
  wire [7:0] n1714;
  wire [7:0] n1715;
  wire n1717;
  wire n1719;
  wire n1720;
  wire n1722;
  wire n1723;
  wire n1725;
  wire n1726;
  wire n1728;
  wire n1729;
  wire n1731;
  wire n1732;
  wire n1734;
  wire [7:0] n1735;
  wire n1737;
  wire [7:0] n1738;
  wire n1740;
  wire n1742;
  wire [5:0] n1743;
  reg [7:0] n1746;
  wire [7:0] n1747;
  wire [7:0] n1748;
  wire n1756;
  wire n1758;
  wire n1759;
  wire n1761;
  wire n1763;
  wire n1764;
  wire n1766;
  wire n1767;
  wire n1768;
  wire n1771;
  wire n1777;
  wire n1778;
  wire n1779;
  wire n1780;
  reg n1781_oldnmi_n;
  wire n1784;
  wire n1786;
  wire n1787;
  wire n1788;
  wire n1789;
  wire n1791;
  wire n1792;
  wire n1793;
  wire n1795;
  wire n1797;
  wire n1798;
  wire n1799;
  wire n1800;
  wire n1801;
  wire n1802;
  wire n1803;
  wire n1804;
  wire n1805;
  wire n1806;
  wire n1807;
  wire n1808;
  wire n1809;
  wire n1810;
  wire n1811;
  wire n1812;
  wire n1813;
  wire n1814;
  wire n1815;
  wire n1816;
  wire n1817;
  wire n1818;
  wire n1820;
  wire n1822;
  wire n1824;
  wire n1825;
  wire n1826;
  wire n1827;
  wire n1829;
  wire n1831;
  wire n1833;
  wire n1834;
  wire n1835;
  wire n1836;
  wire n1838;
  wire n1840;
  wire n1842;
  wire n1843;
  wire n1844;
  wire n1846;
  wire n1847;
  wire n1849;
  wire n1850;
  wire n1851;
  wire n1853;
  wire n1855;
  wire n1857;
  wire n1859;
  wire [2:0] n1861;
  wire n1863;
  wire n1867;
  wire [2:0] n1869;
  wire n1870;
  wire n1871;
  wire n1873;
  wire n1874;
  wire n1875;
  wire n1876;
  wire n1878;
  wire n1879;
  wire n1880;
  wire n1881;
  wire n1883;
  wire n1884;
  wire n1885;
  wire n1886;
  wire n1890;
  wire n1892;
  wire n1895;
  wire n1897;
  wire n1898;
  wire n1900;
  wire n1902;
  wire n1906;
  wire [2:0] n1909;
  wire n1911;
  wire [2:0] n1913;
  wire n1914;
  wire n1915;
  wire n1916;
  wire n1917;
  wire n1918;
  wire n1919;
  wire [2:0] n1920;
  wire n1921;
  wire n1922;
  wire n1923;
  wire n1924;
  wire n1925;
  wire n1926;
  wire [2:0] n1928;
  wire n1929;
  wire n1930;
  wire n1931;
  wire [2:0] n1932;
  wire n1933;
  wire n1934;
  wire n1935;
  wire [2:0] n1937;
  wire [2:0] n1938;
  wire n1939;
  wire n1940;
  wire n1943;
  wire n1944;
  wire [2:0] n1945;
  wire n1946;
  wire n1947;
  wire n1948;
  wire n1949;
  wire n1951;
  wire n1952;
  wire n1953;
  wire n1954;
  wire n1955;
  wire [2:0] n1957;
  wire [2:0] n1958;
  wire n1959;
  wire [2:0] n1960;
  wire [2:0] n1961;
  wire n1962;
  wire n1963;
  wire n1964;
  wire n1966;
  wire n1967;
  wire [2:0] n1968;
  wire n1969;
  wire n1970;
  wire n1971;
  wire [2:0] n1972;
  wire [2:0] n1973;
  wire n1974;
  wire n1975;
  wire n1976;
  wire n1978;
  wire n1980;
  wire [2:0] n1981;
  wire n1982;
  wire n1983;
  wire n1984;
  wire [2:0] n1985;
  wire [2:0] n1986;
  wire n1987;
  wire n1988;
  wire n1989;
  wire n1990;
  wire n1991;
  wire [2:0] n1992;
  wire n1993;
  wire n1994;
  wire n1996;
  wire n1998;
  wire n1999;
  wire [2:0] n2000;
  wire [2:0] n2001;
  wire n2002;
  wire n2003;
  wire n2004;
  wire n2005;
  wire n2006;
  wire n2007;
  wire [2:0] n2008;
  wire n2009;
  wire n2010;
  wire n2011;
  wire n2012;
  wire n2013;
  wire n2014;
  wire [2:0] n2015;
  wire [2:0] n2016;
  wire n2017;
  wire n2018;
  wire n2019;
  wire n2020;
  wire n2021;
  wire n2022;
  wire [2:0] n2023;
  wire n2024;
  wire n2025;
  wire n2026;
  wire n2027;
  wire n2028;
  wire n2029;
  wire n2076;
  wire n2077;
  reg n2078;
  wire n2080;
  wire n2082;
  wire n2083;
  wire n2084;
  reg [7:0] n2086;
  reg [7:0] n2087;
  reg [7:0] n2088;
  reg [7:0] n2089;
  reg [7:0] n2090;
  reg [7:0] n2091;
  reg [15:0] n2092;
  reg [15:0] n2093;
  wire [15:0] n2094;
  wire [15:0] n2095;
  wire [15:0] n2096;
  wire [2:0] n2097;
  reg [2:0] n2098;
  wire [2:0] n2099;
  reg [2:0] n2100;
  wire [2:0] n2101;
  reg [2:0] n2102;
  reg n2103;
  reg [15:0] n2104;
  reg [7:0] n2105;
  reg [1:0] n2106;
  wire [15:0] n2107;
  reg [15:0] n2108;
  wire [31:0] n2109;
  reg [31:0] n2110;
  wire [31:0] n2111;
  wire [15:0] n2112;
  reg [15:0] n2113;
  reg [2:0] n2114;
  reg [2:0] n2115;
  reg n2116;
  reg n2117;
  reg n2118;
  wire n2119;
  wire n2120;
  reg n2121;
  wire n2122;
  wire n2123;
  reg n2124;
  reg n2125;
  reg [1:0] n2126;
  reg [1:0] n2127;
  reg [2:0] n2128;
  reg n2129;
  reg n2130;
  reg n2131;
  reg n2132;
  reg n2133;
  wire n2134;
  reg n2135;
  wire [7:0] n2136;
  reg [7:0] n2137;
  wire [7:0] n2138;
  reg [7:0] n2139;
  reg [4:0] n2140;
  reg n2141;
  reg n2142;
  reg [3:0] n2143;
  reg n2144;
  reg n2145;
  reg [2:0] n2146;
  reg n2147;
  reg n2148;
  reg n2149;
  reg n2150;
  wire n2151;
  reg n2152;
  reg [15:0] n2153;
  reg [7:0] n2154;
  assign m1_n = n2150; //(module output)
  assign iorq = iorq_i; //(module output)
  assign noread = mcode_n255; //(module output)
  assign write = mcode_n256; //(module output)
  assign rfsh_n = n2152; //(module output)
  assign halt_n = n1777; //(module output)
  assign busak_n = n1779; //(module output)
  assign a = n2153; //(module output)
  assign do_sig = n2154; //(module output)
  assign mc = mcycle; //(module output)
  assign ts = tstate; //(module output)
  assign intcycle_n = n1780; //(module output)
  assign inte = inte_ff1; //(module output)
  assign stop = i_djnz; //(module output)
  assign \reg  = n186; //(module output)
  /* T80.vhd:134:16  */
  assign acc = n2086; // (signal)
  /* T80.vhd:134:21  */
  assign f = n2087; // (signal)
  /* T80.vhd:135:16  */
  assign ap = n2088; // (signal)
  /* T80.vhd:135:20  */
  assign fp = n2089; // (signal)
  /* T80.vhd:136:16  */
  assign i = n2090; // (signal)
  /* T80.vhd:137:16  */
  assign r = n2091; // (signal)
  /* T80.vhd:138:16  */
  assign sp = n2092; // (signal)
  /* T80.vhd:138:20  */
  assign pc = n2093; // (signal)
  /* T80.vhd:140:16  */
  assign regdih = n1629; // (signal)
  /* T80.vhd:141:16  */
  assign regdil = n1630; // (signal)
  /* T80.vhd:142:16  */
  assign regbusa = n2094; // (signal)
  /* T80.vhd:143:16  */
  assign regbusb = n2095; // (signal)
  /* T80.vhd:144:16  */
  assign regbusc = n2096; // (signal)
  /* T80.vhd:145:16  */
  assign regaddra_r = n2098; // (signal)
  /* T80.vhd:146:16  */
  assign regaddra = n1429; // (signal)
  /* T80.vhd:147:16  */
  assign regaddrb_r = n2100; // (signal)
  /* T80.vhd:148:16  */
  assign regaddrb = n1471; // (signal)
  /* T80.vhd:149:16  */
  assign regaddrc = n2102; // (signal)
  /* T80.vhd:150:16  */
  assign regweh = n1575; // (signal)
  /* T80.vhd:151:16  */
  assign regwel = n1576; // (signal)
  /* T80.vhd:152:16  */
  assign alternate = n2103; // (signal)
  /* T80.vhd:155:16  */
  assign wz = n2104; // (signal)
  /* T80.vhd:156:16  */
  assign tmpaddr2 = n1579; // (signal)
  /* T80.vhd:157:16  */
  assign ir = n2105; // (signal)
  /* T80.vhd:158:16  */
  assign iset = n2106; // (signal)
  /* T80.vhd:159:16  */
  assign regbusa_r = n2108; // (signal)
  /* T80.vhd:160:16  */
  assign mulu_prod32 = n2110; // (signal)
  /* T80.vhd:161:16  */
  assign mulu_tmp = n2111; // (signal)
  /* T80.vhd:162:16  */
  assign mulu_fakt1 = n2113; // (signal)
  /* T80.vhd:164:16  */
  assign id16 = n1475; // (signal)
  /* T80.vhd:165:16  */
  assign save_mux = n402; // (signal)
  /* T80.vhd:167:16  */
  assign tstate = n2114; // (signal)
  /* T80.vhd:168:16  */
  assign mcycle = n2115; // (signal)
  /* T80.vhd:169:16  */
  assign inte_ff1 = n2116; // (signal)
  /* T80.vhd:170:16  */
  assign inte_ff2 = n2117; // (signal)
  /* T80.vhd:171:16  */
  assign halt_ff = n2118; // (signal)
  /* T80.vhd:172:16  */
  always @*
    busreq_s = n2121; // (isignal)
  initial
    busreq_s = 1'b0;
  /* T80.vhd:173:16  */
  always @*
    busack = n2124; // (isignal)
  initial
    busack = 1'b0;
  /* T80.vhd:174:16  */
  assign clken = n375; // (signal)
  /* T80.vhd:175:16  */
  assign nmi_s = n2125; // (signal)
  /* T80.vhd:176:16  */
  assign istatus = n2126; // (signal)
  /* T80.vhd:179:16  */
  assign t_res = n378; // (signal)
  /* T80.vhd:180:16  */
  assign xy_state = n2127; // (signal)
  /* T80.vhd:181:16  */
  assign pre_xy_f_m = n2128; // (signal)
  /* T80.vhd:182:16  */
  assign nextis_xy_fetch = n400; // (signal)
  /* T80.vhd:183:16  */
  assign xy_ind = n2129; // (signal)
  /* T80.vhd:184:16  */
  assign no_btr = n2130; // (signal)
  /* T80.vhd:185:16  */
  assign btr_r = n2131; // (signal)
  /* T80.vhd:186:16  */
  assign auto_wait = n2084; // (signal)
  /* T80.vhd:187:16  */
  assign auto_wait_t1 = n2132; // (signal)
  /* T80.vhd:188:16  */
  assign auto_wait_t2 = n2133; // (signal)
  /* T80.vhd:189:16  */
  assign incdecz = n2135; // (signal)
  /* T80.vhd:192:16  */
  assign busb = n2137; // (signal)
  /* T80.vhd:193:16  */
  assign busa = n2139; // (signal)
  /* T80.vhd:194:16  */
  assign alu_q = alu_n368; // (signal)
  /* T80.vhd:195:16  */
  assign f_out = alu_n369; // (signal)
  /* T80.vhd:198:16  */
  assign read_to_reg_r = n2140; // (signal)
  /* T80.vhd:199:16  */
  assign arith16_r = n2141; // (signal)
  /* T80.vhd:200:16  */
  assign z16_r = n2142; // (signal)
  /* T80.vhd:201:16  */
  assign alu_op_r = n2143; // (signal)
  /* T80.vhd:202:16  */
  assign save_alu_r = n2144; // (signal)
  /* T80.vhd:203:16  */
  assign preservec_r = n2145; // (signal)
  /* T80.vhd:204:16  */
  assign mcycles = n2146; // (signal)
  /* T80.vhd:207:16  */
  assign mcycles_d = mcode_n205; // (signal)
  /* T80.vhd:208:16  */
  assign tstates = mcode_n206; // (signal)
  /* T80.vhd:209:16  */
  assign intcycle = n2147; // (signal)
  /* T80.vhd:210:16  */
  assign nmicycle = n2148; // (signal)
  /* T80.vhd:211:16  */
  assign inc_pc = mcode_n208; // (signal)
  /* T80.vhd:212:16  */
  assign inc_wz = mcode_n209; // (signal)
  /* T80.vhd:213:16  */
  assign incdec_16 = mcode_n210; // (signal)
  /* T80.vhd:214:16  */
  assign prefix = mcode_n207; // (signal)
  /* T80.vhd:215:16  */
  assign read_to_acc = mcode_n212; // (signal)
  /* T80.vhd:216:16  */
  assign read_to_reg = mcode_n211; // (signal)
  /* T80.vhd:217:16  */
  assign set_busb_to = mcode_n214; // (signal)
  /* T80.vhd:218:16  */
  assign set_busa_to = mcode_n213; // (signal)
  /* T80.vhd:219:16  */
  assign alu_op = mcode_n215; // (signal)
  /* T80.vhd:220:16  */
  assign save_alu = mcode_n216; // (signal)
  /* T80.vhd:221:16  */
  assign rot_akku = mcode_n217; // (signal)
  /* T80.vhd:222:16  */
  assign preservec = mcode_n218; // (signal)
  /* T80.vhd:223:16  */
  assign arith16 = mcode_n219; // (signal)
  /* T80.vhd:224:16  */
  assign set_addr_to = mcode_n220; // (signal)
  /* T80.vhd:225:16  */
  assign jump = mcode_n222; // (signal)
  /* T80.vhd:226:16  */
  assign jumpe = mcode_n223; // (signal)
  /* T80.vhd:227:16  */
  assign jumpxy = mcode_n224; // (signal)
  /* T80.vhd:228:16  */
  assign call = mcode_n225; // (signal)
  /* T80.vhd:229:16  */
  assign rstp = mcode_n226; // (signal)
  /* T80.vhd:230:16  */
  assign ldz = mcode_n227; // (signal)
  /* T80.vhd:231:16  */
  assign ldw = mcode_n228; // (signal)
  /* T80.vhd:232:16  */
  assign ldsphl = mcode_n229; // (signal)
  /* T80.vhd:233:16  */
  assign ldhlsp = mcode_n230; // (signal)
  /* T80.vhd:234:16  */
  assign addspdd = mcode_n231; // (signal)
  /* T80.vhd:235:16  */
  assign iorq_i = mcode_n221; // (signal)
  /* T80.vhd:236:16  */
  assign special_ld = mcode_n232; // (signal)
  /* T80.vhd:237:16  */
  assign exchangedh = mcode_n233; // (signal)
  /* T80.vhd:238:16  */
  assign exchangerp = mcode_n234; // (signal)
  /* T80.vhd:239:16  */
  assign exchangeaf = mcode_n235; // (signal)
  /* T80.vhd:240:16  */
  assign exchangers = mcode_n236; // (signal)
  /* T80.vhd:241:16  */
  assign i_djnz = mcode_n237; // (signal)
  /* T80.vhd:242:16  */
  assign i_cpl = mcode_n238; // (signal)
  /* T80.vhd:243:16  */
  assign i_ccf = mcode_n239; // (signal)
  /* T80.vhd:244:16  */
  assign i_scf = mcode_n240; // (signal)
  /* T80.vhd:245:16  */
  assign i_retn = mcode_n241; // (signal)
  /* T80.vhd:246:16  */
  assign i_bt = mcode_n242; // (signal)
  /* T80.vhd:247:16  */
  assign i_bc = mcode_n243; // (signal)
  /* T80.vhd:248:16  */
  assign i_btr = mcode_n244; // (signal)
  /* T80.vhd:249:16  */
  assign i_rld = mcode_n245; // (signal)
  /* T80.vhd:250:16  */
  assign i_rrd = mcode_n246; // (signal)
  /* T80.vhd:251:16  */
  assign i_rxdd = n2149; // (signal)
  /* T80.vhd:252:16  */
  assign i_inrc = mcode_n247; // (signal)
  /* T80.vhd:253:16  */
  assign i_mulub = mcode_n248; // (signal)
  /* T80.vhd:254:16  */
  assign i_mulu = mcode_n249; // (signal)
  /* T80.vhd:255:16  */
  assign setwz = mcode_n250; // (signal)
  /* T80.vhd:256:16  */
  assign setdi = mcode_n251; // (signal)
  /* T80.vhd:257:16  */
  assign setei = mcode_n252; // (signal)
  /* T80.vhd:258:16  */
  assign imode = mcode_n253; // (signal)
  /* T80.vhd:259:16  */
  assign halt = mcode_n254; // (signal)
  /* T80.vhd:260:16  */
  assign xybit_undoc = mcode_n258; // (signal)
  /* T80.vhd:261:16  */
  assign no_pc = mcode_n257; // (signal)
  /* T80.vhd:262:16  */
  assign dor = regs_n1638; // (signal)
  /* T80.vhd:266:25  */
  assign n174 = {inte_ff2, inte_ff1};
  /* T80.vhd:266:36  */
  assign n175 = {n174, istatus};
  /* T80.vhd:266:46  */
  assign n176 = {n175, dor};
  /* T80.vhd:266:52  */
  assign n177 = {n176, pc};
  /* T80.vhd:266:75  */
  assign n178 = {n177, sp};
  /* T80.vhd:266:98  */
  assign n179 = {n178, r};
  /* T80.vhd:266:120  */
  assign n180 = {n179, i};
  /* T80.vhd:266:124  */
  assign n181 = {n180, fp};
  /* T80.vhd:266:129  */
  assign n182 = {n181, ap};
  /* T80.vhd:266:134  */
  assign n183 = {n182, f};
  /* T80.vhd:266:138  */
  assign n184 = {n183, acc};
  /* T80.vhd:266:159  */
  assign n185 = ~alternate;
  /* T80.vhd:266:144  */
  assign n186 = n185 ? n184 : n204;
  /* T80.vhd:267:40  */
  assign n187 = {inte_ff2, inte_ff1};
  /* T80.vhd:267:51  */
  assign n188 = {n187, istatus};
  /* T80.vhd:267:66  */
  assign n189 = dor[127:112]; // extract
  /* T80.vhd:267:61  */
  assign n190 = {n188, n189};
  /* T80.vhd:267:88  */
  assign n191 = dor[47:0]; // extract
  /* T80.vhd:267:83  */
  assign n192 = {n190, n191};
  /* T80.vhd:267:107  */
  assign n193 = dor[63:48]; // extract
  /* T80.vhd:267:102  */
  assign n194 = {n192, n193};
  /* T80.vhd:267:127  */
  assign n195 = dor[111:64]; // extract
  /* T80.vhd:267:122  */
  assign n196 = {n194, n195};
  /* T80.vhd:267:143  */
  assign n197 = {n196, pc};
  /* T80.vhd:268:70  */
  assign n198 = {n197, sp};
  /* T80.vhd:268:93  */
  assign n199 = {n198, r};
  /* T80.vhd:268:115  */
  assign n200 = {n199, i};
  /* T80.vhd:268:119  */
  assign n201 = {n200, fp};
  /* T80.vhd:268:124  */
  assign n202 = {n201, ap};
  /* T80.vhd:268:129  */
  assign n203 = {n202, f};
  /* T80.vhd:268:133  */
  assign n204 = {n203, acc};
  /* T80.vhd:270:9  */
  t80_mcode_0_0_1_2_3_4_5_6_7 mcode (
    .ir(ir),
    .iset(iset),
    .mcycle(mcycle),
    .f(f),
    .nmicycle(nmicycle),
    .intcycle(intcycle),
    .xy_state(xy_state),
    .r800_mode(r800_mode),
    .mcycles(mcode_n205),
    .tstates(mcode_n206),
    .prefix(mcode_n207),
    .inc_pc(mcode_n208),
    .inc_wz(mcode_n209),
    .incdec_16(mcode_n210),
    .read_to_reg(mcode_n211),
    .read_to_acc(mcode_n212),
    .set_busa_to(mcode_n213),
    .set_busb_to(mcode_n214),
    .alu_op(mcode_n215),
    .save_alu(mcode_n216),
    .rot_akku(mcode_n217),
    .preservec(mcode_n218),
    .arith16(mcode_n219),
    .set_addr_to(mcode_n220),
    .iorq(mcode_n221),
    .jump(mcode_n222),
    .jumpe(mcode_n223),
    .jumpxy(mcode_n224),
    .call(mcode_n225),
    .rstp(mcode_n226),
    .ldz(mcode_n227),
    .ldw(mcode_n228),
    .ldsphl(mcode_n229),
    .ldhlsp(mcode_n230),
    .addspdd(mcode_n231),
    .special_ld(mcode_n232),
    .exchangedh(mcode_n233),
    .exchangerp(mcode_n234),
    .exchangeaf(mcode_n235),
    .exchangers(mcode_n236),
    .i_djnz(mcode_n237),
    .i_cpl(mcode_n238),
    .i_ccf(mcode_n239),
    .i_scf(mcode_n240),
    .i_retn(mcode_n241),
    .i_bt(mcode_n242),
    .i_bc(mcode_n243),
    .i_btr(mcode_n244),
    .i_rld(mcode_n245),
    .i_rrd(mcode_n246),
    .i_inrc(mcode_n247),
    .i_mulub(mcode_n248),
    .i_mulu(mcode_n249),
    .setwz(mcode_n250),
    .setdi(mcode_n251),
    .setei(mcode_n252),
    .imode(mcode_n253),
    .halt(mcode_n254),
    .noread(mcode_n255),
    .write(mcode_n256),
    .no_pc(mcode_n257),
    .xybit_undoc(mcode_n258));
  /* T80.vhd:363:38  */
  assign n367 = ir[5:0]; // extract
  /* T80.vhd:345:9  */
  t80_alu_0_0_1_2_3_4_5_6_7 alu (
    .arith16(arith16_r),
    .z16(z16_r),
    .wz(wz),
    .xy_state(xy_state),
    .alu_op(alu_op_r),
    .rot_akku(rot_akku),
    .ir(n367),
    .iset(iset),
    .busa(busa),
    .busb(busb),
    .f_in(f),
    .q(alu_n368),
    .f_out(alu_n369));
  /* T80.vhd:371:26  */
  assign n374 = ~busack;
  /* T80.vhd:371:22  */
  assign n375 = cen & n374;
  /* T80.vhd:373:34  */
  assign n377 = tstate == tstates;
  /* T80.vhd:373:22  */
  assign n378 = n377 ? 1'b1 : 1'b0;
  /* T80.vhd:375:46  */
  assign n382 = xy_state != 2'b00;
  /* T80.vhd:375:65  */
  assign n383 = ~xy_ind;
  /* T80.vhd:375:54  */
  assign n384 = n383 & n382;
  /* T80.vhd:376:71  */
  assign n386 = set_addr_to == 3'b010;
  /* T80.vhd:377:65  */
  assign n388 = mcycle == 3'b001;
  /* T80.vhd:377:80  */
  assign n390 = ir == 8'b11001011;
  /* T80.vhd:377:73  */
  assign n391 = n390 & n388;
  /* T80.vhd:376:78  */
  assign n392 = n386 | n391;
  /* T80.vhd:378:65  */
  assign n394 = mcycle == 3'b001;
  /* T80.vhd:378:80  */
  assign n396 = ir == 8'b00110110;
  /* T80.vhd:378:73  */
  assign n397 = n396 & n394;
  /* T80.vhd:377:94  */
  assign n398 = n392 | n397;
  /* T80.vhd:375:71  */
  assign n399 = n398 & n384;
  /* T80.vhd:375:32  */
  assign n400 = n399 ? 1'b1 : 1'b0;
  /* T80.vhd:380:26  */
  assign n402 = exchangerp ? busb : n404;
  /* T80.vhd:381:40  */
  assign n403 = ~save_alu_r;
  /* T80.vhd:380:48  */
  assign n404 = n403 ? di_reg : alu_q;
  /* T80.vhd:390:28  */
  assign n411 = ~reset_n;
  /* T80.vhd:428:43  */
  assign n413 = dir[7:0]; // extract
  /* T80.vhd:429:43  */
  assign n414 = dir[15:8]; // extract
  /* T80.vhd:430:43  */
  assign n415 = dir[23:16]; // extract
  /* T80.vhd:431:43  */
  assign n416 = dir[31:24]; // extract
  /* T80.vhd:432:43  */
  assign n417 = dir[39:32]; // extract
  /* T80.vhd:433:52  */
  assign n418 = dir[47:40]; // extract
  /* T80.vhd:434:52  */
  assign n419 = dir[63:48]; // extract
  /* T80.vhd:435:52  */
  assign n420 = dir[79:64]; // extract
  /* T80.vhd:436:41  */
  assign n421 = dir[79:64]; // extract
  /* T80.vhd:437:47  */
  assign n422 = dir[209:208]; // extract
  /* T80.vhd:446:60  */
  assign n424 = mcycle == 3'b011;
  /* T80.vhd:446:49  */
  assign n425 = n424 & ldhlsp;
  /* T80.vhd:446:79  */
  assign n427 = tstate == 3'b001;
  /* T80.vhd:446:68  */
  assign n428 = n427 & n425;
  /* T80.vhd:447:66  */
  assign n429 = sp[7:0]; // extract
  /* T80.vhd:447:63  */
  assign n431 = {1'b0, n429};
  /* T80.vhd:447:92  */
  assign n433 = {1'b0, save_mux};
  /* T80.vhd:447:79  */
  assign n434 = n431 + n433;
  /* T80.vhd:448:66  */
  assign n435 = sp[3:0]; // extract
  /* T80.vhd:448:63  */
  assign n437 = {1'b0, n435};
  /* T80.vhd:448:101  */
  assign n438 = save_mux[3:0]; // extract
  /* T80.vhd:448:92  */
  assign n440 = {1'b0, n438};
  /* T80.vhd:448:79  */
  assign n441 = n437 + n440;
  /* T80.vhd:451:60  */
  assign n444 = n441[4]; // extract
  /* T80.vhd:452:60  */
  assign n445 = n434[8]; // extract
  assign n446 = {1'b0, n445};
  assign n447 = f[1:0]; // extract
  /* T80.vhd:446:33  */
  assign n448 = n428 ? n446 : n447;
  assign n449 = f[4]; // extract
  /* T80.vhd:446:33  */
  assign n450 = n428 ? n444 : n449;
  assign n451 = f[6]; // extract
  /* T80.vhd:446:33  */
  assign n452 = n428 ? 1'b0 : n451;
  /* T80.vhd:455:61  */
  assign n456 = tstate == 3'b001;
  /* T80.vhd:455:50  */
  assign n457 = n456 & addspdd;
  /* T80.vhd:456:66  */
  assign n458 = sp[7:0]; // extract
  /* T80.vhd:456:63  */
  assign n460 = {1'b0, n458};
  /* T80.vhd:456:92  */
  assign n462 = {1'b0, save_mux};
  /* T80.vhd:456:79  */
  assign n463 = n460 + n462;
  /* T80.vhd:457:66  */
  assign n464 = sp[3:0]; // extract
  /* T80.vhd:457:63  */
  assign n466 = {1'b0, n464};
  /* T80.vhd:457:101  */
  assign n467 = save_mux[3:0]; // extract
  /* T80.vhd:457:92  */
  assign n469 = {1'b0, n467};
  /* T80.vhd:457:79  */
  assign n470 = n466 + n469;
  /* T80.vhd:460:60  */
  assign n473 = n470[4]; // extract
  /* T80.vhd:461:60  */
  assign n474 = n463[8]; // extract
  assign n475 = {1'b0, n474};
  /* T80.vhd:455:33  */
  assign n476 = n457 ? n475 : n448;
  /* T80.vhd:455:33  */
  assign n477 = n457 ? n473 : n450;
  /* T80.vhd:455:33  */
  assign n478 = n457 ? 1'b0 : n452;
  /* T80.vhd:466:45  */
  assign n482 = imode != 2'b11;
  /* T80.vhd:439:25  */
  assign n483 = n1155 ? imode : istatus;
  /* T80.vhd:472:41  */
  assign n485 = iset == 2'b10;
  /* T80.vhd:472:58  */
  assign n486 = alu_op[2]; // extract
  /* T80.vhd:472:62  */
  assign n487 = ~n486;
  /* T80.vhd:472:48  */
  assign n488 = n487 & n485;
  /* T80.vhd:472:78  */
  assign n489 = alu_op[0]; // extract
  /* T80.vhd:472:68  */
  assign n490 = n489 & n488;
  /* T80.vhd:472:99  */
  assign n492 = mcycle == 3'b011;
  /* T80.vhd:472:88  */
  assign n493 = n492 & n490;
  /* T80.vhd:472:33  */
  assign n496 = n493 ? 1'b1 : 1'b0;
  /* T80.vhd:478:44  */
  assign n498 = mcycle == 3'b001;
  /* T80.vhd:478:62  */
  assign n499 = tstate[2]; // extract
  /* T80.vhd:478:66  */
  assign n500 = ~n499;
  /* T80.vhd:478:52  */
  assign n501 = n500 & n498;
  /* T80.vhd:481:51  */
  assign n503 = tstate == 3'b010;
  /* T80.vhd:481:55  */
  assign n504 = wait_n & n503;
  /* T80.vhd:485:75  */
  assign n505 = r[6:0]; // extract
  /* T80.vhd:485:88  */
  assign n507 = n505 + 7'b0000001;
  /* T80.vhd:488:57  */
  assign n508 = ~jump;
  /* T80.vhd:488:72  */
  assign n509 = ~call;
  /* T80.vhd:488:63  */
  assign n510 = n509 & n508;
  /* T80.vhd:488:91  */
  assign n511 = ~nmicycle;
  /* T80.vhd:488:78  */
  assign n512 = n511 & n510;
  /* T80.vhd:488:110  */
  assign n513 = ~intcycle;
  /* T80.vhd:488:97  */
  assign n514 = n513 & n512;
  /* T80.vhd:488:139  */
  assign n515 = halt_ff | halt;
  /* T80.vhd:488:120  */
  assign n516 = ~n515;
  /* T80.vhd:488:116  */
  assign n517 = n516 & n514;
  /* T80.vhd:489:66  */
  assign n519 = pc + 16'b0000000000000001;
  /* T80.vhd:481:41  */
  assign n520 = n562 ? n519 : pc;
  /* T80.vhd:492:79  */
  assign n522 = istatus == 2'b01;
  /* T80.vhd:492:67  */
  assign n523 = n522 & intcycle;
  /* T80.vhd:494:100  */
  assign n525 = istatus == 2'b10;
  /* T80.vhd:494:88  */
  assign n526 = n525 & intcycle;
  /* T80.vhd:494:69  */
  assign n527 = halt_ff | n526;
  /* T80.vhd:494:108  */
  assign n528 = n527 | nmicycle;
  /* T80.vhd:494:49  */
  assign n530 = n528 ? 8'b00000000 : dinst;
  /* T80.vhd:492:49  */
  assign n532 = n523 ? 8'b11111111 : n530;
  /* T80.vhd:501:59  */
  assign n534 = prefix != 2'b00;
  /* T80.vhd:502:67  */
  assign n536 = prefix == 2'b11;
  /* T80.vhd:503:70  */
  assign n537 = ir[5]; // extract
  /* T80.vhd:503:65  */
  assign n540 = n537 ? 2'b10 : 2'b01;
  /* T80.vhd:509:75  */
  assign n542 = prefix == 2'b10;
  /* T80.vhd:509:65  */
  assign n544 = n542 ? 2'b00 : xy_state;
  /* T80.vhd:509:65  */
  assign n546 = n542 ? 1'b0 : xy_ind;
  /* T80.vhd:502:57  */
  assign n548 = n536 ? 2'b00 : prefix;
  /* T80.vhd:502:57  */
  assign n549 = n536 ? n540 : n544;
  /* T80.vhd:502:57  */
  assign n550 = n536 ? xy_ind : n546;
  /* T80.vhd:501:49  */
  assign n552 = n534 ? n548 : 2'b00;
  /* T80.vhd:501:49  */
  assign n555 = n534 ? n549 : 2'b00;
  /* T80.vhd:501:49  */
  assign n557 = n534 ? n550 : 1'b0;
  assign n558 = {i, r};
  /* T80.vhd:481:41  */
  assign n559 = n504 ? n558 : n2153;
  assign n560 = r[6:0]; // extract
  /* T80.vhd:478:33  */
  assign n561 = n915 ? n507 : n560;
  /* T80.vhd:481:41  */
  assign n562 = n517 & n504;
  /* T80.vhd:481:41  */
  assign n563 = n504 ? n532 : ir;
  /* T80.vhd:481:41  */
  assign n564 = n504 ? n552 : iset;
  /* T80.vhd:439:25  */
  assign n565 = n1156 ? n555 : xy_state;
  /* T80.vhd:481:41  */
  assign n566 = n504 ? n557 : xy_ind;
  /* T80.vhd:524:51  */
  assign n568 = mcycle == 3'b110;
  /* T80.vhd:526:59  */
  assign n570 = prefix == 2'b01;
  /* T80.vhd:524:41  */
  assign n572 = n573 ? 2'b01 : iset;
  /* T80.vhd:524:41  */
  assign n573 = n570 & n568;
  /* T80.vhd:524:41  */
  assign n575 = n568 ? 1'b1 : xy_ind;
  /* T80.vhd:532:64  */
  assign n576 = i_bt | i_bc;
  /* T80.vhd:532:72  */
  assign n577 = n576 | i_btr;
  /* T80.vhd:532:86  */
  assign n578 = ~no_btr;
  /* T80.vhd:532:82  */
  assign n579 = n577 & n578;
  /* T80.vhd:535:76  */
  assign n580 = wz[7:0]; // extract
  /* T80.vhd:537:86  */
  assign n581 = wz[7:0]; // extract
  /* T80.vhd:541:66  */
  assign n582 = call | rstp;
  /* T80.vhd:544:62  */
  assign n583 = mcycle == mcycles;
  /* T80.vhd:544:72  */
  assign n584 = nmicycle & n583;
  /* T80.vhd:547:78  */
  assign n586 = mcycle == 3'b011;
  /* T80.vhd:547:67  */
  assign n588 = n586 & 1'b1;
  /* T80.vhd:547:87  */
  assign n590 = n588 | 1'b0;
  /* T80.vhd:548:57  */
  assign n591 = intcycle & n590;
  /* T80.vhd:548:88  */
  assign n593 = istatus == 2'b10;
  /* T80.vhd:548:76  */
  assign n594 = n593 & n591;
  /* T80.vhd:550:76  */
  assign n595 = wz[7:0]; // extract
  /* T80.vhd:552:86  */
  assign n596 = wz[7:0]; // extract
  /* T80.vhd:556:77  */
  assign n598 = xy_state == 2'b00;
  /* T80.vhd:559:73  */
  assign n599 = nextis_xy_fetch ? pc : wz;
  /* T80.vhd:556:65  */
  assign n600 = n598 ? regbusc : n599;
  /* T80.vhd:555:57  */
  assign n602 = set_addr_to == 3'b010;
  /* T80.vhd:576:76  */
  assign n603 = {acc, di_reg};
  /* T80.vhd:576:86  */
  assign n606 = n603 + 16'b0000000000000001;
  /* T80.vhd:565:57  */
  assign n608 = set_addr_to == 3'b100;
  /* T80.vhd:577:57  */
  assign n610 = set_addr_to == 3'b101;
  /* T80.vhd:586:82  */
  assign n612 = setwz == 2'b01;
  /* T80.vhd:587:95  */
  assign n615 = regbusc + 16'b0000000000000001;
  /* T80.vhd:586:73  */
  assign n616 = n612 ? n615 : wz;
  /* T80.vhd:589:82  */
  assign n618 = setwz == 2'b10;
  /* T80.vhd:590:106  */
  assign n619 = regbusc[7:0]; // extract
  /* T80.vhd:590:119  */
  assign n622 = n619 + 8'b00000001;
  assign n623 = {acc, n622};
  /* T80.vhd:589:73  */
  assign n624 = n618 ? n623 : n616;
  /* T80.vhd:579:57  */
  assign n626 = set_addr_to == 3'b000;
  /* T80.vhd:596:74  */
  assign n628 = setwz == 2'b10;
  /* T80.vhd:597:98  */
  assign n629 = regbusc[7:0]; // extract
  /* T80.vhd:597:111  */
  assign n632 = n629 + 8'b00000001;
  assign n633 = {acc, n632};
  /* T80.vhd:596:65  */
  assign n634 = n628 ? n633 : wz;
  /* T80.vhd:594:57  */
  assign n636 = set_addr_to == 3'b001;
  /* T80.vhd:602:108  */
  assign n638 = wz + 16'b0000000000000001;
  /* T80.vhd:605:92  */
  assign n639 = wz[7:0]; // extract
  /* T80.vhd:606:82  */
  assign n641 = setwz == 2'b10;
  /* T80.vhd:607:101  */
  assign n642 = wz[7:0]; // extract
  /* T80.vhd:607:114  */
  assign n645 = n642 + 8'b00000001;
  assign n646 = {acc, n645};
  /* T80.vhd:606:73  */
  assign n647 = n641 ? n646 : wz;
  assign n648 = {di_reg, n639};
  /* T80.vhd:601:65  */
  assign n649 = inc_wz ? n638 : n648;
  /* T80.vhd:601:65  */
  assign n650 = inc_wz ? wz : n647;
  /* T80.vhd:600:57  */
  assign n652 = set_addr_to == 3'b110;
  /* T80.vhd:612:73  */
  assign n654 = iset == 2'b10;
  /* T80.vhd:612:86  */
  assign n655 = ir[7:4]; // extract
  /* T80.vhd:612:99  */
  assign n657 = n655 == 4'b1011;
  /* T80.vhd:612:80  */
  assign n658 = n657 & n654;
  /* T80.vhd:612:112  */
  assign n659 = ir[2:1]; // extract
  /* T80.vhd:612:125  */
  assign n661 = n659 == 2'b01;
  /* T80.vhd:612:106  */
  assign n662 = n661 & n658;
  /* T80.vhd:612:143  */
  assign n664 = mcycle == 3'b011;
  /* T80.vhd:612:132  */
  assign n665 = n664 & n662;
  /* T80.vhd:612:158  */
  assign n666 = ~no_btr;
  /* T80.vhd:612:147  */
  assign n667 = n666 & n665;
  /* T80.vhd:615:77  */
  assign n668 = ~no_pc;
  /* T80.vhd:615:83  */
  assign n669 = n668 | no_btr;
  /* T80.vhd:615:116  */
  assign n670 = incdecz & i_djnz;
  /* T80.vhd:615:99  */
  assign n671 = n669 | n670;
  /* T80.vhd:615:135  */
  assign n673 = n671 | 1'b0;
  /* T80.vhd:615:65  */
  assign n674 = n673 ? pc : n2153;
  /* T80.vhd:612:65  */
  assign n675 = n667 ? regbusa_r : n674;
  assign n676 = {n652, n636, n626, n610, n608, n602};
  assign n677 = n600[7:0]; // extract
  assign n678 = sp[7:0]; // extract
  assign n679 = regbusc[7:0]; // extract
  assign n680 = regbusc[7:0]; // extract
  assign n681 = n649[7:0]; // extract
  assign n682 = n675[7:0]; // extract
  /* T80.vhd:554:57  */
  always @*
    case (n676)
      6'b100000: n683 = n681;
      6'b010000: n683 = n680;
      6'b001000: n683 = n679;
      6'b000100: n683 = n678;
      6'b000010: n683 = di_reg;
      6'b000001: n683 = n677;
      default: n683 = n682;
    endcase
  assign n684 = n600[15:8]; // extract
  assign n685 = sp[15:8]; // extract
  assign n686 = regbusc[15:8]; // extract
  assign n687 = regbusc[15:8]; // extract
  assign n688 = n649[15:8]; // extract
  assign n689 = n675[15:8]; // extract
  /* T80.vhd:554:57  */
  always @*
    case (n676)
      6'b100000: n690 = n688;
      6'b010000: n690 = n687;
      6'b001000: n690 = n686;
      6'b000100: n690 = n685;
      6'b000010: n690 = acc;
      6'b000001: n690 = n684;
      default: n690 = n689;
    endcase
  /* T80.vhd:554:57  */
  always @*
    case (n676)
      6'b100000: n691 = n650;
      6'b010000: n691 = n634;
      6'b001000: n691 = n624;
      6'b000100: n691 = wz;
      6'b000010: n691 = n606;
      6'b000001: n691 = wz;
      default: n691 = wz;
    endcase
  assign n692 = {n690, n683};
  assign n693 = {i, n595};
  /* T80.vhd:547:49  */
  assign n694 = n594 ? n693 : n692;
  assign n695 = {i, n596};
  /* T80.vhd:547:49  */
  assign n696 = n594 ? n695 : pc;
  /* T80.vhd:547:49  */
  assign n697 = n594 ? wz : n691;
  /* T80.vhd:544:49  */
  assign n699 = n584 ? 16'b0000000001100110 : n694;
  /* T80.vhd:544:49  */
  assign n701 = n584 ? 16'b0000000001100110 : n696;
  /* T80.vhd:544:49  */
  assign n702 = n584 ? wz : n697;
  /* T80.vhd:541:49  */
  assign n703 = n582 ? wz : n699;
  /* T80.vhd:541:49  */
  assign n704 = n582 ? wz : n701;
  /* T80.vhd:541:49  */
  assign n705 = n582 ? wz : n702;
  /* T80.vhd:538:49  */
  assign n706 = jumpxy ? regbusc : n703;
  /* T80.vhd:538:49  */
  assign n707 = jumpxy ? regbusc : n704;
  /* T80.vhd:538:49  */
  assign n708 = jumpxy ? wz : n705;
  assign n709 = {di_reg, n580};
  /* T80.vhd:533:49  */
  assign n710 = jump ? n709 : n706;
  assign n711 = {di_reg, n581};
  /* T80.vhd:533:49  */
  assign n712 = jump ? n711 : n707;
  /* T80.vhd:533:49  */
  assign n713 = jump ? wz : n708;
  /* T80.vhd:621:58  */
  assign n715 = setwz == 2'b11;
  /* T80.vhd:621:49  */
  assign n716 = n715 ? id16 : n713;
  /* T80.vhd:650:72  */
  assign n717 = ~acc;
  /* T80.vhd:651:85  */
  assign n718 = acc[5]; // extract
  /* T80.vhd:651:78  */
  assign n719 = ~n718;
  /* T80.vhd:653:85  */
  assign n721 = acc[3]; // extract
  /* T80.vhd:653:78  */
  assign n722 = ~n721;
  /* T80.vhd:531:41  */
  assign n724 = n754 ? n717 : acc;
  assign n725 = {n719, 1'b1, n722};
  assign n726 = n476[1]; // extract
  /* T80.vhd:648:57  */
  assign n727 = i_cpl ? 1'b1 : n726;
  assign n728 = f[3]; // extract
  assign n729 = f[5]; // extract
  assign n730 = {n729, n477, n728};
  /* T80.vhd:648:57  */
  assign n731 = i_cpl ? n725 : n730;
  /* T80.vhd:658:83  */
  assign n732 = f[0]; // extract
  /* T80.vhd:658:78  */
  assign n733 = ~n732;
  /* T80.vhd:659:81  */
  assign n734 = acc[5]; // extract
  /* T80.vhd:660:79  */
  assign n735 = f[0]; // extract
  /* T80.vhd:661:81  */
  assign n736 = acc[3]; // extract
  assign n738 = {1'b0, n733};
  assign n739 = {n734, n735, n736};
  assign n740 = n476[0]; // extract
  assign n741 = {n727, n740};
  /* T80.vhd:656:57  */
  assign n742 = i_ccf ? n738 : n741;
  /* T80.vhd:656:57  */
  assign n743 = i_ccf ? n739 : n731;
  /* T80.vhd:667:81  */
  assign n745 = acc[5]; // extract
  /* T80.vhd:669:81  */
  assign n747 = acc[3]; // extract
  assign n749 = {1'b0, 1'b1};
  assign n750 = {n745, 1'b0, n747};
  /* T80.vhd:664:57  */
  assign n751 = i_scf ? n749 : n742;
  /* T80.vhd:664:57  */
  assign n752 = i_scf ? n750 : n743;
  /* T80.vhd:531:41  */
  assign n753 = t_res ? n710 : n2153;
  /* T80.vhd:531:41  */
  assign n754 = i_cpl & t_res;
  /* T80.vhd:531:41  */
  assign n755 = t_res ? n751 : n476;
  assign n756 = f[3]; // extract
  assign n757 = f[5]; // extract
  assign n758 = {n757, n477, n756};
  /* T80.vhd:531:41  */
  assign n759 = t_res ? n752 : n758;
  /* T80.vhd:531:41  */
  assign n760 = t_res ? n712 : pc;
  /* T80.vhd:531:41  */
  assign n761 = t_res ? n716 : wz;
  /* T80.vhd:531:41  */
  assign n762 = t_res ? n579 : btr_r;
  /* T80.vhd:531:41  */
  assign n764 = t_res ? alu_op : 4'b0000;
  /* T80.vhd:531:41  */
  assign n766 = t_res ? save_alu : 1'b0;
  /* T80.vhd:675:52  */
  assign n768 = tstate == 3'b010;
  /* T80.vhd:675:56  */
  assign n769 = i_btr & n768;
  /* T80.vhd:675:78  */
  assign n770 = ir[0]; // extract
  /* T80.vhd:675:72  */
  assign n771 = n770 & n769;
  /* T80.vhd:675:100  */
  assign n773 = tstate == 3'b001;
  /* T80.vhd:675:104  */
  assign n774 = i_btr & n773;
  /* T80.vhd:675:126  */
  assign n775 = ir[0]; // extract
  /* T80.vhd:675:130  */
  assign n776 = ~n775;
  /* T80.vhd:675:120  */
  assign n777 = n776 & n774;
  /* T80.vhd:675:89  */
  assign n778 = n771 | n777;
  /* T80.vhd:676:61  */
  assign n780 = {1'b0, di_reg};
  /* T80.vhd:676:101  */
  assign n781 = id16[7:0]; // extract
  /* T80.vhd:676:78  */
  assign n783 = {1'b0, n781};
  /* T80.vhd:676:71  */
  assign n784 = n780 + n783;
  /* T80.vhd:677:68  */
  assign n785 = di_reg[7]; // extract
  /* T80.vhd:678:65  */
  assign n786 = n784[8]; // extract
  /* T80.vhd:679:65  */
  assign n787 = n784[8]; // extract
  /* T80.vhd:680:61  */
  assign n789 = n784 & 9'b000000111;
  /* T80.vhd:680:86  */
  assign n791 = {1'b0, busa};
  /* T80.vhd:680:78  */
  assign n792 = n789 ^ n791;
  /* T80.vhd:681:70  */
  assign n793 = n792[0]; // extract
  /* T80.vhd:681:81  */
  assign n794 = n792[1]; // extract
  /* T80.vhd:681:74  */
  assign n795 = n793 ^ n794;
  /* T80.vhd:681:92  */
  assign n796 = n792[2]; // extract
  /* T80.vhd:681:85  */
  assign n797 = n795 ^ n796;
  /* T80.vhd:681:103  */
  assign n798 = n792[3]; // extract
  /* T80.vhd:681:96  */
  assign n799 = n797 ^ n798;
  /* T80.vhd:681:114  */
  assign n800 = n792[4]; // extract
  /* T80.vhd:681:107  */
  assign n801 = n799 ^ n800;
  /* T80.vhd:681:125  */
  assign n802 = n792[5]; // extract
  /* T80.vhd:681:118  */
  assign n803 = n801 ^ n802;
  /* T80.vhd:681:136  */
  assign n804 = n792[6]; // extract
  /* T80.vhd:681:129  */
  assign n805 = n803 ^ n804;
  /* T80.vhd:681:147  */
  assign n806 = n792[7]; // extract
  /* T80.vhd:681:140  */
  assign n807 = n805 ^ n806;
  /* T80.vhd:681:62  */
  assign n808 = ~n807;
  assign n809 = {n808, n785, n786};
  assign n810 = f[2]; // extract
  assign n811 = {n810, n755};
  /* T80.vhd:675:41  */
  assign n812 = n778 ? n809 : n811;
  assign n813 = n759[1]; // extract
  /* T80.vhd:675:41  */
  assign n814 = n778 ? n787 : n813;
  assign n815 = n759[2]; // extract
  assign n816 = n759[0]; // extract
  /* T80.vhd:684:51  */
  assign n819 = tstate == 3'b010;
  /* T80.vhd:684:55  */
  assign n820 = wait_n & n819;
  /* T80.vhd:685:57  */
  assign n822 = iset == 2'b01;
  /* T80.vhd:685:75  */
  assign n824 = mcycle == 3'b111;
  /* T80.vhd:685:64  */
  assign n825 = n824 & n822;
  /* T80.vhd:684:41  */
  assign n826 = n847 ? dinst : ir;
  /* T80.vhd:689:83  */
  assign n827 = {{8{di_reg[7]}}, di_reg}; // sext
  /* T80.vhd:689:83  */
  assign n828 = pc + n827;
  /* T80.vhd:690:91  */
  assign n829 = {{8{di_reg[7]}}, di_reg}; // sext
  /* T80.vhd:690:91  */
  assign n830 = pc + n829;
  /* T80.vhd:692:66  */
  assign n832 = pc + 16'b0000000000000001;
  /* T80.vhd:691:49  */
  assign n833 = inc_pc ? n832 : n760;
  /* T80.vhd:688:49  */
  assign n834 = jumpe ? n828 : n833;
  /* T80.vhd:688:49  */
  assign n835 = jumpe ? n830 : n761;
  /* T80.vhd:695:66  */
  assign n837 = pc - 16'b0000000000000010;
  /* T80.vhd:694:49  */
  assign n838 = btr_r ? n837 : n834;
  /* T80.vhd:699:77  */
  assign n839 = ir[5:3]; // extract
  assign n841 = n840[15:6]; // extract
  assign n842 = n840[2:0]; // extract
  assign n843 = {n841, n839, n842};
  /* T80.vhd:697:49  */
  assign n844 = rstp ? n843 : n835;
  /* T80.vhd:684:41  */
  assign n845 = n820 ? n838 : n760;
  /* T80.vhd:684:41  */
  assign n846 = n820 ? n844 : n761;
  /* T80.vhd:684:41  */
  assign n847 = n825 & n820;
  /* T80.vhd:702:51  */
  assign n849 = tstate == 3'b011;
  /* T80.vhd:702:66  */
  assign n851 = mcycle == 3'b110;
  /* T80.vhd:702:55  */
  assign n852 = n851 & n849;
  /* T80.vhd:703:88  */
  assign n853 = {{8{di_reg[7]}}, di_reg}; // sext
  /* T80.vhd:703:88  */
  assign n854 = regbusc + n853;
  /* T80.vhd:702:41  */
  assign n855 = n852 ? n854 : n846;
  /* T80.vhd:706:51  */
  assign n857 = mcycle == 3'b011;
  /* T80.vhd:706:70  */
  assign n859 = tstate == 3'b100;
  /* T80.vhd:706:59  */
  assign n860 = n859 & n857;
  /* T80.vhd:706:85  */
  assign n861 = ~no_btr;
  /* T80.vhd:706:74  */
  assign n862 = n861 & n860;
  /* T80.vhd:707:63  */
  assign n863 = i_bt | i_bc;
  /* T80.vhd:708:83  */
  assign n866 = pc - 16'b0000000000000001;
  /* T80.vhd:706:41  */
  assign n867 = n868 ? n866 : n855;
  /* T80.vhd:706:41  */
  assign n868 = n863 & n862;
  /* T80.vhd:712:52  */
  assign n870 = tstate == 3'b010;
  /* T80.vhd:712:56  */
  assign n871 = wait_n & n870;
  /* T80.vhd:712:85  */
  assign n873 = tstate == 3'b100;
  /* T80.vhd:712:100  */
  assign n875 = mcycle == 3'b001;
  /* T80.vhd:712:89  */
  assign n876 = n875 & n873;
  /* T80.vhd:712:74  */
  assign n877 = n871 | n876;
  /* T80.vhd:713:61  */
  assign n878 = incdec_16[2:0]; // extract
  /* T80.vhd:713:74  */
  assign n880 = n878 == 3'b111;
  /* T80.vhd:714:69  */
  assign n881 = incdec_16[3]; // extract
  /* T80.vhd:715:74  */
  assign n883 = sp - 16'b0000000000000001;
  /* T80.vhd:717:74  */
  assign n885 = sp + 16'b0000000000000001;
  /* T80.vhd:714:57  */
  assign n886 = n881 ? n883 : n885;
  /* T80.vhd:712:41  */
  assign n887 = n888 ? n886 : sp;
  /* T80.vhd:712:41  */
  assign n888 = n880 & n877;
  /* T80.vhd:722:69  */
  assign n890 = tstate == 3'b010;
  /* T80.vhd:722:58  */
  assign n891 = n890 & addspdd;
  /* T80.vhd:724:74  */
  assign n892 = {{8{save_mux[7]}}, save_mux}; // sext
  /* T80.vhd:724:74  */
  assign n893 = sp + n892;
  /* T80.vhd:722:41  */
  assign n894 = n891 ? n893 : n887;
  /* T80.vhd:722:41  */
  assign n895 = n891 ? sp : n867;
  /* T80.vhd:727:41  */
  assign n896 = ldsphl ? regbusc : n894;
  /* T80.vhd:730:41  */
  assign n897 = exchangeaf ? ap : n724;
  assign n898 = f[7]; // extract
  assign n899 = {n898, n478, n815, n814, n816, n812};
  /* T80.vhd:730:41  */
  assign n900 = exchangeaf ? fp : n899;
  /* T80.vhd:730:41  */
  assign n901 = exchangeaf ? acc : ap;
  /* T80.vhd:730:41  */
  assign n902 = exchangeaf ? f : fp;
  /* T80.vhd:737:62  */
  assign n903 = ~alternate;
  /* T80.vhd:736:41  */
  assign n904 = exchangers ? n903 : alternate;
  /* T80.vhd:478:33  */
  assign n905 = n501 ? n559 : n753;
  /* T80.vhd:478:33  */
  assign n906 = n501 ? acc : n897;
  assign n907 = f[3:2]; // extract
  assign n908 = f[5]; // extract
  assign n909 = f[7]; // extract
  assign n910 = {n909, n478, n908, n477, n907, n476};
  /* T80.vhd:478:33  */
  assign n911 = n501 ? n910 : n900;
  /* T80.vhd:478:33  */
  assign n912 = n501 ? ap : n901;
  /* T80.vhd:478:33  */
  assign n913 = n501 ? fp : n902;
  /* T80.vhd:478:33  */
  assign n915 = n504 & n501;
  /* T80.vhd:478:33  */
  assign n916 = n501 ? sp : n896;
  /* T80.vhd:478:33  */
  assign n917 = n501 ? n520 : n845;
  /* T80.vhd:478:33  */
  assign n918 = n501 ? alternate : n904;
  /* T80.vhd:478:33  */
  assign n919 = n501 ? wz : n895;
  /* T80.vhd:478:33  */
  assign n920 = n501 ? n563 : n826;
  /* T80.vhd:478:33  */
  assign n921 = n501 ? n564 : n572;
  /* T80.vhd:478:33  */
  assign n922 = n504 & n501;
  /* T80.vhd:478:33  */
  assign n923 = n501 ? n566 : n575;
  /* T80.vhd:478:33  */
  assign n924 = n501 ? btr_r : n762;
  /* T80.vhd:478:33  */
  assign n926 = n501 ? 4'b0000 : n764;
  /* T80.vhd:478:33  */
  assign n929 = n501 ? 1'b0 : n766;
  /* T80.vhd:741:43  */
  assign n933 = tstate == 3'b011;
  assign n934 = n919[7:0]; // extract
  /* T80.vhd:742:41  */
  assign n935 = ldz ? di_reg : n934;
  assign n936 = n919[15:8]; // extract
  /* T80.vhd:745:41  */
  assign n937 = ldw ? di_reg : n936;
  /* T80.vhd:749:54  */
  assign n938 = special_ld[2]; // extract
  /* T80.vhd:750:64  */
  assign n939 = special_ld[1:0]; // extract
  /* T80.vhd:754:71  */
  assign n940 = i[7]; // extract
  /* T80.vhd:756:62  */
  assign n942 = i == 8'b00000000;
  /* T80.vhd:756:57  */
  assign n945 = n942 ? 1'b1 : 1'b0;
  /* T80.vhd:762:71  */
  assign n946 = i[5]; // extract
  /* T80.vhd:764:71  */
  assign n948 = i[3]; // extract
  /* T80.vhd:751:49  */
  assign n951 = n939 == 2'b00;
  /* T80.vhd:771:71  */
  assign n952 = r[7]; // extract
  /* T80.vhd:773:62  */
  assign n954 = r == 8'b00000000;
  /* T80.vhd:773:57  */
  assign n957 = n954 ? 1'b1 : 1'b0;
  /* T80.vhd:779:71  */
  assign n958 = r[5]; // extract
  /* T80.vhd:781:71  */
  assign n960 = r[3]; // extract
  /* T80.vhd:768:49  */
  assign n963 = n939 == 2'b01;
  /* T80.vhd:784:49  */
  assign n965 = n939 == 2'b10;
  assign n966 = {n965, n963, n951};
  /* T80.vhd:750:49  */
  always @*
    case (n966)
      3'b100: n967 = n906;
      3'b010: n967 = r;
      3'b001: n967 = i;
      default: n967 = n906;
    endcase
  assign n968 = n911[1]; // extract
  /* T80.vhd:750:49  */
  always @*
    case (n966)
      3'b100: n969 = n968;
      3'b010: n969 = 1'b0;
      3'b001: n969 = 1'b0;
      default: n969 = n968;
    endcase
  assign n970 = n911[2]; // extract
  /* T80.vhd:750:49  */
  always @*
    case (n966)
      3'b100: n971 = n970;
      3'b010: n971 = inte_ff2;
      3'b001: n971 = inte_ff2;
      default: n971 = n970;
    endcase
  assign n972 = n911[3]; // extract
  /* T80.vhd:750:49  */
  always @*
    case (n966)
      3'b100: n973 = n972;
      3'b010: n973 = n960;
      3'b001: n973 = n948;
      default: n973 = n972;
    endcase
  assign n974 = n911[4]; // extract
  /* T80.vhd:750:49  */
  always @*
    case (n966)
      3'b100: n975 = n974;
      3'b010: n975 = 1'b0;
      3'b001: n975 = 1'b0;
      default: n975 = n974;
    endcase
  assign n976 = n911[5]; // extract
  /* T80.vhd:750:49  */
  always @*
    case (n966)
      3'b100: n977 = n976;
      3'b010: n977 = n958;
      3'b001: n977 = n946;
      default: n977 = n976;
    endcase
  assign n978 = n911[6]; // extract
  /* T80.vhd:750:49  */
  always @*
    case (n966)
      3'b100: n979 = n978;
      3'b010: n979 = n957;
      3'b001: n979 = n945;
      default: n979 = n978;
    endcase
  assign n980 = n911[7]; // extract
  /* T80.vhd:750:49  */
  always @*
    case (n966)
      3'b100: n981 = n980;
      3'b010: n981 = n952;
      3'b001: n981 = n940;
      default: n981 = n980;
    endcase
  /* T80.vhd:750:49  */
  always @*
    case (n966)
      3'b100: n982 = acc;
      3'b010: n982 = i;
      3'b001: n982 = i;
      default: n982 = i;
    endcase
  assign n983 = r[7]; // extract
  assign n984 = {n983, n561};
  /* T80.vhd:750:49  */
  always @*
    case (n966)
      3'b100: n985 = n984;
      3'b010: n985 = n984;
      3'b001: n985 = n984;
      default: n985 = acc;
    endcase
  /* T80.vhd:741:33  */
  assign n986 = n994 ? n967 : n906;
  assign n987 = {n981, n979, n977, n975, n973, n971, n969};
  assign n988 = n911[7:1]; // extract
  /* T80.vhd:741:33  */
  assign n989 = n996 ? n987 : n988;
  /* T80.vhd:439:25  */
  assign n990 = n1147 ? n982 : i;
  assign n991 = r[7]; // extract
  assign n992 = {n991, n561};
  /* T80.vhd:749:41  */
  assign n993 = n938 ? n985 : n992;
  /* T80.vhd:741:33  */
  assign n994 = n938 & n933;
  /* T80.vhd:741:33  */
  assign n996 = n938 & n933;
  assign n997 = n911[0]; // extract
  /* T80.vhd:741:33  */
  assign n998 = n938 & n933;
  assign n999 = r[7]; // extract
  assign n1000 = {n999, n561};
  /* T80.vhd:741:33  */
  assign n1001 = n933 ? n993 : n1000;
  assign n1002 = {n937, n935};
  /* T80.vhd:741:33  */
  assign n1003 = n933 ? n1002 : n919;
  /* T80.vhd:792:44  */
  assign n1004 = ~i_djnz;
  /* T80.vhd:792:50  */
  assign n1005 = save_alu_r & n1004;
  /* T80.vhd:792:84  */
  assign n1007 = alu_op_r == 4'b1001;
  /* T80.vhd:792:72  */
  assign n1008 = n1005 | n1007;
  /* T80.vhd:801:71  */
  assign n1009 = f_out[7:1]; // extract
  /* T80.vhd:802:64  */
  assign n1010 = ~preservec_r;
  /* T80.vhd:803:75  */
  assign n1011 = f_out[0]; // extract
  /* T80.vhd:802:49  */
  assign n1012 = n1010 ? n1011 : n997;
  assign n1013 = {n1009, n1012};
  assign n1014 = {n989, n997};
  /* T80.vhd:792:33  */
  assign n1015 = n1008 ? n1013 : n1014;
  /* T80.vhd:807:48  */
  assign n1016 = i_inrc & t_res;
  /* T80.vhd:810:60  */
  assign n1019 = di_reg[3]; // extract
  /* T80.vhd:811:60  */
  assign n1020 = di_reg[5]; // extract
  /* T80.vhd:812:63  */
  assign n1022 = di_reg == 8'b00000000;
  /* T80.vhd:812:41  */
  assign n1025 = n1022 ? 1'b1 : 1'b0;
  /* T80.vhd:817:60  */
  assign n1026 = di_reg[7]; // extract
  /* T80.vhd:818:65  */
  assign n1027 = di_reg[0]; // extract
  /* T80.vhd:818:79  */
  assign n1028 = di_reg[1]; // extract
  /* T80.vhd:818:69  */
  assign n1029 = n1027 ^ n1028;
  /* T80.vhd:818:93  */
  assign n1030 = di_reg[2]; // extract
  /* T80.vhd:818:83  */
  assign n1031 = n1029 ^ n1030;
  /* T80.vhd:818:107  */
  assign n1032 = di_reg[3]; // extract
  /* T80.vhd:818:97  */
  assign n1033 = n1031 ^ n1032;
  /* T80.vhd:819:55  */
  assign n1034 = di_reg[4]; // extract
  /* T80.vhd:818:111  */
  assign n1035 = n1033 ^ n1034;
  /* T80.vhd:819:69  */
  assign n1036 = di_reg[5]; // extract
  /* T80.vhd:819:59  */
  assign n1037 = n1035 ^ n1036;
  /* T80.vhd:819:83  */
  assign n1038 = di_reg[6]; // extract
  /* T80.vhd:819:73  */
  assign n1039 = n1037 ^ n1038;
  /* T80.vhd:819:97  */
  assign n1040 = di_reg[7]; // extract
  /* T80.vhd:819:87  */
  assign n1041 = n1039 ^ n1040;
  /* T80.vhd:818:54  */
  assign n1042 = ~n1041;
  assign n1043 = {n1026, n1025, n1020, 1'b0, n1019, n1042, 1'b0};
  assign n1044 = n1015[7:1]; // extract
  /* T80.vhd:807:33  */
  assign n1045 = n1016 ? n1043 : n1044;
  assign n1046 = n1015[0]; // extract
  /* T80.vhd:822:43  */
  assign n1048 = tstate == 3'b001;
  /* T80.vhd:822:64  */
  assign n1049 = ~auto_wait_t1;
  /* T80.vhd:822:47  */
  assign n1050 = n1049 & n1048;
  /* T80.vhd:824:57  */
  assign n1051 = i_rld | i_rrd;
  /* T80.vhd:825:50  */
  assign n1052 = ~i_rxdd;
  /* T80.vhd:825:41  */
  assign n1053 = n1052 ? busb : n2154;
  /* T80.vhd:829:71  */
  assign n1054 = busa[3:0]; // extract
  /* T80.vhd:830:71  */
  assign n1055 = busb[3:0]; // extract
  assign n1056 = {n1055, n1054};
  /* T80.vhd:828:41  */
  assign n1057 = i_rld ? n1056 : n1053;
  /* T80.vhd:833:71  */
  assign n1058 = busb[7:4]; // extract
  /* T80.vhd:834:71  */
  assign n1059 = busa[3:0]; // extract
  assign n1060 = {n1059, n1058};
  /* T80.vhd:832:41  */
  assign n1061 = i_rrd ? n1060 : n1057;
  /* T80.vhd:822:33  */
  assign n1062 = n1050 ? n1061 : n2154;
  /* T80.vhd:439:25  */
  assign n1063 = n1166 ? n1051 : i_rxdd;
  assign n1066 = {1'b1, 4'b0111};
  assign n1067 = {read_to_reg, set_busa_to};
  /* T80.vhd:841:41  */
  assign n1068 = read_to_acc ? n1066 : n1067;
  /* T80.vhd:838:33  */
  assign n1070 = t_res ? n1068 : 5'b00000;
  /* T80.vhd:847:43  */
  assign n1073 = tstate == 3'b001;
  /* T80.vhd:847:47  */
  assign n1074 = i_bt & n1073;
  /* T80.vhd:848:59  */
  assign n1075 = alu_q[3]; // extract
  /* T80.vhd:849:59  */
  assign n1076 = alu_q[1]; // extract
  assign n1079 = {n1076, 1'b0, n1075};
  assign n1080 = n1045[0]; // extract
  /* T80.vhd:847:33  */
  assign n1081 = n1074 ? 1'b0 : n1080;
  assign n1082 = n1045[4:2]; // extract
  /* T80.vhd:847:33  */
  assign n1083 = n1074 ? n1079 : n1082;
  assign n1085 = n1045[6:5]; // extract
  assign n1086 = n1045[1]; // extract
  /* T80.vhd:853:43  */
  assign n1088 = tstate == 3'b001;
  /* T80.vhd:853:47  */
  assign n1089 = i_bc & n1088;
  /* T80.vhd:854:72  */
  assign n1090 = f_out[4]; // extract
  /* T80.vhd:854:65  */
  assign n1092 = {7'b0000000, n1090};
  /* T80.vhd:854:52  */
  assign n1093 = alu_q - n1092;
  /* T80.vhd:855:55  */
  assign n1094 = n1093[3]; // extract
  /* T80.vhd:856:55  */
  assign n1095 = n1093[1]; // extract
  assign n1096 = n1083[0]; // extract
  /* T80.vhd:853:33  */
  assign n1097 = n1089 ? n1094 : n1096;
  assign n1098 = n1083[2]; // extract
  /* T80.vhd:853:33  */
  assign n1099 = n1089 ? n1095 : n1098;
  assign n1101 = n1083[1]; // extract
  /* T80.vhd:858:47  */
  assign n1103 = i_bc | i_bt;
  /* T80.vhd:858:33  */
  assign n1104 = n1103 ? incdecz : n1086;
  /* T80.vhd:862:44  */
  assign n1106 = tstate == 3'b001;
  /* T80.vhd:862:63  */
  assign n1107 = ~save_alu_r;
  /* T80.vhd:862:48  */
  assign n1108 = n1107 & n1106;
  /* T80.vhd:862:86  */
  assign n1109 = ~auto_wait_t1;
  /* T80.vhd:862:69  */
  assign n1110 = n1109 & n1108;
  /* T80.vhd:863:72  */
  assign n1112 = alu_op_r != 4'b0111;
  /* T80.vhd:863:59  */
  assign n1113 = n1112 & save_alu_r;
  /* T80.vhd:862:93  */
  assign n1114 = n1110 | n1113;
  /* T80.vhd:865:41  */
  assign n1116 = read_to_reg_r == 5'b10111;
  /* T80.vhd:867:41  */
  assign n1118 = read_to_reg_r == 5'b10110;
  /* T80.vhd:869:41  */
  assign n1120 = read_to_reg_r == 5'b11000;
  /* T80.vhd:871:41  */
  assign n1122 = read_to_reg_r == 5'b11001;
  /* T80.vhd:873:41  */
  assign n1124 = read_to_reg_r == 5'b11011;
  assign n1125 = {n1124, n1122, n1120, n1118, n1116};
  /* T80.vhd:864:41  */
  always @*
    case (n1125)
      5'b10000: n1126 = n1062;
      5'b01000: n1126 = n1062;
      5'b00100: n1126 = n1062;
      5'b00010: n1126 = save_mux;
      5'b00001: n1126 = n1062;
      default: n1126 = n1062;
    endcase
  /* T80.vhd:864:41  */
  always @*
    case (n1125)
      5'b10000: n1127 = n986;
      5'b01000: n1127 = n986;
      5'b00100: n1127 = n986;
      5'b00010: n1127 = n986;
      5'b00001: n1127 = save_mux;
      default: n1127 = n986;
    endcase
  assign n1128 = {n1085, n1099, n1101, n1097, n1104, n1081, n1046};
  /* T80.vhd:864:41  */
  always @*
    case (n1125)
      5'b10000: n1129 = save_mux;
      5'b01000: n1129 = n1128;
      5'b00100: n1129 = n1128;
      5'b00010: n1129 = n1128;
      5'b00001: n1129 = n1128;
      default: n1129 = n1128;
    endcase
  assign n1130 = n916[7:0]; // extract
  /* T80.vhd:864:41  */
  always @*
    case (n1125)
      5'b10000: n1131 = n1130;
      5'b01000: n1131 = n1130;
      5'b00100: n1131 = save_mux;
      5'b00010: n1131 = n1130;
      5'b00001: n1131 = n1130;
      default: n1131 = n1130;
    endcase
  assign n1132 = n916[15:8]; // extract
  /* T80.vhd:864:41  */
  always @*
    case (n1125)
      5'b10000: n1133 = n1132;
      5'b01000: n1133 = save_mux;
      5'b00100: n1133 = n1132;
      5'b00010: n1133 = n1132;
      5'b00001: n1133 = n1132;
      default: n1133 = n1132;
    endcase
  /* T80.vhd:882:41  */
  assign n1134 = xybit_undoc ? alu_q : n1126;
  /* T80.vhd:862:33  */
  assign n1135 = n1114 ? n1134 : n1062;
  /* T80.vhd:862:33  */
  assign n1136 = n1114 ? n1127 : n986;
  assign n1137 = {n1085, n1099, n1101, n1097, n1104, n1081, n1046};
  /* T80.vhd:862:33  */
  assign n1138 = n1114 ? n1129 : n1137;
  assign n1139 = {n1133, n1131};
  /* T80.vhd:862:33  */
  assign n1140 = n1114 ? n1139 : n916;
  /* T80.vhd:439:25  */
  assign n1141 = clken ? n905 : n2153;
  /* T80.vhd:439:25  */
  assign n1142 = clken ? n1135 : n2154;
  /* T80.vhd:439:25  */
  assign n1143 = clken ? n1136 : acc;
  /* T80.vhd:439:25  */
  assign n1144 = clken ? n1138 : f;
  /* T80.vhd:439:25  */
  assign n1145 = clken ? n912 : ap;
  /* T80.vhd:439:25  */
  assign n1146 = clken ? n913 : fp;
  /* T80.vhd:439:25  */
  assign n1147 = n998 & clken;
  /* T80.vhd:439:25  */
  assign n1148 = clken ? n1001 : r;
  /* T80.vhd:439:25  */
  assign n1149 = clken ? n1140 : sp;
  /* T80.vhd:439:25  */
  assign n1150 = clken ? n917 : pc;
  /* T80.vhd:439:25  */
  assign n1151 = clken ? n918 : alternate;
  /* T80.vhd:439:25  */
  assign n1152 = clken ? n1003 : wz;
  /* T80.vhd:439:25  */
  assign n1153 = clken ? n920 : ir;
  /* T80.vhd:439:25  */
  assign n1154 = clken ? n921 : iset;
  /* T80.vhd:439:25  */
  assign n1155 = n482 & clken;
  /* T80.vhd:439:25  */
  assign n1156 = n922 & clken;
  /* T80.vhd:439:25  */
  assign n1157 = clken ? n923 : xy_ind;
  /* T80.vhd:439:25  */
  assign n1158 = clken ? n924 : btr_r;
  /* T80.vhd:439:25  */
  assign n1159 = clken ? n1070 : read_to_reg_r;
  /* T80.vhd:439:25  */
  assign n1160 = clken ? arith16 : arith16_r;
  /* T80.vhd:439:25  */
  assign n1161 = clken ? n496 : z16_r;
  /* T80.vhd:439:25  */
  assign n1162 = clken ? n926 : alu_op_r;
  /* T80.vhd:439:25  */
  assign n1163 = clken ? n929 : save_alu_r;
  /* T80.vhd:439:25  */
  assign n1164 = clken ? preservec : preservec_r;
  /* T80.vhd:439:25  */
  assign n1165 = clken ? mcycles_d : mcycles;
  /* T80.vhd:439:25  */
  assign n1166 = n1050 & clken;
  /* T80.vhd:427:25  */
  assign n1171 = dirset ? n421 : n1141;
  /* T80.vhd:427:25  */
  assign n1172 = dirset ? n2154 : n1142;
  /* T80.vhd:427:25  */
  assign n1173 = dirset ? n413 : n1143;
  /* T80.vhd:427:25  */
  assign n1174 = dirset ? n414 : n1144;
  /* T80.vhd:427:25  */
  assign n1175 = dirset ? n415 : n1145;
  /* T80.vhd:427:25  */
  assign n1176 = dirset ? n416 : n1146;
  /* T80.vhd:427:25  */
  assign n1177 = dirset ? n417 : n990;
  /* T80.vhd:427:25  */
  assign n1178 = dirset ? n418 : n1148;
  /* T80.vhd:427:25  */
  assign n1179 = dirset ? n419 : n1149;
  /* T80.vhd:427:25  */
  assign n1180 = dirset ? n420 : n1150;
  /* T80.vhd:427:25  */
  assign n1181 = dirset ? alternate : n1151;
  /* T80.vhd:427:25  */
  assign n1182 = dirset ? wz : n1152;
  /* T80.vhd:427:25  */
  assign n1183 = dirset ? ir : n1153;
  /* T80.vhd:427:25  */
  assign n1184 = dirset ? iset : n1154;
  /* T80.vhd:427:25  */
  assign n1185 = dirset ? n422 : n483;
  /* T80.vhd:427:25  */
  assign n1186 = dirset ? xy_state : n565;
  /* T80.vhd:427:25  */
  assign n1187 = dirset ? xy_ind : n1157;
  /* T80.vhd:427:25  */
  assign n1188 = dirset ? btr_r : n1158;
  /* T80.vhd:427:25  */
  assign n1189 = dirset ? read_to_reg_r : n1159;
  /* T80.vhd:427:25  */
  assign n1190 = dirset ? arith16_r : n1160;
  /* T80.vhd:427:25  */
  assign n1191 = dirset ? z16_r : n1161;
  /* T80.vhd:427:25  */
  assign n1192 = dirset ? alu_op_r : n1162;
  /* T80.vhd:427:25  */
  assign n1193 = dirset ? save_alu_r : n1163;
  /* T80.vhd:427:25  */
  assign n1194 = dirset ? preservec_r : n1164;
  /* T80.vhd:427:25  */
  assign n1195 = dirset ? mcycles : n1165;
  /* T80.vhd:427:25  */
  assign n1196 = dirset ? i_rxdd : n1063;
  /* T80.vhd:898:102  */
  assign n1302 = mulu_prod32[3:0]; // extract
  /* T80.vhd:898:81  */
  assign n1303 = {4'b0, mulu_fakt1};  //  uext
  /* T80.vhd:898:81  */
  assign n1304 = {16'b0, n1302};  //  uext
  /* T80.vhd:898:81  */
  assign n1305 = n1303 * n1304; // umul
  /* T80.vhd:898:144  */
  assign n1306 = mulu_prod32[31:16]; // extract
  /* T80.vhd:898:132  */
  assign n1308 = {4'b0000, n1306};
  /* T80.vhd:898:116  */
  assign n1309 = n1305 + n1308;
  /* T80.vhd:899:53  */
  assign n1310 = mulu_prod32[15:4]; // extract
  /* T80.vhd:909:63  */
  assign n1315 = set_busb_to[0]; // extract
  /* T80.vhd:910:91  */
  assign n1316 = regbusb[7:0]; // extract
  /* T80.vhd:912:91  */
  assign n1317 = regbusb[15:8]; // extract
  /* T80.vhd:909:49  */
  assign n1318 = n1315 ? n1316 : n1317;
  assign n1320 = {16'b0000000000000000, regbusa};
  assign n1321 = {16'b0000000000000000, 8'bX, acc};
  /* T80.vhd:904:41  */
  assign n1322 = i_mulub ? n1321 : n1320;
  assign n1323 = {n1318, 8'b00000000};
  /* T80.vhd:904:41  */
  assign n1324 = i_mulub ? n1323 : regbusb;
  /* T80.vhd:903:33  */
  assign n1325 = t_res ? n1322 : mulu_tmp;
  /* T80.vhd:902:25  */
  assign n1328 = t_res & clken;
  /* T80.vhd:936:70  */
  assign n1335 = set_busa_to[2:1]; // extract
  /* T80.vhd:936:57  */
  assign n1336 = {alternate, n1335};
  /* T80.vhd:937:43  */
  assign n1337 = ~xy_ind;
  /* T80.vhd:937:62  */
  assign n1339 = xy_state != 2'b00;
  /* T80.vhd:937:49  */
  assign n1340 = n1339 & n1337;
  /* T80.vhd:937:85  */
  assign n1341 = set_busa_to[2:1]; // extract
  /* T80.vhd:937:98  */
  assign n1343 = n1341 == 2'b10;
  /* T80.vhd:937:70  */
  assign n1344 = n1343 & n1340;
  /* T80.vhd:938:63  */
  assign n1345 = xy_state[1]; // extract
  /* T80.vhd:938:67  */
  assign n1347 = {n1345, 2'b11};
  /* T80.vhd:937:33  */
  assign n1348 = n1344 ? n1347 : n1336;
  /* T80.vhd:942:70  */
  assign n1349 = set_busb_to[2:1]; // extract
  /* T80.vhd:942:57  */
  assign n1350 = {alternate, n1349};
  /* T80.vhd:943:43  */
  assign n1351 = ~xy_ind;
  /* T80.vhd:943:62  */
  assign n1353 = xy_state != 2'b00;
  /* T80.vhd:943:49  */
  assign n1354 = n1353 & n1351;
  /* T80.vhd:943:85  */
  assign n1355 = set_busb_to[2:1]; // extract
  /* T80.vhd:943:98  */
  assign n1357 = n1355 == 2'b10;
  /* T80.vhd:943:70  */
  assign n1358 = n1357 & n1354;
  /* T80.vhd:944:63  */
  assign n1359 = xy_state[1]; // extract
  /* T80.vhd:944:67  */
  assign n1361 = {n1359, 2'b11};
  /* T80.vhd:943:33  */
  assign n1362 = n1358 ? n1361 : n1350;
  /* T80.vhd:948:68  */
  assign n1363 = set_addr_to[1:0]; // extract
  /* T80.vhd:948:55  */
  assign n1364 = {alternate, n1363};
  /* T80.vhd:950:50  */
  assign n1365 = jumpxy | ldsphl;
  /* T80.vhd:951:63  */
  assign n1367 = {alternate, 2'b10};
  /* T80.vhd:950:33  */
  assign n1368 = n1365 ? n1367 : n1364;
  /* T80.vhd:953:51  */
  assign n1369 = jumpxy | ldsphl;
  /* T80.vhd:953:81  */
  assign n1371 = xy_state != 2'b00;
  /* T80.vhd:953:68  */
  assign n1372 = n1371 & n1369;
  /* T80.vhd:953:101  */
  assign n1374 = mcycle == 3'b110;
  /* T80.vhd:953:90  */
  assign n1375 = n1372 | n1374;
  /* T80.vhd:954:61  */
  assign n1376 = xy_state[1]; // extract
  /* T80.vhd:954:65  */
  assign n1378 = {n1376, 2'b11};
  /* T80.vhd:953:33  */
  assign n1379 = n1375 ? n1378 : n1368;
  /* T80.vhd:957:49  */
  assign n1380 = save_alu_r & i_djnz;
  /* T80.vhd:957:70  */
  assign n1382 = 1'b1 & n1380;
  /* T80.vhd:958:57  */
  assign n1383 = f_out[6]; // extract
  /* T80.vhd:957:33  */
  assign n1384 = n1382 ? n1383 : incdecz;
  /* T80.vhd:960:44  */
  assign n1386 = tstate == 3'b010;
  /* T80.vhd:960:59  */
  assign n1388 = tstate == 3'b011;
  /* T80.vhd:960:74  */
  assign n1390 = mcycle == 3'b001;
  /* T80.vhd:960:63  */
  assign n1391 = n1390 & n1388;
  /* T80.vhd:960:48  */
  assign n1392 = n1386 | n1391;
  /* T80.vhd:960:97  */
  assign n1393 = incdec_16[2:0]; // extract
  /* T80.vhd:960:110  */
  assign n1395 = n1393 == 3'b100;
  /* T80.vhd:960:84  */
  assign n1396 = n1395 & n1392;
  /* T80.vhd:961:49  */
  assign n1398 = id16 == 16'b0000000000000000;
  /* T80.vhd:961:41  */
  assign n1401 = n1398 ? 1'b0 : 1'b1;
  /* T80.vhd:960:33  */
  assign n1402 = n1396 ? n1401 : n1384;
  /* T80.vhd:975:46  */
  assign n1414 = incdec_16[1:0]; // extract
  /* T80.vhd:975:35  */
  assign n1415 = {alternate, n1414};
  /* T80.vhd:975:72  */
  assign n1417 = tstate == 3'b010;
  /* T80.vhd:976:41  */
  assign n1419 = tstate == 3'b011;
  /* T80.vhd:976:56  */
  assign n1421 = mcycle == 3'b001;
  /* T80.vhd:976:45  */
  assign n1422 = n1421 & n1419;
  /* T80.vhd:976:77  */
  assign n1423 = incdec_16[2]; // extract
  /* T80.vhd:976:64  */
  assign n1424 = n1423 & n1422;
  /* T80.vhd:975:76  */
  assign n1425 = n1417 | n1424;
  /* T80.vhd:976:102  */
  assign n1427 = xy_state == 2'b00;
  /* T80.vhd:976:89  */
  assign n1428 = n1427 & n1425;
  /* T80.vhd:975:59  */
  assign n1429 = n1428 ? n1415 : n1447;
  /* T80.vhd:977:33  */
  assign n1430 = xy_state[1]; // extract
  /* T80.vhd:977:37  */
  assign n1432 = {n1430, 2'b11};
  /* T80.vhd:977:57  */
  assign n1434 = tstate == 3'b010;
  /* T80.vhd:978:41  */
  assign n1436 = tstate == 3'b011;
  /* T80.vhd:978:56  */
  assign n1438 = mcycle == 3'b001;
  /* T80.vhd:978:45  */
  assign n1439 = n1438 & n1436;
  /* T80.vhd:978:77  */
  assign n1440 = incdec_16[2]; // extract
  /* T80.vhd:978:64  */
  assign n1441 = n1440 & n1439;
  /* T80.vhd:977:61  */
  assign n1442 = n1434 | n1441;
  /* T80.vhd:978:102  */
  assign n1443 = incdec_16[1:0]; // extract
  /* T80.vhd:978:115  */
  assign n1445 = n1443 == 2'b10;
  /* T80.vhd:978:89  */
  assign n1446 = n1445 & n1442;
  /* T80.vhd:976:109  */
  assign n1447 = n1446 ? n1432 : n1453;
  /* T80.vhd:980:35  */
  assign n1449 = {alternate, 2'b10};
  /* T80.vhd:980:75  */
  assign n1451 = tstate == 3'b011;
  /* T80.vhd:980:64  */
  assign n1452 = n1451 & exchangedh;
  /* T80.vhd:978:122  */
  assign n1453 = n1452 ? n1449 : n1460;
  /* T80.vhd:981:35  */
  assign n1455 = {alternate, 2'b01};
  /* T80.vhd:981:65  */
  assign n1456 = exchangedh | i_mulu;
  /* T80.vhd:981:93  */
  assign n1458 = tstate == 3'b100;
  /* T80.vhd:981:82  */
  assign n1459 = n1458 & n1456;
  /* T80.vhd:980:79  */
  assign n1460 = n1459 ? n1455 : n1465;
  /* T80.vhd:983:60  */
  assign n1463 = tstate == 3'b100;
  /* T80.vhd:983:49  */
  assign n1464 = n1463 & ldhlsp;
  /* T80.vhd:981:97  */
  assign n1465 = n1464 ? 3'b010 : regaddra_r;
  /* T80.vhd:989:35  */
  assign n1467 = {alternate, 2'b01};
  /* T80.vhd:989:75  */
  assign n1469 = tstate == 3'b011;
  /* T80.vhd:989:64  */
  assign n1470 = n1469 & exchangedh;
  /* T80.vhd:989:42  */
  assign n1471 = n1470 ? n1467 : regaddrb_r;
  /* T80.vhd:993:33  */
  assign n1473 = regbusa - 16'b0000000000000001;
  /* T80.vhd:993:51  */
  assign n1474 = incdec_16[3]; // extract
  /* T80.vhd:993:37  */
  assign n1475 = n1474 ? n1473 : n1477;
  /* T80.vhd:994:41  */
  assign n1477 = regbusa + 16'b0000000000000001;
  /* T80.vhd:1001:28  */
  assign n1481 = tstate == 3'b001;
  /* T80.vhd:1001:47  */
  assign n1482 = ~save_alu_r;
  /* T80.vhd:1001:32  */
  assign n1483 = n1482 & n1481;
  /* T80.vhd:1001:70  */
  assign n1484 = ~auto_wait_t1;
  /* T80.vhd:1001:53  */
  assign n1485 = n1484 & n1483;
  /* T80.vhd:1002:56  */
  assign n1487 = alu_op_r != 4'b0111;
  /* T80.vhd:1002:43  */
  assign n1488 = n1487 & save_alu_r;
  /* T80.vhd:1001:77  */
  assign n1489 = n1485 | n1488;
  /* T80.vhd:1005:60  */
  assign n1490 = read_to_reg_r[0]; // extract
  /* T80.vhd:1005:43  */
  assign n1491 = ~n1490;
  /* T80.vhd:1006:56  */
  assign n1492 = read_to_reg_r[0]; // extract
  /* T80.vhd:1004:25  */
  assign n1494 = read_to_reg_r == 5'b10000;
  /* T80.vhd:1004:38  */
  assign n1496 = read_to_reg_r == 5'b10001;
  /* T80.vhd:1004:38  */
  assign n1497 = n1494 | n1496;
  /* T80.vhd:1004:48  */
  assign n1499 = read_to_reg_r == 5'b10010;
  /* T80.vhd:1004:48  */
  assign n1500 = n1497 | n1499;
  /* T80.vhd:1004:58  */
  assign n1502 = read_to_reg_r == 5'b10011;
  /* T80.vhd:1004:58  */
  assign n1503 = n1500 | n1502;
  /* T80.vhd:1004:68  */
  assign n1505 = read_to_reg_r == 5'b10100;
  /* T80.vhd:1004:68  */
  assign n1506 = n1503 | n1505;
  /* T80.vhd:1004:78  */
  assign n1508 = read_to_reg_r == 5'b10101;
  /* T80.vhd:1004:78  */
  assign n1509 = n1506 | n1508;
  /* T80.vhd:1003:25  */
  always @*
    case (n1509)
      1'b1: n1511 = n1491;
      default: n1511 = 1'b0;
    endcase
  /* T80.vhd:1003:25  */
  always @*
    case (n1509)
      1'b1: n1513 = n1492;
      default: n1513 = 1'b0;
    endcase
  /* T80.vhd:1001:17  */
  assign n1515 = n1489 ? n1511 : 1'b0;
  /* T80.vhd:1001:17  */
  assign n1518 = n1489 ? n1513 : 1'b0;
  /* T80.vhd:1011:60  */
  assign n1521 = tstate == 3'b100;
  /* T80.vhd:1011:50  */
  assign n1522 = t_res | n1521;
  /* T80.vhd:1011:33  */
  assign n1523 = n1522 & i_mulu;
  /* T80.vhd:1011:17  */
  assign n1525 = n1523 ? 1'b1 : n1515;
  /* T80.vhd:1011:17  */
  assign n1527 = n1523 ? 1'b1 : n1518;
  /* T80.vhd:1016:49  */
  assign n1529 = tstate == 3'b011;
  /* T80.vhd:1016:63  */
  assign n1531 = tstate == 3'b100;
  /* T80.vhd:1016:53  */
  assign n1532 = n1529 | n1531;
  /* T80.vhd:1016:37  */
  assign n1533 = n1532 & exchangedh;
  /* T80.vhd:1016:17  */
  assign n1535 = n1533 ? 1'b1 : n1525;
  /* T80.vhd:1016:17  */
  assign n1537 = n1533 ? 1'b1 : n1527;
  /* T80.vhd:1021:44  */
  assign n1539 = mcycle == 3'b010;
  /* T80.vhd:1021:33  */
  assign n1540 = n1539 & ldhlsp;
  /* T80.vhd:1021:63  */
  assign n1542 = tstate == 3'b100;
  /* T80.vhd:1021:52  */
  assign n1543 = n1542 & n1540;
  /* T80.vhd:1021:17  */
  assign n1545 = n1543 ? 1'b1 : n1535;
  /* T80.vhd:1021:17  */
  assign n1547 = n1543 ? 1'b1 : n1537;
  /* T80.vhd:1026:29  */
  assign n1548 = incdec_16[2]; // extract
  /* T80.vhd:1026:52  */
  assign n1550 = tstate == 3'b010;
  /* T80.vhd:1026:56  */
  assign n1551 = wait_n & n1550;
  /* T80.vhd:1026:84  */
  assign n1553 = mcycle != 3'b001;
  /* T80.vhd:1026:73  */
  assign n1554 = n1553 & n1551;
  /* T80.vhd:1026:105  */
  assign n1556 = tstate == 3'b011;
  /* T80.vhd:1026:120  */
  assign n1558 = mcycle == 3'b001;
  /* T80.vhd:1026:109  */
  assign n1559 = n1558 & n1556;
  /* T80.vhd:1026:94  */
  assign n1560 = n1554 | n1559;
  /* T80.vhd:1026:39  */
  assign n1561 = n1560 & n1548;
  /* T80.vhd:1027:39  */
  assign n1562 = incdec_16[1:0]; // extract
  /* T80.vhd:1028:25  */
  assign n1564 = n1562 == 2'b00;
  /* T80.vhd:1028:35  */
  assign n1566 = n1562 == 2'b01;
  /* T80.vhd:1028:35  */
  assign n1567 = n1564 | n1566;
  /* T80.vhd:1028:42  */
  assign n1569 = n1562 == 2'b10;
  /* T80.vhd:1028:42  */
  assign n1570 = n1567 | n1569;
  /* T80.vhd:1027:25  */
  always @*
    case (n1570)
      1'b1: n1572 = 1'b1;
      default: n1572 = n1545;
    endcase
  /* T80.vhd:1027:25  */
  always @*
    case (n1570)
      1'b1: n1574 = 1'b1;
      default: n1574 = n1547;
    endcase
  /* T80.vhd:1026:17  */
  assign n1575 = n1561 ? n1572 : n1545;
  /* T80.vhd:1026:17  */
  assign n1576 = n1561 ? n1574 : n1547;
  /* T80.vhd:1036:58  */
  assign n1578 = {{8{save_mux[7]}}, save_mux}; // sext
  /* T80.vhd:1036:58  */
  assign n1579 = sp + n1578;
  /* T80.vhd:1046:54  */
  assign n1582 = mulu_prod32[31:24]; // extract
  /* T80.vhd:1047:54  */
  assign n1583 = mulu_prod32[23:16]; // extract
  /* T80.vhd:1049:51  */
  assign n1584 = mulu_tmp[15:8]; // extract
  /* T80.vhd:1050:51  */
  assign n1585 = mulu_tmp[7:0]; // extract
  /* T80.vhd:1045:25  */
  assign n1586 = t_res ? n1582 : n1584;
  /* T80.vhd:1045:25  */
  assign n1587 = t_res ? n1583 : n1585;
  /* T80.vhd:1044:17  */
  assign n1588 = i_mulu ? n1586 : save_mux;
  /* T80.vhd:1044:17  */
  assign n1589 = i_mulu ? n1587 : save_mux;
  /* T80.vhd:1054:44  */
  assign n1591 = mcycle == 3'b010;
  /* T80.vhd:1054:33  */
  assign n1592 = n1591 & ldhlsp;
  /* T80.vhd:1054:63  */
  assign n1594 = tstate == 3'b100;
  /* T80.vhd:1054:52  */
  assign n1595 = n1594 & n1592;
  /* T80.vhd:1055:43  */
  assign n1596 = tmpaddr2[15:8]; // extract
  /* T80.vhd:1056:43  */
  assign n1597 = tmpaddr2[7:0]; // extract
  /* T80.vhd:1054:17  */
  assign n1598 = n1595 ? n1596 : n1588;
  /* T80.vhd:1054:17  */
  assign n1599 = n1595 ? n1597 : n1589;
  /* T80.vhd:1059:48  */
  assign n1601 = tstate == 3'b011;
  /* T80.vhd:1059:37  */
  assign n1602 = n1601 & exchangedh;
  /* T80.vhd:1060:42  */
  assign n1603 = regbusb[15:8]; // extract
  /* T80.vhd:1061:42  */
  assign n1604 = regbusb[7:0]; // extract
  /* T80.vhd:1059:17  */
  assign n1605 = n1602 ? n1603 : n1598;
  /* T80.vhd:1059:17  */
  assign n1606 = n1602 ? n1604 : n1599;
  /* T80.vhd:1063:48  */
  assign n1608 = tstate == 3'b100;
  /* T80.vhd:1063:37  */
  assign n1609 = n1608 & exchangedh;
  /* T80.vhd:1064:44  */
  assign n1610 = regbusa_r[15:8]; // extract
  /* T80.vhd:1065:44  */
  assign n1611 = regbusa_r[7:0]; // extract
  /* T80.vhd:1063:17  */
  assign n1612 = n1609 ? n1610 : n1605;
  /* T80.vhd:1063:17  */
  assign n1613 = n1609 ? n1611 : n1606;
  /* T80.vhd:1068:29  */
  assign n1614 = incdec_16[2]; // extract
  /* T80.vhd:1068:52  */
  assign n1616 = tstate == 3'b010;
  /* T80.vhd:1068:67  */
  assign n1618 = mcycle != 3'b001;
  /* T80.vhd:1068:56  */
  assign n1619 = n1618 & n1616;
  /* T80.vhd:1068:88  */
  assign n1621 = tstate == 3'b011;
  /* T80.vhd:1068:103  */
  assign n1623 = mcycle == 3'b001;
  /* T80.vhd:1068:92  */
  assign n1624 = n1623 & n1621;
  /* T80.vhd:1068:77  */
  assign n1625 = n1619 | n1624;
  /* T80.vhd:1068:39  */
  assign n1626 = n1625 & n1614;
  /* T80.vhd:1069:56  */
  assign n1627 = id16[15:8]; // extract
  /* T80.vhd:1070:56  */
  assign n1628 = id16[7:0]; // extract
  /* T80.vhd:1068:17  */
  assign n1629 = n1626 ? n1627 : n1612;
  /* T80.vhd:1068:17  */
  assign n1630 = n1626 ? n1628 : n1613;
  /* T80.vhd:1093:36  */
  assign n1639 = dir[207:80]; // extract
  /* T80.vhd:1074:9  */
  t80_reg regs (
    .clk(clk_n),
    .cen(clken),
    .weh(regweh),
    .wel(regwel),
    .addra(regaddra),
    .addrb(regaddrb),
    .addrc(regaddrc),
    .dih(regdih),
    .dil(regdil),
    .dirset(dirset),
    .dir(n1639),
    .doah(regs_n1632),
    .doal(regs_n1633),
    .dobh(regs_n1634),
    .dobl(regs_n1635),
    .doch(regs_n1636),
    .docl(regs_n1637),
    .dor(regs_n1638));
  /* T80.vhd:1105:33  */
  assign n1658 = set_busb_to == 4'b0111;
  /* T80.vhd:1108:55  */
  assign n1659 = set_busb_to[0]; // extract
  /* T80.vhd:1109:64  */
  assign n1660 = regbusb[7:0]; // extract
  /* T80.vhd:1111:64  */
  assign n1661 = regbusb[15:8]; // extract
  /* T80.vhd:1108:41  */
  assign n1662 = n1659 ? n1660 : n1661;
  /* T80.vhd:1107:33  */
  assign n1664 = set_busb_to == 4'b0000;
  /* T80.vhd:1107:45  */
  assign n1666 = set_busb_to == 4'b0001;
  /* T80.vhd:1107:45  */
  assign n1667 = n1664 | n1666;
  /* T80.vhd:1107:54  */
  assign n1669 = set_busb_to == 4'b0010;
  /* T80.vhd:1107:54  */
  assign n1670 = n1667 | n1669;
  /* T80.vhd:1107:63  */
  assign n1672 = set_busb_to == 4'b0011;
  /* T80.vhd:1107:63  */
  assign n1673 = n1670 | n1672;
  /* T80.vhd:1107:72  */
  assign n1675 = set_busb_to == 4'b0100;
  /* T80.vhd:1107:72  */
  assign n1676 = n1673 | n1675;
  /* T80.vhd:1107:81  */
  assign n1678 = set_busb_to == 4'b0101;
  /* T80.vhd:1107:81  */
  assign n1679 = n1676 | n1678;
  /* T80.vhd:1113:33  */
  assign n1681 = set_busb_to == 4'b0110;
  /* T80.vhd:1116:68  */
  assign n1682 = sp[7:0]; // extract
  /* T80.vhd:1115:33  */
  assign n1684 = set_busb_to == 4'b1000;
  /* T80.vhd:1118:68  */
  assign n1685 = sp[15:8]; // extract
  /* T80.vhd:1117:33  */
  assign n1687 = set_busb_to == 4'b1001;
  /* T80.vhd:1119:33  */
  assign n1689 = set_busb_to == 4'b1010;
  /* T80.vhd:1121:33  */
  assign n1691 = set_busb_to == 4'b1011;
  /* T80.vhd:1124:68  */
  assign n1692 = pc[7:0]; // extract
  /* T80.vhd:1123:33  */
  assign n1694 = set_busb_to == 4'b1100;
  /* T80.vhd:1126:68  */
  assign n1695 = pc[15:8]; // extract
  /* T80.vhd:1125:33  */
  assign n1697 = set_busb_to == 4'b1101;
  /* T80.vhd:1128:47  */
  assign n1699 = ir == 8'b01110001;
  /* T80.vhd:1128:55  */
  assign n1700 = out0 & n1699;
  /* T80.vhd:1128:41  */
  assign n1703 = n1700 ? 8'b11111111 : 8'b00000000;
  /* T80.vhd:1127:33  */
  assign n1705 = set_busb_to == 4'b1110;
  assign n1706 = {n1705, n1697, n1694, n1691, n1689, n1687, n1684, n1681, n1679, n1658};
  /* T80.vhd:1104:33  */
  always @*
    case (n1706)
      10'b1000000000: n1709 = n1703;
      10'b0100000000: n1709 = n1695;
      10'b0010000000: n1709 = n1692;
      10'b0001000000: n1709 = f;
      10'b0000100000: n1709 = 8'b00000001;
      10'b0000010000: n1709 = n1685;
      10'b0000001000: n1709 = n1682;
      10'b0000000100: n1709 = di_reg;
      10'b0000000010: n1709 = n1662;
      10'b0000000001: n1709 = acc;
      default: n1709 = 8'bX;
    endcase
  /* T80.vhd:1138:33  */
  assign n1711 = set_busa_to == 4'b0111;
  /* T80.vhd:1141:55  */
  assign n1712 = set_busa_to[0]; // extract
  /* T80.vhd:1142:64  */
  assign n1713 = regbusa[7:0]; // extract
  /* T80.vhd:1144:64  */
  assign n1714 = regbusa[15:8]; // extract
  /* T80.vhd:1141:41  */
  assign n1715 = n1712 ? n1713 : n1714;
  /* T80.vhd:1140:33  */
  assign n1717 = set_busa_to == 4'b0000;
  /* T80.vhd:1140:45  */
  assign n1719 = set_busa_to == 4'b0001;
  /* T80.vhd:1140:45  */
  assign n1720 = n1717 | n1719;
  /* T80.vhd:1140:54  */
  assign n1722 = set_busa_to == 4'b0010;
  /* T80.vhd:1140:54  */
  assign n1723 = n1720 | n1722;
  /* T80.vhd:1140:63  */
  assign n1725 = set_busa_to == 4'b0011;
  /* T80.vhd:1140:63  */
  assign n1726 = n1723 | n1725;
  /* T80.vhd:1140:72  */
  assign n1728 = set_busa_to == 4'b0100;
  /* T80.vhd:1140:72  */
  assign n1729 = n1726 | n1728;
  /* T80.vhd:1140:81  */
  assign n1731 = set_busa_to == 4'b0101;
  /* T80.vhd:1140:81  */
  assign n1732 = n1729 | n1731;
  /* T80.vhd:1146:33  */
  assign n1734 = set_busa_to == 4'b0110;
  /* T80.vhd:1149:68  */
  assign n1735 = sp[7:0]; // extract
  /* T80.vhd:1148:33  */
  assign n1737 = set_busa_to == 4'b1000;
  /* T80.vhd:1151:68  */
  assign n1738 = sp[15:8]; // extract
  /* T80.vhd:1150:33  */
  assign n1740 = set_busa_to == 4'b1001;
  /* T80.vhd:1152:33  */
  assign n1742 = set_busa_to == 4'b1010;
  assign n1743 = {n1742, n1740, n1737, n1734, n1732, n1711};
  /* T80.vhd:1137:33  */
  always @*
    case (n1743)
      6'b100000: n1746 = 8'b00000000;
      6'b010000: n1746 = n1738;
      6'b001000: n1746 = n1735;
      6'b000100: n1746 = di_reg;
      6'b000010: n1746 = n1715;
      6'b000001: n1746 = acc;
      default: n1746 = 8'bX;
    endcase
  /* T80.vhd:1157:33  */
  assign n1747 = xybit_undoc ? di_reg : n1709;
  /* T80.vhd:1157:33  */
  assign n1748 = xybit_undoc ? di_reg : n1746;
  /* T80.vhd:1172:28  */
  assign n1756 = ~reset_n;
  /* T80.vhd:1175:35  */
  assign n1758 = ~dirset;
  /* T80.vhd:1175:41  */
  assign n1759 = cen & n1758;
  /* T80.vhd:1176:43  */
  assign n1761 = mcycle == 3'b001;
  /* T80.vhd:1176:64  */
  assign n1763 = tstate == 3'b010;
  /* T80.vhd:1176:69  */
  assign n1764 = wait_n & n1763;
  /* T80.vhd:1176:97  */
  assign n1766 = tstate == 3'b011;
  /* T80.vhd:1176:87  */
  assign n1767 = n1764 | n1766;
  /* T80.vhd:1176:51  */
  assign n1768 = n1767 & n1761;
  /* T80.vhd:1176:33  */
  assign n1771 = n1768 ? 1'b0 : 1'b1;
  /* T80.vhd:1188:19  */
  assign n1777 = ~halt_ff;
  /* T80.vhd:1189:32  */
  assign n1778 = busack & reset_n;
  /* T80.vhd:1189:20  */
  assign n1779 = ~n1778;
  /* T80.vhd:1190:23  */
  assign n1780 = ~intcycle;
  /* T80.vhd:1200:26  */
  always @*
    n1781_oldnmi_n = n2078; // (isignal)
  initial
    n1781_oldnmi_n = 1'bX;
  /* T80.vhd:1202:28  */
  assign n1784 = ~reset_n;
  /* T80.vhd:1220:48  */
  assign n1786 = dir[211]; // extract
  /* T80.vhd:1221:48  */
  assign n1787 = dir[210]; // extract
  /* T80.vhd:1223:42  */
  assign n1788 = ~nmi_n;
  /* T80.vhd:1223:48  */
  assign n1789 = n1781_oldnmi_n & n1788;
  /* T80.vhd:1223:33  */
  assign n1791 = n1789 ? 1'b1 : nmi_s;
  /* T80.vhd:1229:53  */
  assign n1792 = ~busrq_n;
  /* T80.vhd:1235:75  */
  assign n1793 = auto_wait | iorq_i;
  /* T80.vhd:1231:41  */
  assign n1795 = t_res ? 1'b0 : n1793;
  /* T80.vhd:1231:41  */
  assign n1797 = t_res ? 1'b0 : auto_wait_t1;
  /* T80.vhd:1237:68  */
  assign n1798 = ir[4]; // extract
  /* T80.vhd:1237:62  */
  assign n1799 = ~n1798;
  /* T80.vhd:1237:80  */
  assign n1800 = f[2]; // extract
  /* T80.vhd:1237:75  */
  assign n1801 = ~n1800;
  /* T80.vhd:1237:72  */
  assign n1802 = n1799 | n1801;
  /* T80.vhd:1237:57  */
  assign n1803 = i_bt & n1802;
  /* T80.vhd:1238:74  */
  assign n1804 = ir[4]; // extract
  /* T80.vhd:1238:68  */
  assign n1805 = ~n1804;
  /* T80.vhd:1238:82  */
  assign n1806 = f[6]; // extract
  /* T80.vhd:1238:78  */
  assign n1807 = n1805 | n1806;
  /* T80.vhd:1238:99  */
  assign n1808 = f[2]; // extract
  /* T80.vhd:1238:94  */
  assign n1809 = ~n1808;
  /* T80.vhd:1238:91  */
  assign n1810 = n1807 | n1809;
  /* T80.vhd:1238:63  */
  assign n1811 = i_bc & n1810;
  /* T80.vhd:1237:91  */
  assign n1812 = n1803 | n1811;
  /* T80.vhd:1239:75  */
  assign n1813 = ir[4]; // extract
  /* T80.vhd:1239:69  */
  assign n1814 = ~n1813;
  /* T80.vhd:1239:83  */
  assign n1815 = f[6]; // extract
  /* T80.vhd:1239:79  */
  assign n1816 = n1814 | n1815;
  /* T80.vhd:1239:64  */
  assign n1817 = i_btr & n1816;
  /* T80.vhd:1238:110  */
  assign n1818 = n1812 | n1817;
  /* T80.vhd:1240:51  */
  assign n1820 = tstate == 3'b010;
  /* T80.vhd:1241:49  */
  assign n1822 = setei ? 1'b1 : inte_ff1;
  /* T80.vhd:1240:41  */
  assign n1824 = n1827 ? 1'b1 : inte_ff2;
  /* T80.vhd:1245:49  */
  assign n1825 = i_retn ? inte_ff2 : n1822;
  /* T80.vhd:1240:41  */
  assign n1826 = n1820 ? n1825 : inte_ff1;
  /* T80.vhd:1240:41  */
  assign n1827 = setei & n1820;
  /* T80.vhd:1249:51  */
  assign n1829 = tstate == 3'b011;
  /* T80.vhd:1249:41  */
  assign n1831 = n1834 ? 1'b0 : n1826;
  /* T80.vhd:1249:41  */
  assign n1833 = n1835 ? 1'b0 : n1824;
  /* T80.vhd:1249:41  */
  assign n1834 = setdi & n1829;
  /* T80.vhd:1249:41  */
  assign n1835 = setdi & n1829;
  /* T80.vhd:1255:59  */
  assign n1836 = intcycle | nmicycle;
  /* T80.vhd:1255:41  */
  assign n1838 = n1836 ? 1'b0 : halt_ff;
  /* T80.vhd:1258:51  */
  assign n1840 = mcycle == 3'b001;
  /* T80.vhd:1258:70  */
  assign n1842 = tstate == 3'b010;
  /* T80.vhd:1258:59  */
  assign n1843 = n1842 & n1840;
  /* T80.vhd:1258:74  */
  assign n1844 = wait_n & n1843;
  /* T80.vhd:1258:41  */
  assign n1846 = n1844 ? 1'b1 : n2150;
  /* T80.vhd:1261:59  */
  assign n1847 = busack & busreq_s;
  /* T80.vhd:1264:59  */
  assign n1849 = tstate == 3'b010;
  /* T80.vhd:1264:74  */
  assign n1850 = ~wait_n;
  /* T80.vhd:1264:63  */
  assign n1851 = n1850 & n1849;
  /* T80.vhd:1266:71  */
  assign n1853 = 1'b1 & halt;
  /* T80.vhd:1265:49  */
  assign n1855 = n1964 ? 1'b1 : n1838;
  /* T80.vhd:1283:79  */
  assign n1857 = ir == 8'b00110110;
  /* T80.vhd:1283:92  */
  assign n1859 = 1'b1 & n1857;
  /* T80.vhd:1283:73  */
  assign n1861 = n1859 ? 3'b010 : mcycle;
  /* T80.vhd:1286:79  */
  assign n1863 = mcycle == 3'b111;
  /* T80.vhd:1286:88  */
  assign n1867 = n1863 | 1'b0;
  /* T80.vhd:1287:121  */
  assign n1869 = pre_xy_f_m + 3'b001;
  /* T80.vhd:1288:79  */
  assign n1870 = mcycle == mcycles;
  /* T80.vhd:1288:90  */
  assign n1871 = n1870 | no_btr;
  /* T80.vhd:1288:117  */
  assign n1873 = mcycle == 3'b010;
  /* T80.vhd:1288:125  */
  assign n1874 = i_djnz & n1873;
  /* T80.vhd:1288:142  */
  assign n1875 = incdecz & n1874;
  /* T80.vhd:1288:106  */
  assign n1876 = n1871 | n1875;
  /* T80.vhd:1293:99  */
  assign n1878 = prefix == 2'b00;
  /* T80.vhd:1293:88  */
  assign n1879 = n1878 & nmi_s;
  /* T80.vhd:1297:103  */
  assign n1880 = ~int_n;
  /* T80.vhd:1297:94  */
  assign n1881 = n1880 & inte_ff1;
  /* T80.vhd:1297:119  */
  assign n1883 = prefix == 2'b00;
  /* T80.vhd:1297:108  */
  assign n1884 = n1883 & n1881;
  /* T80.vhd:1297:136  */
  assign n1885 = ~setei;
  /* T80.vhd:1297:126  */
  assign n1886 = n1885 & n1884;
  /* T80.vhd:1297:73  */
  assign n1890 = n1886 ? 1'b0 : n1831;
  /* T80.vhd:1297:73  */
  assign n1892 = n1886 ? 1'b0 : n1833;
  /* T80.vhd:1297:73  */
  assign n1895 = n1886 ? 1'b1 : 1'b0;
  /* T80.vhd:1293:73  */
  assign n1897 = n1879 ? 1'b0 : n1890;
  /* T80.vhd:1293:73  */
  assign n1898 = n1879 ? n1833 : n1892;
  /* T80.vhd:1288:65  */
  assign n1900 = n1916 ? 1'b0 : n1791;
  /* T80.vhd:1293:73  */
  assign n1902 = n1879 ? 1'b0 : n1895;
  /* T80.vhd:1293:73  */
  assign n1906 = n1879 ? 1'b1 : 1'b0;
  /* T80.vhd:1305:117  */
  assign n1909 = mcycle + 3'b001;
  /* T80.vhd:1288:65  */
  assign n1911 = n1876 ? 1'b0 : n1846;
  /* T80.vhd:1288:65  */
  assign n1913 = n1876 ? 3'b001 : n1909;
  /* T80.vhd:1288:65  */
  assign n1914 = n1876 ? n1897 : n1831;
  /* T80.vhd:1288:65  */
  assign n1915 = n1876 ? n1898 : n1833;
  /* T80.vhd:1288:65  */
  assign n1916 = n1879 & n1876;
  /* T80.vhd:1288:65  */
  assign n1917 = n1876 ? n1902 : intcycle;
  /* T80.vhd:1288:65  */
  assign n1918 = n1876 ? n1906 : nmicycle;
  /* T80.vhd:1286:65  */
  assign n1919 = n1867 ? n1846 : n1911;
  /* T80.vhd:1286:65  */
  assign n1920 = n1867 ? n1869 : n1913;
  /* T80.vhd:1286:65  */
  assign n1921 = n1867 ? n1831 : n1914;
  /* T80.vhd:1286:65  */
  assign n1922 = n1867 ? n1833 : n1915;
  /* T80.vhd:1286:65  */
  assign n1923 = n1867 ? n1791 : n1900;
  /* T80.vhd:1286:65  */
  assign n1924 = n1867 ? intcycle : n1917;
  /* T80.vhd:1286:65  */
  assign n1925 = n1867 ? nmicycle : n1918;
  /* T80.vhd:1280:65  */
  assign n1926 = nextis_xy_fetch ? n1846 : n1919;
  /* T80.vhd:1280:65  */
  assign n1928 = nextis_xy_fetch ? 3'b110 : n1920;
  /* T80.vhd:1280:65  */
  assign n1929 = nextis_xy_fetch ? n1831 : n1921;
  /* T80.vhd:1280:65  */
  assign n1930 = nextis_xy_fetch ? n1833 : n1922;
  /* T80.vhd:1280:65  */
  assign n1931 = nextis_xy_fetch ? n1791 : n1923;
  /* T80.vhd:1280:65  */
  assign n1932 = nextis_xy_fetch ? n1861 : pre_xy_f_m;
  /* T80.vhd:1280:65  */
  assign n1933 = nextis_xy_fetch ? intcycle : n1924;
  /* T80.vhd:1280:65  */
  assign n1934 = nextis_xy_fetch ? nmicycle : n1925;
  /* T80.vhd:1269:57  */
  assign n1935 = busreq_s ? n1846 : n1926;
  /* T80.vhd:1269:57  */
  assign n1937 = busreq_s ? tstate : 3'b001;
  /* T80.vhd:1269:57  */
  assign n1938 = busreq_s ? mcycle : n1928;
  /* T80.vhd:1269:57  */
  assign n1939 = busreq_s ? n1831 : n1929;
  /* T80.vhd:1269:57  */
  assign n1940 = busreq_s ? n1833 : n1930;
  /* T80.vhd:1269:57  */
  assign n1943 = busreq_s ? 1'b1 : 1'b0;
  /* T80.vhd:1269:57  */
  assign n1944 = busreq_s ? n1791 : n1931;
  /* T80.vhd:1269:57  */
  assign n1945 = busreq_s ? pre_xy_f_m : n1932;
  /* T80.vhd:1269:57  */
  assign n1946 = busreq_s ? intcycle : n1933;
  /* T80.vhd:1269:57  */
  assign n1947 = busreq_s ? nmicycle : n1934;
  /* T80.vhd:1309:94  */
  assign n1948 = ~auto_wait_t2;
  /* T80.vhd:1309:77  */
  assign n1949 = n1948 & auto_wait;
  /* T80.vhd:1310:77  */
  assign n1951 = iorq_i & 1'b1;
  /* T80.vhd:1310:111  */
  assign n1952 = ~auto_wait_t1;
  /* T80.vhd:1310:94  */
  assign n1953 = n1952 & n1951;
  /* T80.vhd:1309:101  */
  assign n1954 = n1949 | n1953;
  /* T80.vhd:1309:101  */
  assign n1955 = ~n1954;
  /* T80.vhd:1311:82  */
  assign n1957 = tstate + 3'b001;
  /* T80.vhd:1309:57  */
  assign n1958 = n1955 ? n1957 : tstate;
  /* T80.vhd:1265:49  */
  assign n1959 = t_res ? n1935 : n1846;
  /* T80.vhd:1265:49  */
  assign n1960 = t_res ? n1937 : n1958;
  /* T80.vhd:1265:49  */
  assign n1961 = t_res ? n1938 : mcycle;
  /* T80.vhd:1265:49  */
  assign n1962 = t_res ? n1939 : n1831;
  /* T80.vhd:1265:49  */
  assign n1963 = t_res ? n1940 : n1833;
  /* T80.vhd:1265:49  */
  assign n1964 = n1853 & t_res;
  /* T80.vhd:1265:49  */
  assign n1966 = t_res ? n1943 : 1'b0;
  /* T80.vhd:1265:49  */
  assign n1967 = t_res ? n1944 : n1791;
  /* T80.vhd:1265:49  */
  assign n1968 = t_res ? n1945 : pre_xy_f_m;
  /* T80.vhd:1265:49  */
  assign n1969 = t_res ? n1946 : intcycle;
  /* T80.vhd:1265:49  */
  assign n1970 = t_res ? n1947 : nmicycle;
  /* T80.vhd:1264:49  */
  assign n1971 = n1851 ? n1846 : n1959;
  /* T80.vhd:1264:49  */
  assign n1972 = n1851 ? tstate : n1960;
  /* T80.vhd:1264:49  */
  assign n1973 = n1851 ? mcycle : n1961;
  /* T80.vhd:1264:49  */
  assign n1974 = n1851 ? n1831 : n1962;
  /* T80.vhd:1264:49  */
  assign n1975 = n1851 ? n1833 : n1963;
  /* T80.vhd:1264:49  */
  assign n1976 = n1851 ? n1838 : n1855;
  /* T80.vhd:1264:49  */
  assign n1978 = n1851 ? 1'b0 : n1966;
  /* T80.vhd:1264:49  */
  assign n1980 = n1851 ? n1791 : n1967;
  /* T80.vhd:1264:49  */
  assign n1981 = n1851 ? pre_xy_f_m : n1968;
  /* T80.vhd:1264:49  */
  assign n1982 = n1851 ? intcycle : n1969;
  /* T80.vhd:1264:49  */
  assign n1983 = n1851 ? nmicycle : n1970;
  /* T80.vhd:1261:41  */
  assign n1984 = n1847 ? n1846 : n1971;
  /* T80.vhd:1261:41  */
  assign n1985 = n1847 ? tstate : n1972;
  /* T80.vhd:1261:41  */
  assign n1986 = n1847 ? mcycle : n1973;
  /* T80.vhd:1261:41  */
  assign n1987 = n1847 ? n1831 : n1974;
  /* T80.vhd:1261:41  */
  assign n1988 = n1847 ? n1833 : n1975;
  /* T80.vhd:1261:41  */
  assign n1989 = n1847 ? n1838 : n1976;
  /* T80.vhd:1261:41  */
  assign n1990 = n1847 ? busack : n1978;
  /* T80.vhd:1261:41  */
  assign n1991 = n1847 ? n1791 : n1980;
  /* T80.vhd:1261:41  */
  assign n1992 = n1847 ? pre_xy_f_m : n1981;
  /* T80.vhd:1261:41  */
  assign n1993 = n1847 ? intcycle : n1982;
  /* T80.vhd:1261:41  */
  assign n1994 = n1847 ? nmicycle : n1983;
  /* T80.vhd:1315:51  */
  assign n1996 = tstate == 3'b000;
  /* T80.vhd:1315:41  */
  assign n1998 = n1996 ? 1'b0 : n1984;
  /* T80.vhd:1228:33  */
  assign n1999 = cen ? n1998 : n2150;
  /* T80.vhd:1228:33  */
  assign n2000 = cen ? n1985 : tstate;
  /* T80.vhd:1228:33  */
  assign n2001 = cen ? n1986 : mcycle;
  /* T80.vhd:1228:33  */
  assign n2002 = cen ? n1987 : inte_ff1;
  /* T80.vhd:1228:33  */
  assign n2003 = cen ? n1988 : inte_ff2;
  /* T80.vhd:1228:33  */
  assign n2004 = cen ? n1989 : halt_ff;
  /* T80.vhd:1228:33  */
  assign n2005 = cen ? n1792 : busreq_s;
  /* T80.vhd:1228:33  */
  assign n2006 = cen ? n1990 : busack;
  /* T80.vhd:1228:33  */
  assign n2007 = cen ? n1991 : n1791;
  /* T80.vhd:1228:33  */
  assign n2008 = cen ? n1992 : pre_xy_f_m;
  /* T80.vhd:1228:33  */
  assign n2009 = cen ? n1818 : no_btr;
  /* T80.vhd:1228:33  */
  assign n2010 = cen ? n1795 : auto_wait_t1;
  /* T80.vhd:1228:33  */
  assign n2011 = cen ? n1797 : auto_wait_t2;
  /* T80.vhd:1228:33  */
  assign n2012 = cen ? n1993 : intcycle;
  /* T80.vhd:1228:33  */
  assign n2013 = cen ? n1994 : nmicycle;
  /* T80.vhd:1219:25  */
  assign n2014 = dirset ? n2150 : n1999;
  /* T80.vhd:1219:25  */
  assign n2015 = dirset ? tstate : n2000;
  /* T80.vhd:1219:25  */
  assign n2016 = dirset ? mcycle : n2001;
  /* T80.vhd:1219:25  */
  assign n2017 = dirset ? n1787 : n2002;
  /* T80.vhd:1219:25  */
  assign n2018 = dirset ? n1786 : n2003;
  /* T80.vhd:1219:25  */
  assign n2019 = dirset ? halt_ff : n2004;
  /* T80.vhd:1219:25  */
  assign n2020 = dirset ? busreq_s : n2005;
  /* T80.vhd:1219:25  */
  assign n2021 = dirset ? busack : n2006;
  /* T80.vhd:1219:25  */
  assign n2022 = dirset ? nmi_s : n2007;
  /* T80.vhd:1219:25  */
  assign n2023 = dirset ? pre_xy_f_m : n2008;
  /* T80.vhd:1219:25  */
  assign n2024 = dirset ? no_btr : n2009;
  /* T80.vhd:1219:25  */
  assign n2025 = dirset ? auto_wait_t1 : n2010;
  /* T80.vhd:1219:25  */
  assign n2026 = dirset ? auto_wait_t2 : n2011;
  /* T80.vhd:1219:25  */
  assign n2027 = dirset ? intcycle : n2012;
  /* T80.vhd:1219:25  */
  assign n2028 = dirset ? nmicycle : n2013;
  /* T80.vhd:1219:25  */
  assign n2029 = dirset ? n1781_oldnmi_n : nmi_n;
  /* T80.vhd:1199:9  */
  assign n2076 = ~n1784;
  /* T80.vhd:1218:17  */
  assign n2077 = n2076 ? n2029 : n1781_oldnmi_n;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n)
    n2078 <= n2077;
  /* T80.vhd:1323:47  */
  assign n2080 = intcycle | nmicycle;
  /* T80.vhd:1323:77  */
  assign n2082 = mcycle == 3'b001;
  /* T80.vhd:1323:66  */
  assign n2083 = n2082 & n2080;
  /* T80.vhd:1323:26  */
  assign n2084 = n2083 ? 1'b1 : 1'b0;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2086 <= 8'b11111111;
    else
      n2086 <= n1173;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2087 <= 8'b11111111;
    else
      n2087 <= n1174;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2088 <= 8'b11111111;
    else
      n2088 <= n1175;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2089 <= 8'b11111111;
    else
      n2089 <= n1176;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2090 <= 8'b00000000;
    else
      n2090 <= n1177;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2091 <= 8'b00000000;
    else
      n2091 <= n1178;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2092 <= 16'b1111111111111111;
    else
      n2092 <= n1179;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2093 <= 16'b0000000000000000;
    else
      n2093 <= n1180;
  /* T80.vhd:390:17  */
  assign n2094 = {regs_n1632, regs_n1633};
  /* T80.vhd:390:17  */
  assign n2095 = {regs_n1634, regs_n1635};
  /* T80.vhd:390:17  */
  assign n2096 = {regs_n1636, regs_n1637};
  /* T80.vhd:933:17  */
  assign n2097 = clken ? n1348 : regaddra_r;
  /* T80.vhd:933:17  */
  always @(posedge clk_n)
    n2098 <= n2097;
  /* T80.vhd:933:17  */
  assign n2099 = clken ? n1362 : regaddrb_r;
  /* T80.vhd:933:17  */
  always @(posedge clk_n)
    n2100 <= n2099;
  /* T80.vhd:933:17  */
  assign n2101 = clken ? n1379 : regaddrc;
  /* T80.vhd:933:17  */
  always @(posedge clk_n)
    n2102 <= n2101;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2103 <= 1'b0;
    else
      n2103 <= n1181;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2104 <= 16'b0000000000000000;
    else
      n2104 <= n1182;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2105 <= 8'b00000000;
    else
      n2105 <= n1183;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2106 <= 2'b00;
    else
      n2106 <= n1184;
  /* T80.vhd:933:17  */
  assign n2107 = clken ? regbusa : regbusa_r;
  /* T80.vhd:933:17  */
  always @(posedge clk_n)
    n2108 <= n2107;
  /* T80.vhd:901:17  */
  assign n2109 = clken ? n1325 : mulu_prod32;
  /* T80.vhd:901:17  */
  always @(posedge clk_n)
    n2110 <= n2109;
  /* T80.vhd:901:17  */
  assign n2111 = {n1309, n1310};
  /* T80.vhd:901:17  */
  assign n2112 = n1328 ? n1324 : mulu_fakt1;
  /* T80.vhd:901:17  */
  always @(posedge clk_n)
    n2113 <= n2112;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n or posedge n1784)
    if (n1784)
      n2114 <= 3'b000;
    else
      n2114 <= n2015;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n or posedge n1784)
    if (n1784)
      n2115 <= 3'b001;
    else
      n2115 <= n2016;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n or posedge n1784)
    if (n1784)
      n2116 <= 1'b0;
    else
      n2116 <= n2017;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n or posedge n1784)
    if (n1784)
      n2117 <= 1'b0;
    else
      n2117 <= n2018;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n or posedge n1784)
    if (n1784)
      n2118 <= 1'b0;
    else
      n2118 <= n2019;
  /* T80.vhd:1199:9  */
  assign n2119 = ~n1784;
  /* T80.vhd:1218:17  */
  assign n2120 = n2119 ? n2020 : busreq_s;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n)
    n2121 <= n2120;
  initial
    n2121 = 1'b0;
  /* T80.vhd:1199:9  */
  assign n2122 = ~n1784;
  /* T80.vhd:1218:17  */
  assign n2123 = n2122 ? n2021 : busack;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n)
    n2124 <= n2123;
  initial
    n2124 = 1'b0;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n or posedge n1784)
    if (n1784)
      n2125 <= 1'b0;
    else
      n2125 <= n2022;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2126 <= 2'b00;
    else
      n2126 <= n1185;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2127 <= 2'b00;
    else
      n2127 <= n1186;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n or posedge n1784)
    if (n1784)
      n2128 <= 3'b000;
    else
      n2128 <= n2023;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2129 <= 1'b0;
    else
      n2129 <= n1187;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n or posedge n1784)
    if (n1784)
      n2130 <= 1'b0;
    else
      n2130 <= n2024;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2131 <= 1'b0;
    else
      n2131 <= n1188;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n or posedge n1784)
    if (n1784)
      n2132 <= 1'b0;
    else
      n2132 <= n2025;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n or posedge n1784)
    if (n1784)
      n2133 <= 1'b0;
    else
      n2133 <= n2026;
  /* T80.vhd:933:17  */
  assign n2134 = clken ? n1402 : incdecz;
  /* T80.vhd:933:17  */
  always @(posedge clk_n)
    n2135 <= n2134;
  /* T80.vhd:1102:17  */
  assign n2136 = clken ? n1747 : busb;
  /* T80.vhd:1102:17  */
  always @(posedge clk_n)
    n2137 <= n2136;
  /* T80.vhd:1102:17  */
  assign n2138 = clken ? n1748 : busa;
  /* T80.vhd:1102:17  */
  always @(posedge clk_n)
    n2139 <= n2138;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2140 <= 5'b00000;
    else
      n2140 <= n1189;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2141 <= 1'b0;
    else
      n2141 <= n1190;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2142 <= 1'b0;
    else
      n2142 <= n1191;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2143 <= 4'b0000;
    else
      n2143 <= n1192;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2144 <= 1'b0;
    else
      n2144 <= n1193;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2145 <= 1'b0;
    else
      n2145 <= n1194;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2146 <= 3'b000;
    else
      n2146 <= n1195;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n or posedge n1784)
    if (n1784)
      n2147 <= 1'b0;
    else
      n2147 <= n2027;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n or posedge n1784)
    if (n1784)
      n2148 <= 1'b0;
    else
      n2148 <= n2028;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2149 <= 1'b0;
    else
      n2149 <= n1196;
  /* T80.vhd:1218:17  */
  always @(posedge clk_n or posedge n1784)
    if (n1784)
      n2150 <= 1'b1;
    else
      n2150 <= n2014;
  /* T80.vhd:1174:17  */
  assign n2151 = n1759 ? n1771 : n2152;
  /* T80.vhd:1174:17  */
  always @(posedge clk_n or posedge n1756)
    if (n1756)
      n2152 <= 1'b1;
    else
      n2152 <= n2151;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2153 <= 16'b0000000000000000;
    else
      n2153 <= n1171;
  /* T80.vhd:425:17  */
  always @(posedge clk_n or posedge n411)
    if (n411)
      n2154 <= 8'b00000000;
    else
      n2154 <= n1172;
endmodule

module T80s
  (input  RESET_n,
   input  CLK,
   input  CEN,
   input  WAIT_n,
   input  INT_n,
   input  NMI_n,
   input  BUSRQ_n,
   input  OUT0,
   input  [7:0] DI,
   output M1_n,
   output MREQ_n,
   output IORQ_n,
   output RD_n,
   output WR_n,
   output RFSH_n,
   output HALT_n,
   output BUSAK_n,
   output [15:0] A,
   output [7:0] DO);
  wire intcycle_n;
  wire noread;
  wire write;
  wire iorq;
  wire [7:0] di_reg;
  wire [2:0] mcycle;
  wire [2:0] tstate;
  wire u0_n10;
  wire u0_n11;
  wire u0_n12;
  wire u0_n13;
  wire u0_n14;
  wire u0_n15;
  wire u0_n16;
  wire [15:0] u0_n17;
  wire [7:0] u0_n18;
  wire [2:0] u0_n19;
  wire [2:0] u0_n20;
  wire u0_n21;
  localparam n24 = 1'b0;
  localparam n26 = 1'b0;
  localparam [211:0] n27 = 212'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  wire \u0.inte ;
  wire \u0.stop ;
  wire n57;
  wire n60;
  wire n62;
  wire n64;
  wire n65;
  wire n66;
  wire n67;
  wire n68;
  wire n69;
  wire n71;
  wire n73;
  wire n75;
  wire n77;
  wire n79;
  wire n81;
  wire n83;
  wire n84;
  wire n85;
  wire n86;
  wire n87;
  wire n88;
  wire n89;
  wire n90;
  wire n91;
  wire n93;
  wire n95;
  wire n98;
  wire n100;
  wire n102;
  wire n103;
  wire n104;
  wire n105;
  wire n106;
  wire n107;
  wire n108;
  wire n109;
  wire n112;
  wire n113;
  wire n115;
  wire n117;
  wire n120;
  wire n123;
  wire n124;
  wire n130;
  wire [7:0] n147;
  reg [7:0] n148;
  wire n149;
  reg n150;
  wire n151;
  reg n152;
  wire n153;
  reg n154;
  wire n155;
  reg n156;
  wire [211:0] n8181;
  assign M1_n = u0_n10; //(module output)
  assign MREQ_n = n150; //(module output)
  assign IORQ_n = n152; //(module output)
  assign RD_n = n154; //(module output)
  assign WR_n = n156; //(module output)
  assign RFSH_n = u0_n14; //(module output)
  assign HALT_n = u0_n15; //(module output)
  assign BUSAK_n = u0_n16; //(module output)
  assign A = u0_n17; //(module output)
  assign DO = u0_n18; //(module output)
  /* T80s.vhd:105:16  */
  assign intcycle_n = u0_n21; // (signal)
  /* T80s.vhd:106:16  */
  assign noread = u0_n12; // (signal)
  /* T80s.vhd:107:16  */
  assign write = u0_n13; // (signal)
  /* T80s.vhd:108:16  */
  assign iorq = u0_n11; // (signal)
  /* T80s.vhd:109:16  */
  assign di_reg = n148; // (signal)
  /* T80s.vhd:110:16  */
  assign mcycle = u0_n19; // (signal)
  /* T80s.vhd:111:16  */
  assign tstate = u0_n20; // (signal)
  /* T80s.vhd:115:9  */
  t80_0_1_0_1_2_3_4_5_6_7 u0 (
    .reset_n(RESET_n),
    .clk_n(CLK),
    .cen(CEN),
    .wait_n(WAIT_n),
    .int_n(INT_n),
    .nmi_n(NMI_n),
    .busrq_n(BUSRQ_n),
    .dinst(DI),
    .di(di_reg),
    .r800_mode(n24),
    .out0(OUT0),
    .dirset(n26),
    .dir(n27),
    .m1_n(u0_n10),
    .iorq(u0_n11),
    .noread(u0_n12),
    .write(u0_n13),
    .rfsh_n(u0_n14),
    .halt_n(u0_n15),
    .busak_n(u0_n16),
    .a(u0_n17),
    .do_sig(u0_n18),
    .mc(u0_n19),
    .ts(u0_n20),
    .intcycle_n(u0_n21),
    .inte(),
    .stop(),
    .\reg (n8181));
  /* T80s.vhd:146:28  */
  assign n57 = ~RESET_n;
  /* T80s.vhd:158:43  */
  assign n60 = mcycle == 3'b001;
  /* T80s.vhd:159:51  */
  assign n62 = tstate == 3'b001;
  /* T80s.vhd:159:66  */
  assign n64 = tstate == 3'b010;
  /* T80s.vhd:159:81  */
  assign n65 = ~WAIT_n;
  /* T80s.vhd:159:70  */
  assign n66 = n65 & n64;
  /* T80s.vhd:159:55  */
  assign n67 = n62 | n66;
  /* T80s.vhd:160:57  */
  assign n68 = ~intcycle_n;
  /* T80s.vhd:161:59  */
  assign n69 = ~intcycle_n;
  /* T80s.vhd:159:41  */
  assign n71 = n67 ? n69 : 1'b1;
  /* T80s.vhd:159:41  */
  assign n73 = n67 ? intcycle_n : 1'b1;
  /* T80s.vhd:159:41  */
  assign n75 = n67 ? n68 : 1'b1;
  /* T80s.vhd:164:51  */
  assign n77 = tstate == 3'b011;
  /* T80s.vhd:164:41  */
  assign n79 = n77 ? 1'b0 : n71;
  /* T80s.vhd:168:52  */
  assign n81 = tstate == 3'b001;
  /* T80s.vhd:168:67  */
  assign n83 = tstate == 3'b010;
  /* T80s.vhd:168:82  */
  assign n84 = ~WAIT_n;
  /* T80s.vhd:168:71  */
  assign n85 = n84 & n83;
  /* T80s.vhd:168:56  */
  assign n86 = n81 | n85;
  /* T80s.vhd:168:101  */
  assign n87 = ~noread;
  /* T80s.vhd:168:90  */
  assign n88 = n87 & n86;
  /* T80s.vhd:168:117  */
  assign n89 = ~write;
  /* T80s.vhd:168:107  */
  assign n90 = n89 & n88;
  /* T80s.vhd:170:59  */
  assign n91 = ~iorq;
  /* T80s.vhd:168:41  */
  assign n93 = n90 ? iorq : 1'b1;
  /* T80s.vhd:168:41  */
  assign n95 = n90 ? n91 : 1'b1;
  /* T80s.vhd:168:41  */
  assign n98 = n90 ? 1'b0 : 1'b1;
  /* T80s.vhd:180:60  */
  assign n100 = tstate == 3'b001;
  /* T80s.vhd:180:75  */
  assign n102 = tstate == 3'b010;
  /* T80s.vhd:180:90  */
  assign n103 = ~WAIT_n;
  /* T80s.vhd:180:79  */
  assign n104 = n103 & n102;
  /* T80s.vhd:180:64  */
  assign n105 = n100 | n104;
  /* T80s.vhd:180:98  */
  assign n106 = write & n105;
  /* T80s.vhd:182:67  */
  assign n107 = ~iorq;
  /* T80s.vhd:180:49  */
  assign n108 = n106 ? iorq : n93;
  /* T80s.vhd:180:49  */
  assign n109 = n106 ? n107 : n95;
  /* T80s.vhd:180:49  */
  assign n112 = n106 ? 1'b0 : 1'b1;
  /* T80s.vhd:158:33  */
  assign n113 = n60 ? n79 : n108;
  /* T80s.vhd:158:33  */
  assign n115 = n60 ? n73 : n109;
  /* T80s.vhd:158:33  */
  assign n117 = n60 ? n75 : n98;
  /* T80s.vhd:158:33  */
  assign n120 = n60 ? 1'b1 : n112;
  /* T80s.vhd:187:43  */
  assign n123 = tstate == 3'b010;
  /* T80s.vhd:187:47  */
  assign n124 = WAIT_n & n123;
  /* T80s.vhd:153:25  */
  assign n130 = n124 & CEN;
  /* T80s.vhd:152:17  */
  assign n147 = n130 ? DI : di_reg;
  /* T80s.vhd:152:17  */
  always @(posedge CLK or posedge n57)
    if (n57)
      n148 <= 8'b00000000;
    else
      n148 <= n147;
  /* T80s.vhd:152:17  */
  assign n149 = CEN ? n113 : n150;
  /* T80s.vhd:152:17  */
  always @(posedge CLK or posedge n57)
    if (n57)
      n150 <= 1'b1;
    else
      n150 <= n149;
  /* T80s.vhd:152:17  */
  assign n151 = CEN ? n115 : n152;
  /* T80s.vhd:152:17  */
  always @(posedge CLK or posedge n57)
    if (n57)
      n152 <= 1'b1;
    else
      n152 <= n151;
  /* T80s.vhd:152:17  */
  assign n153 = CEN ? n117 : n154;
  /* T80s.vhd:152:17  */
  always @(posedge CLK or posedge n57)
    if (n57)
      n154 <= 1'b1;
    else
      n154 <= n153;
  /* T80s.vhd:152:17  */
  assign n155 = CEN ? n120 : n156;
  /* T80s.vhd:152:17  */
  always @(posedge CLK or posedge n57)
    if (n57)
      n156 <= 1'b1;
    else
      n156 <= n155;
endmodule

