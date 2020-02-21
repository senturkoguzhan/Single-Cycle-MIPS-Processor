`define DELAY 20
module UPPER_IMMED_testbench(); 

wire [31:0] out;
reg [15:0] in;

UPPER_IMMED upptb(out, in);

initial begin
in = 16'hFFFF; 
#`DELAY;
in = 16'h1111; 
#`DELAY;
end
 
initial
begin
$monitor("in =%16b, out=%32b ", in, out);
end
 
endmodule