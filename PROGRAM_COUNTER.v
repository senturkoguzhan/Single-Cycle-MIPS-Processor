module PROGRAM_COUNTER( 
	output reg[31:0] nextpc,
	input [31:0] pc,
	input branch,
	input clock
	);
	
	initial
		begin
			nextpc = 0;
		end
		
	always @(posedge clock)	
		begin

		if(branch == 1)
		begin
		nextpc=pc;
		end
		else begin
					nextpc = nextpc+ 1;
		end
		end
	
endmodule
