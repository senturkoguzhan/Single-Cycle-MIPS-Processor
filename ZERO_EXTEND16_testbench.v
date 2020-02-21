`define DELAY 20
module ZERO_EXTEND16_testbench(); 

wire [31:0] out;
reg [15:0] in;

ZERO_EXTEND16 zeroex16tb(out, in);

initial begin
in = 16'b1111111111111111; 
#`DELAY;
in = 16'b0000000000000000; 
#`DELAY;
end
 
 
initial
begin
$monitor("in =%16b, out=%32b ", in, out);
end
 
endmodule