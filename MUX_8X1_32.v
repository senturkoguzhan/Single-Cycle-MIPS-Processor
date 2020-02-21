module MUX_8X1_32(R,A1,A2,A3,A4,A5,A6,A7,A8,S);
input [31:0] A1,A2,A3,A4,A5,A6,A7,A8;
input [2:0] S;
output [31:0] R;
wire [31:0] r1,r2;

MUX_4X1_32 m1(r1,A1,A2,A3,A4,{S[1],S[0]});
MUX_4X1_32 m2(r2,A5,A6,A7,A8,{S[1],S[0]});
MUX_2X1_32 m3(R,r1,r2,S[2]);

endmodule