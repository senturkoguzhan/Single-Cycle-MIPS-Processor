`define DELAY 20

module CONTROL_testbench();

wire memread, memwrite, regwrite, regdest, branch, jump, alusrc1, alusrc0, aluop1, aluop0, memtoreg2, memtoreg1, memtoreg0, regtomem1, regtomem0;
reg [5:0] op;

CONTROL ctb(memread, memwrite, regwrite, regdest, branch, jump, alusrc1, alusrc0, aluop1, aluop0, memtoreg2, memtoreg1, memtoreg0, regtomem1, regtomem0, op);

initial begin
op = 6'b100000;
#`DELAY;
op = 6'b100100;
#`DELAY;
op = 6'b100001;
#`DELAY;
op = 6'b100101;
#`DELAY;
op = 6'b001111;
#`DELAY;
op = 6'b100011;
#`DELAY;
op = 6'b101000;
#`DELAY;
op = 6'b101001;
#`DELAY;
op = 6'b101011;
#`DELAY;
op = 6'b000000;
#`DELAY;
op = 6'b000100;
#`DELAY;
op = 6'b000010;
#`DELAY;
end

initial
begin
$monitor("op=%6b, memread=%1b, memwrite=%1b regwrite=%1b regdest=%1b branch=%1b jump=%1b alusrc1=%1b alusrc0=%1b aluop1=%1b aluop0=%1b memtoreg2=%1b memtoreg1=%1b memtoreg0=%1b regtomem1=%1b regtomem0=%1b", op, memread, memwrite, regwrite, regdest, branch, jump, alusrc1, alusrc0, aluop1, aluop0, memtoreg2, memtoreg1, memtoreg0, regtomem1, regtomem0);
end

endmodule