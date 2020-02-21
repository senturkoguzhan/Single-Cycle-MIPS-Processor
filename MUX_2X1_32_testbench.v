`define DELAY 20
module MUX_2X1_32_testbench(); 

	wire [31:0] out;
	reg [31:0] a;
	reg [31:0] b;
	reg s;
	
	
	MUX_2X1_32 mux2x132tb(out, a, b, s);

	initial begin
	a = 32'b0;
	b = 32'b1;
	s = 1'b0;
	#`DELAY;
	a = 32'b0;
	b = 32'b1;
	s = 1'b1;
	#`DELAY;
	end
	 
	 
	initial
	begin
	$monitor("a =%32b, b=%32b  s=%1b out=%32b ", a, b, s, out);
	end
 
endmodule