`define DELAY 20
module MUX_4X1_32_testbench(); 

	wire [31:0] out;
	reg [31:0] a;
	reg [31:0] b;
	reg [31:0] c;
	reg [31:0] d;
	reg [1:0] s;
	
MUX_4X1_32 mux4x132tb(out, a, b, c, d, s);

initial begin
a = 32'h00000000;
b = 32'h00000001;
c = 32'h00000002;
d = 32'h00000003;
s = 2'b00;
#`DELAY;
a = 32'h00000000;
b = 32'h00000001;
c = 32'h00000002;
d = 32'h00000003;
s = 2'b01;
#`DELAY;
a = 32'h00000000;
b = 32'h00000001;
c = 32'h00000002;
d = 32'h00000003;
s = 2'b10;
#`DELAY;
a = 32'h00000000;
b = 32'h00000001;
c = 32'h00000002;
d = 32'h00000003;
s = 2'b11;
#`DELAY;

end
 
initial
begin
$monitor("a =%32b, b=%32b, c=%32b d=%32b s=%2b out=%32b ", a, b, c, d, s, out);
end
 
endmodule