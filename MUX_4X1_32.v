module MUX_4X1_32(out,i0,i1,i2,i3,s);
input [31:0] i0,i1,i2,i3;
input [1:0]s;
output [31:0] out;
wire [31:0]w1,w2;
MUX_2X1_32 mux_1(w1,i0,i1,s[0]);
MUX_2X1_32 mux_2(w2,i2,i3,s[0]);
MUX_2X1_32 mux_3(out,w1,w2,s[1]);
endmodule