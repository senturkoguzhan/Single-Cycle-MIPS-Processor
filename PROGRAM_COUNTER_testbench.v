module PROGRAM_COUNTER_testbench();

	wire[31:0] nextpc ;
	reg clk;
	reg  [7:0]  counter;
	
	
	always 
	begin
			#5 clk = ~clk;
	end
	
	initial begin
	clk=0; counter=0;
	end
	
	PROGRAM_COUNTER pctb(nextpc,clk);
	
	always @(negedge clk)
	begin
	counter <= counter +1;
	$monitor("PC= %32b",nextpc);
		if(counter == 32'h00000004)
		begin
			$finish;
		end
	end

endmodule
