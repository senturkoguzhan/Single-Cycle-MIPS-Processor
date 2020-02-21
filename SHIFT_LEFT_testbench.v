`define DELAY 20
module SHIFT_LEFT_testbench(); 

reg [31:0]  A;  
reg [31:0]  B;
wire [31:0] R;

	
SHIFT_LEFT shletb(R,A,B);

initial begin
A= 32'hffffffff;
B = 32'h00000001;

#`DELAY;

A= 32'hffffffff;
B = 32'h00000002;

#`DELAY;

A= 32'hffffffff;
B = 32'h00000003;

#`DELAY;


end
 
initial
begin
$monitor("A =%32b, B=%32b, R=%32b", A, B, R);
end
 
endmodule