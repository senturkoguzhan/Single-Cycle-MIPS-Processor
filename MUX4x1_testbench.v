`define DELAY 20
module MUX4x1_testbench(); 
reg A0, A1, A2, A3, S0, S1;
wire Y;

MUX4x1 muxtb(Y, A0, A1, A2, A3, S0, S1);

initial begin
A0 = 1'b1; A1 = 1'b0; A2 = 1'b0; A3 = 1'b0; S0 = 1'b0; S1 = 1'b0;
#`DELAY;
A0 = 1'b0; A1 = 1'b1; A2 = 1'b0; A3 = 1'b0; S0 = 1'b1; S1 = 1'b0;
#`DELAY;
A0 = 1'b0; A1 = 1'b0; A2 = 1'b1; A3 = 1'b0; S0 = 1'b0; S1 = 1'b1;
#`DELAY;
A0 = 1'b0; A1 = 1'b0; A2 = 1'b0; A3 = 1'b1; S0 = 1'b1; S1 = 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, A0 =%1b, A1 =%1b, A2=%1b A3 =%1b, S0 =%1b, S1 =%1b Y =%1b", $time, A0, A1, A2, A3, S0, S1, Y);
end
 
endmodule