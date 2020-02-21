module mips32_testbench ();

	reg clk;
	reg  [7:0]  counter;

	always 
	begin
		#5 clk = ~clk;
	end
		
	initial begin
			clk= 0;
			counter= 0;
	end

	mips32 mtb(clk);

	always @(posedge clk)
	begin
	counter = counter +1;
		//18 instructions
		if(counter == 8'h14)
		begin
			$finish;
		end
	end

endmodule