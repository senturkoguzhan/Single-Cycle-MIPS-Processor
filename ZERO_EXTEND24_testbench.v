`define DELAY 20
module ZERO_EXTEND24_testbench(); 

wire [31:0] out;
reg [7:0] in;

ZERO_EXTEND24 zeroex24tb(out, in);

initial begin
in = 8'b11111111; 
#`DELAY;
in = 8'b00000000; 
#`DELAY;
end
 
 
initial
begin
$monitor("in =%8b, out=%32b ", in, out);
end
 
endmodule