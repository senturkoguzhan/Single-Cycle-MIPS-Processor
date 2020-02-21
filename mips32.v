module mips32(clk);

wire [31:0] pc;
wire [31:0] instruction;
wire [4:0] rs, rt, rd, writeregmux, shamt;
wire [5:0] op_code;
wire [15:0] immediate;
wire [5:0] funct_field;
wire memread,memwrite,regwrite,branch,jump,alusrc1,alusrc0,aluop1,aluop0,memtoreg2,memtoreg1,memtoreg0,regtomem1,regtomem0,regdest,newselect2,newselect1,newselect0;
wire [31:0] signout;
wire [31:0] read_data_1;
wire [31:0] read_data_2;
wire [31:0] read_data;
wire [31:0] alures;
wire [31:0] shifout;
wire [31:0] fares;
wire [31:0] zerout;
wire [31:0] muxout;
wire [31:0] mux2out;
wire [31:0] mux3out;
wire [31:0] lvar16;
wire [31:0] lvar8;
wire [31:0] svar16;
wire [31:0] svar8;
wire [31:0] writedatamem;
wire [31:0] writedatareg;
wire [31:0] jump_address;
wire [31:0] upperout;
wire [2:0] alucontrolout;
wire c;
wire v;
wire z;
wire branchsel;
input clk;

PROGRAM_COUNTER pcm(pc,mux3out,branch,clk);
mips_instructions im(instruction,pc);

//Opcode
or (op_code[0], instruction[26],1'b0);
or (op_code[1], instruction[27],1'b0);
or (op_code[2], instruction[28],1'b0);
or (op_code[3], instruction[29],1'b0);
or (op_code[4], instruction[30],1'b0);
or (op_code[5], instruction[31],1'b0);
//rs
or (rs[0], instruction[21],1'b0);
or (rs[1], instruction[22],1'b0);
or (rs[2], instruction[23],1'b0);
or (rs[3], instruction[24],1'b0);
or (rs[4], instruction[25],1'b0);
//rt
or (rt[0], instruction[16],1'b0);
or (rt[1], instruction[17],1'b0);
or (rt[2], instruction[18],1'b0);
or (rt[3], instruction[19],1'b0);
or (rt[4], instruction[20],1'b0);
//rd
or (rd[0], instruction[11],1'b0);
or (rd[1], instruction[12],1'b0);
or (rd[2], instruction[13],1'b0);
or (rd[3], instruction[14],1'b0);
or (rd[4], instruction[15],1'b0);
//funct_field
or (funct_field[0], instruction[0],1'b0);
or (funct_field[1], instruction[1],1'b0);
or (funct_field[2], instruction[2],1'b0);
or (funct_field[3], instruction[3],1'b0);
or (funct_field[4], instruction[4],1'b0);
or (funct_field[5], instruction[5],1'b0);
//shamt
or (shamt[0], instruction[6], 1'b0);
or (shamt[1], instruction[7], 1'b0);
or (shamt[2], instruction[8], 1'b0);
or (shamt[3], instruction[9], 1'b0);
or (shamt[4], instruction[10], 1'b0);
//immediate
or (immediate[0], instruction[0],1'b0);
or (immediate[1], instruction[1],1'b0);
or (immediate[2], instruction[2],1'b0);
or (immediate[3], instruction[3],1'b0);
or (immediate[4], instruction[4],1'b0);
or (immediate[5], instruction[5],1'b0);
or (immediate[6], instruction[6],1'b0);
or (immediate[7], instruction[7],1'b0);
or (immediate[8], instruction[8],1'b0);
or (immediate[9], instruction[9],1'b0);
or (immediate[10], instruction[10],1'b0);
or (immediate[11], instruction[11],1'b0);
or (immediate[12], instruction[12],1'b0);
or (immediate[13], instruction[13],1'b0);
or (immediate[14], instruction[14],1'b0);
or (immediate[15], instruction[15],1'b0);
//jump_address
or (jump_address[0], instruction[0],1'b0);
or (jump_address[1], instruction[1],1'b0);
or (jump_address[2], instruction[2],1'b0);
or (jump_address[3], instruction[3],1'b0);
or (jump_address[4], instruction[4],1'b0);
or (jump_address[5], instruction[5],1'b0);
or (jump_address[6], instruction[6],1'b0);
or (jump_address[7], instruction[7],1'b0);
or (jump_address[8], instruction[8],1'b0);
or (jump_address[9], instruction[9],1'b0);
or (jump_address[10], instruction[10],1'b0);
or (jump_address[11], instruction[11],1'b0);
or (jump_address[12], instruction[12],1'b0);
or (jump_address[13], instruction[13],1'b0);
or (jump_address[14], instruction[14],1'b0);
or (jump_address[15], instruction[15],1'b0);
or (jump_address[16], instruction[16],1'b0);
or (jump_address[17], instruction[17],1'b0);
or (jump_address[18], instruction[18],1'b0);
or (jump_address[19], instruction[19],1'b0);
or (jump_address[20], instruction[20],1'b0);
or (jump_address[21], instruction[21],1'b0);
or (jump_address[22], instruction[22],1'b0);
or (jump_address[23], instruction[23],1'b0);
or (jump_address[24], instruction[24],1'b0);
or (jump_address[25], instruction[25],1'b0);
or (jump_address[26], 1'b0,1'b0);
or (jump_address[27], 1'b0,1'b0);
or (jump_address[28], pc[28],1'b0);
or (jump_address[29], pc[29],1'b0);
or (jump_address[30], pc[30],1'b0);
or (jump_address[31], pc[31],1'b0);


CONTROL cm(memread,memwrite,regwrite,regdest,branch,jump,alusrc1,alusrc0,aluop1,aluop0,memtoreg2,memtoreg1,memtoreg0,regtomem1,regtomem0,newselect2,newselect1,newselect0,op_code);
MUX_2X1_32 mux3m(mux3out,mux2out,jump_address,jump);
MUX_2X1_5 regdstmux(writeregmux,rt,rd,regdest);
mips_registers rm( read_data_1, read_data_2, writedatareg, rs, rt, writeregmux, regwrite, clk );
SIGN_EXTEND sem(signout,immediate);
ZERO_EXTEND16 zem(zerout,immediate);
SHIFT_LEFT slm(shifout,signout,32'h00000002);
FULL_ADDER_32 fam(fares,c,pc,shifout,1'b0);
and andmod(branchsel,branch,z);
MUX_2X1_32 mux2m(mux2out,pc,fares,branchsel);
//MUX_2X1_32 muxm(muxout,signout,zerout,fasrc);
MUX_3X1_32 muxm(muxout,signout,zerout,read_data_2,{alusrc1,alusrc0});
//FULL_ADDER_32 fam(alures,c,read_data_1,muxout,1'b0);
ALU_CONTROL aluctrlm(alucontrolout,funct_field,{aluop1,aluop0});
ALU_32BIT alum(alures,c,v,z,read_data_1,muxout,alucontrolout,{newselect2,newselect1,newselect0});
mips_data dm(read_data,alures,writedatamem,memread,memwrite,{regtomem1,regtomem0},clk);

ZERO_EXTEND16 zem2(lvar16,read_data[15:0]);
ZERO_EXTEND24 zem3(lvar8,read_data[7:0]);
UPPER_IMMED upm(upperout,immediate);
MUX_5X1_32 mux1(writedatareg,read_data,lvar16,lvar8,upperout,alures,{memtoreg2,memtoreg1,memtoreg0});
ZERO_EXTEND16 zem4(svar16,read_data_2[15:0]);
ZERO_EXTEND24 zem5(svar8,read_data_2[7:0]);
MUX_3X1_32 mux2(writedatamem,read_data_2,svar16,svar8,{regtomem1,regtomem0});


initial
begin
$monitor("Instruction: %8H, ALUResult : %8H, RS Content: %8H, RT Content: %8h, RegDest: %5b, Writedatamem: %8H ,PC : %8H ",instruction,alures,read_data_1,read_data_2,writeregmux,read_data,pc);
end

endmodule