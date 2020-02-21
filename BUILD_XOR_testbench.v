`define DELAY 20
module BUILD_XOR_testbench(); 
reg a, b;
wire c;

BUILD_XOR xortb(c, a, b);

initial begin
a = 1'b0; b = 1'b0;
#`DELAY;
a = 1'b1; b = 1'b0;
#`DELAY;
a = 1'b0; b = 1'b1;
#`DELAY;
a = 1'b1; b = 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, a =%1b, b=%1b, c=%1b ", $time, a, b, c);
end
 
endmodule