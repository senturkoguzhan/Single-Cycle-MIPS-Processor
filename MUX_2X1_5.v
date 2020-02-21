module MUX_2X1_5(out,A,B,S);
input [4:0] A,B;
input S;
output [4:0] out;
wire [4:0] s1,r1,r2,r3;

or (s1[0], 1'b0, S);
or (s1[1], 1'b0, S);
or (s1[2], 1'b0, S);
or (s1[3], 1'b0, S);
or (s1[4], 1'b0, S);

xor(r1[4],1'b1,s1[4]);
xor(r1[3],1'b1,s1[3]);
xor(r1[2],1'b1,s1[2]);
xor(r1[1],1'b1,s1[1]);
xor(r1[0],1'b1,s1[0]);

and(r2[4],A[4],r1[4]);
and(r2[3],A[3],r1[3]);
and(r2[2],A[2],r1[2]);
and(r2[1],A[1],r1[1]);
and(r2[0],A[0],r1[0]);

and(r3[4],B[4],s1[4]);
and(r3[3],B[3],s1[3]);
and(r3[2],B[2],s1[2]);
and(r3[1],B[1],s1[1]);
and(r3[0],B[0],s1[0]);

or(out[4],r2[4],r3[4]);
or(out[3],r2[3],r3[3]);
or(out[2],r2[2],r3[2]);
or(out[1],r2[1],r3[1]);
or(out[0],r2[0],r3[0]);

endmodule