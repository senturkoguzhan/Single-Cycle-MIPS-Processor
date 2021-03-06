module FULL_ADDER_32(resadder, cout, x, y, cin);
input [31:0] x;
input [31:0] y;
input cin;
output cout;
output [31:0] resadder;
wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31;

FULL_ADDER FA0(resadder[0], c1, x[0], y[0], cin);
FULL_ADDER FA1(resadder[1], c2, x[1], y[1], c1);
FULL_ADDER FA2(resadder[2], c3, x[2], y[2], c2);
FULL_ADDER FA3(resadder[3], c4, x[3], y[3], c3);
FULL_ADDER FA4(resadder[4], c5, x[4], y[4], c4);
FULL_ADDER FA5(resadder[5], c6, x[5], y[5], c5);
FULL_ADDER FA6(resadder[6], c7, x[6], y[6], c6);
FULL_ADDER FA7(resadder[7], c8, x[7], y[7], c7);
FULL_ADDER FA8(resadder[8], c9, x[8], y[8], c8);
FULL_ADDER FA9(resadder[9], c10, x[9], y[9], c9);
FULL_ADDER FA10(resadder[10], c11, x[10], y[10], c10);
FULL_ADDER FA11(resadder[11], c12, x[11], y[11], c11);
FULL_ADDER FA12(resadder[12], c13, x[12], y[12], c12);
FULL_ADDER FA13(resadder[13], c14, x[13], y[13], c13);
FULL_ADDER FA14(resadder[14], c15, x[14], y[14], c14);
FULL_ADDER FA15(resadder[15], c16, x[15], y[15], c15);
FULL_ADDER FA16(resadder[16], c17, x[16], y[16], c16);
FULL_ADDER FA17(resadder[17], c18, x[17], y[17], c17);
FULL_ADDER FA18(resadder[18], c19, x[18], y[18], c18);
FULL_ADDER FA19(resadder[19], c20, x[19], y[19], c19);
FULL_ADDER FA20(resadder[20], c21, x[20], y[20], c20);
FULL_ADDER FA21(resadder[21], c22, x[21], y[21], c21);
FULL_ADDER FA22(resadder[22], c23, x[22], y[22], c22);
FULL_ADDER FA23(resadder[23], c24, x[23], y[23], c23);
FULL_ADDER FA24(resadder[24], c25, x[24], y[24], c24);
FULL_ADDER FA25(resadder[25], c26, x[25], y[25], c25);
FULL_ADDER FA26(resadder[26], c27, x[26], y[26], c26);
FULL_ADDER FA27(resadder[27], c28, x[27], y[27], c27);
FULL_ADDER FA28(resadder[28], c29, x[28], y[28], c28);
FULL_ADDER FA29(resadder[29], c30, x[29], y[29], c29);
FULL_ADDER FA30(resadder[30], c31, x[30], y[30], c30);
FULL_ADDER FA31(resadder[31], cout, x[31], y[31], c31);
		
endmodule