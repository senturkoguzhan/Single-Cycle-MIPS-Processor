`define DELAY 20
module FULL_ADDER_32_testbench();

reg [31:0] x;
reg [31:0] y;
reg cin;
wire cout;
wire [31:0] resadder;

FULL_ADDER_32 fa32tb(resadder, cout, x, y, cin);
initial begin
x = 32'h00000000; y = 32'h00000000; cin =1'b1;
#`DELAY;
x = 32'h00000000; y = 32'h00000000; cin =1'b0;
#`DELAY;
x = 32'h00000001; y = 32'h00000002; cin =1'b0;
#`DELAY;
end

initial
begin
$monitor("x =%32b, y =%32b, cin=%1b cout=%1b res=%32b", x, y, cin, cout ,resadder);
end

endmodule