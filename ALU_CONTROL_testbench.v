`define DELAY 20

module ALU_CONTROL_testbench();


reg [5:0] funct_field;
reg [2:0] alu_op;
wire [2:0] out;

ALU_CONTROL aluctrltb(out,funct_field,alu_op);

initial begin
//add
funct_field = 6'b100000;
alu_op = 2'b10;
#`DELAY;
//subtract
funct_field = 6'b100010;
alu_op = 2'b10;
#`DELAY;
//and
funct_field = 6'b100100;
alu_op = 2'b10;
#`DELAY;
//or
funct_field = 6'b100101;
alu_op = 2'b10;
#`DELAY;
//slt
funct_field = 6'b101010;
alu_op = 2'b10;
#`DELAY;
//lw,sw
funct_field = 6'bxxxxxx;
alu_op = 2'b00;
//beq
funct_field = 6'bxxxxxx;
alu_op = 2'b01;
end

initial
begin
$monitor("funct_field=%6b, alu_op=%2b, out=%3b",funct_field, alu_op, out);
end

endmodule