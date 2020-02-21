module MUX_3X1_32(
output [31:0]out2,
input [31:0]A,
input [31:0]B,
input [31:0]C,
input [1:0]s);

    wire[31:0] mux1_out;

    MUX_2X1_32 m1(mux1_out,A,B,s[0]);
    MUX_2X1_32 m2(out2,mux1_out,C,s[1]);

endmodule