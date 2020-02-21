module MUX_5X1_32(out2,i0,i1,i2,i3,i4,s0);
input [31:0] i0,i1,i2,i3,i4;
input [2:0]s0;
//input s1;
output [31:0] out2;
wire [31:0]w1,w2,out;
MUX_2X1_32 mux_1(w1,i0,i1,s0[0]);
MUX_2X1_32 mux_2(w2,i2,i3,s0[0]);
MUX_2X1_32 mux_3(out,w1,w2,s0[1]);
MUX_2X1_32 mux_4(out2,out,i4,s0[2]);
endmodule