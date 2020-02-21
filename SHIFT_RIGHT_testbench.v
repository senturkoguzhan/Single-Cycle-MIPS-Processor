`define DELAY 20
module SHIFT_RIGHT_testbench(); 

reg [31:0]  A;  
reg [31:0]  B;
wire [31:0] R;
reg S;

	
SHIFT_RIGHT shritb(R,A,B,S);

initial begin
A= 32'hffffffff;
B = 32'h00000001;
S = 1'b1;

#`DELAY;

A= 32'hffffffff;
B = 32'h00000004;
S = 1'b0;

#`DELAY;



end
 
initial
begin
$monitor("A =%32b, B=%32b, R=%32b", A, B, R);
end
 
endmodule