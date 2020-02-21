`define DELAY 20

module mips_instructions_testbench ();

	wire[31:0] ins;
	reg [31:0] PC;


mips_instructions instb(ins,PC);

	
initial begin
PC = 32'b0;
#`DELAY;
PC = 32'h00000001;
#`DELAY;
PC = 32'h00000002;
#`DELAY;
end

initial
begin
$monitor("pc =%32b, ins=%8h", PC, ins);
end



endmodule

