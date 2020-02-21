module mips_instructions (
	output [31:0] ins,
	input [31:0] PC
	);

	//Depends on number of instruction in file
	reg [31:0] instruction_memory [18:0];

	//reads the instructions.
	initial begin
		$readmemh("instructions.mem", instruction_memory);
	end

	or or1(ins[31],1'b0,instruction_memory[PC][31]);
	or or2(ins[30],1'b0,instruction_memory[PC][30]);
	or or3(ins[29],1'b0,instruction_memory[PC][29]);
	or or4(ins[28],1'b0,instruction_memory[PC][28]);
	or or5(ins[27],1'b0,instruction_memory[PC][27]);
	or or6(ins[26],1'b0,instruction_memory[PC][26]);
	or or7(ins[25],1'b0,instruction_memory[PC][25]);
	or or8(ins[24],1'b0,instruction_memory[PC][24]);
	or or9(ins[23],1'b0,instruction_memory[PC][23]);
	or or10(ins[22],1'b0,instruction_memory[PC][22]);
	or or11(ins[21],1'b0,instruction_memory[PC][21]);
	or or12(ins[20],1'b0,instruction_memory[PC][20]);
	or or13(ins[19],1'b0,instruction_memory[PC][19]);
	or or14(ins[18],1'b0,instruction_memory[PC][18]);
	or or15(ins[17],1'b0,instruction_memory[PC][17]);
	or or16(ins[16],1'b0,instruction_memory[PC][16]);
	or or17(ins[15],1'b0,instruction_memory[PC][15]);
	or or18(ins[14],1'b0,instruction_memory[PC][14]);
	or or19(ins[13],1'b0,instruction_memory[PC][13]);
	or or20(ins[12],1'b0,instruction_memory[PC][12]);
	or or21(ins[11],1'b0,instruction_memory[PC][11]);
	or or22(ins[10],1'b0,instruction_memory[PC][10]);
	or or23(ins[9],1'b0,instruction_memory[PC][9]);
	or or24(ins[8],1'b0,instruction_memory[PC][8]);
	or or25(ins[7],1'b0,instruction_memory[PC][7]);
	or or26(ins[6],1'b0,instruction_memory[PC][6]);
	or or27(ins[5],1'b0,instruction_memory[PC][5]);
	or or28(ins[4],1'b0,instruction_memory[PC][4]);
	or or29(ins[3],1'b0,instruction_memory[PC][3]);
	or or30(ins[2],1'b0,instruction_memory[PC][2]);
	or or31(ins[1],1'b0,instruction_memory[PC][1]);
	or or32(ins[0],1'b0,instruction_memory[PC][0]);
	
endmodule