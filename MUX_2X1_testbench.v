`define DELAY 20
module MUX_2X1_testbench(); 

	wire out;
	reg a,b,s;
	
MUX_2X1 mux2x1tb(out, a, b, s);

initial begin
a = 1'b0;
b = 1'b1;
s = 1'b0;
#`DELAY;
a = 1'b0;
b = 1'b1;
s = 1'b1;
#`DELAY;
end
 
 
initial
begin
$monitor("a =%1b, b=%1b  s=%1b out=%1b ", a, b, s, out);
end
 
endmodule