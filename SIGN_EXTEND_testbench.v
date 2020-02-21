`define DELAY 20
module SIGN_EXTEND_testbench(); 

wire [31:0] out;
reg [15:0] in;

SIGN_EXTEND signextb(out, in);

initial begin
in = 16'b0111111111111111; 
#`DELAY;
in = 16'b1000000000000000; 
#`DELAY;
end
 
initial
begin
$monitor("in =%16b, out=%32b ", in, out);
end
 
endmodule