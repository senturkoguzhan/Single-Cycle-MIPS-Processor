`define DELAY 20
module MUX_2X1_5_testbench(); 

	wire [5:0] out;
	reg [5:0] a;
	reg [5:0] b;
	reg s;
	
MUX_2X1_5 mux2x15tb(out, a, b, s);

initial begin
a = 5'b00000;
b = 5'b00001;
s = 1'b0;
#`DELAY;
a = 5'b00000;
b = 5'b00001;
s = 1'b1;
#`DELAY;
end
 
initial
begin
$monitor("a =%5b, b=%5b, s=%1b out=%5b ", a, b, s, out);
end
 
endmodule