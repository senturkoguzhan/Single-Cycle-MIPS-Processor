module mips_registers_testbench ();

wire [31:0] read_data_1;
wire [31:0] read_data_2;
reg [31:0] write_data;
reg [4:0] read_reg_1;
reg [4:0] read_reg_2;
reg [4:0] write_reg;
reg sig_reg_write;
reg clk;
reg  [7:0]  counter;

	always 
	begin
			#5 clk = ~clk;
	end

initial begin
read_reg_1 =5'b0; read_reg_2 =5'b1; write_data=32'hFFFFFFFF; write_reg = 5'b00001; sig_reg_write=1'b0; clk=0; counter=0;
end

mips_registers registertb(read_data_1,read_data_2,write_data,read_reg_1,read_reg_2,write_reg,sig_reg_write,clk);

always @(negedge clk)
begin
counter <= counter +1;
	if(counter == 32'h00000001)
	begin
			read_reg_1 =5'b00010; read_reg_2 =5'b00011; write_data=32'hFFFFFFFF; write_reg = 5'b0; sig_reg_write=1'b1;
	end

	if(counter == 32'h00000002)
	begin
		$finish;
	end
	
	$monitor("readreg1 =%5b, readreg2=%5b, writereg=%5b, writedata=%8h sig_reg_write=%1b, readdata1=%8h readdata2=%8h", read_reg_1, read_reg_2,write_reg,write_data,sig_reg_write,read_data_1,read_data_2);

end

endmodule