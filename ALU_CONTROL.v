module ALU_CONTROL(out, funct_field, alu_op);


input [5:0] funct_field;
input[1:0] alu_op;
output [2:0] out;
wire r1,r2,r3,r4;

//out<2>
and(r1,alu_op[1],funct_field[1]);
or(out[2],alu_op[0],r1);

//out<1>
not(r2,alu_op[1]);
not(r3,funct_field[2]);
or(out[1],r2,r3);

//out<0>
or(r4,funct_field[3],funct_field[0]);
and(out[0],alu_op[1],r4);



endmodule
