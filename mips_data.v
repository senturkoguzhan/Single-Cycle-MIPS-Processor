module mips_data (read_data, mem_address, write_data, sig_mem_read, sig_mem_write, s, clk);
output reg [31:0] read_data;
input [31:0] mem_address;
input [31:0] write_data;
input sig_mem_read;
input sig_mem_write;
input [1:0]s;
input clk;

reg [31:0] mem  [255:0];
			
	always @(*)
	begin
		$readmemh("data.mem" , mem);
		if(sig_mem_read == 1'b1)
		begin
			read_data = mem[mem_address];	
		end
	end

	always @(posedge clk)
	begin
		if(sig_mem_write == 1'b1)
		begin
		
			if(s[0] == 1'b0)
			begin		
				if(s[1] == 1'b0)
				begin		
					mem[mem_address] = write_data;	
					$writememh("data.mem" , mem);	
				end	
			end
			
			if(s[0]== 1'b1)
			begin		
				if(s[1] == 1'b0)
				begin		
					mem[mem_address][15:0] = write_data[15:0];	
					$writememh("data.mem" , mem);	
				end	
			end
			
			if(s[0] == 1'b0)
			begin		
				if(s[1] == 1'b1)
				begin		
					mem[mem_address][7:0] = write_data[7:0];	
					$writememh("data.mem" , mem);	
				end	
			end
		end
	end
endmodule
