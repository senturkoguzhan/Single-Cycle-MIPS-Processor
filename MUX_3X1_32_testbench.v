`define DELAY 20
module MUX_3X1_32_testbench(); 

	wire [31:0] out;
	reg [31:0] a;
	reg [31:0] b;
	reg [31:0] c;
	reg [1:0] s;
	
	
MUX_3X1_32 mux3x132tb(out, a, b, c, s);

initial begin
a = 32'h00000000;
b = 32'h00000001;
c = 32'h00000002;
s = 2'b00;
#`DELAY;
a = 32'h00000000;
b = 32'h00000001;
c = 32'h00000002;
s = 2'b01;
#`DELAY;
a = 32'h00000000;
b = 32'h00000001;
c = 32'h00000002;
s = 2'b10;
#`DELAY;

end
 
 
initial
begin
$monitor("a =%32b, b=%32b, c=%32b s=%2b out=%32b ", a, b, c, s, out);
end
 
endmodule