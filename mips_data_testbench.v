module mips_data_testbench ();

wire [31:0] read_data;
reg [31:0] mem_address;
reg [31:0] write_data;
reg sig_mem_read;
reg sig_mem_write;
reg [1:0]s;
reg clk;
reg  [7:0]  counter;

	always 
	begin
			#5 clk = ~clk;
	end

initial begin
mem_address = 32'h00000000; write_data= 32'hffffffff; sig_mem_read=1'b1; sig_mem_write=1'b0; clk=0; s=2'b00; counter=0;
end

mips_data datatb(read_data,mem_address,write_data,sig_mem_read,sig_mem_write,s,clk);

always @(posedge clk)
begin
counter <= counter +1;

	if(counter == 32'h00000001)
	begin
			mem_address = 32'h00000001; write_data= 32'hffffffff; sig_mem_read=1'b1; sig_mem_write=1'b0; s=2'b00;
	end
	
	if(counter == 32'h00000002)
	begin
			mem_address = 32'h00000002; write_data= 32'hffffffff; sig_mem_read=1'b0; sig_mem_write=1'b1; s=2'b01; 

	end
	
	if(counter == 32'h00000003)
	begin
			mem_address = 32'h00000003; write_data= 32'hffffffff; sig_mem_read=1'b0; sig_mem_write=1'b1; s=2'b10; 

	end
	
	if(counter == 32'h00000004)
	begin
		$finish;
	end
	
	$monitor(" mem_address =%8h, write_data=%8h, sig_mem_read=%1b, sig_mem_write=%1b, s= %2b, read_data=%8h", mem_address, write_data,sig_mem_read,sig_mem_write,s,read_data);
end


endmodule