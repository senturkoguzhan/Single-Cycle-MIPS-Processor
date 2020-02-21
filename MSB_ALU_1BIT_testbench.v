`define DELAY 20
module MSB_ALU_1BIT_testbench(); 
reg A_i, B_i, c_in;
reg [2:0]OP; 
reg slt;
wire R, c_out, V, set;

MSB_ALU_1BIT msbalutb(R, c_out, V, set, A_i, B_i, c_in, OP , slt);

initial begin
A_i = 1'b1; B_i = 1'b0; c_in = 1'b0; OP = 3'b000; slt = 1'b0;
#`DELAY;
A_i = 1'b1; B_i = 1'b0; c_in = 1'b0; OP = 3'b001; slt = 1'b0;
#`DELAY;
A_i = 1'b1; B_i = 1'b1; c_in = 1'b0; OP = 3'b010; slt = 1'b0;
#`DELAY;
A_i = 1'b1; B_i = 1'b0; c_in = 1'b1; OP = 3'b110; slt = 1'b0;
#`DELAY;
A_i = 1'b1; B_i = 1'b1; c_in = 1'b1; OP = 3'b111; slt = 1'b0;
end
 
 
initial
begin
$monitor("time = %2d, A_i =%1b, B_i =%1b, c_in=%1b OP =%3b, SLT =%1b, R =%1b c_out =%1b V =%1b set =%1b", $time, A_i, B_i, c_in, OP , slt, R, c_out, V, set);
end
 
endmodule