module CONTROL(memread, memwrite, regwrite, regdest, branch, jump, alusrc1, alusrc0, aluop1, aluop0, memtoreg2, memtoreg1, memtoreg0, regtomem1, regtomem0,newselect2,newselect1,newselect0, op);
output memread, memwrite, regwrite, regdest, branch, jump, alusrc1, alusrc0 , aluop1, aluop0, memtoreg2, memtoreg1, memtoreg0, regtomem1, regtomem0, newselect2,newselect1,newselect0;
input [5:0] op;
wire op0_not, op1_not, op2_not, op3_not, op4_not, op5_not;
wire sig_lb, sig_lbu, sig_lh, sig_lhu, sig_lw, sig_lui, sig_sb, sig_sh, sig_sw, sig_rtype, sig_addi, sig_addiu, sig_beq, sig_jump,sig_newins1,sig_newins2,sig_newins3,sig_newins4,sig_newins5,sig_newins6;

not op0_inv(op0_not, op[0]);
not op1_inv(op1_not, op[1]);
not op2_inv(op2_not, op[2]);
not op3_inv(op3_not, op[3]);
not op4_inv(op4_not, op[4]);
not op5_inv(op5_not, op[5]);

and and_lb(sig_lb, op[5], op4_not, op3_not, op2_not, op1_not, op0_not);
and and_lbu(sig_lbu, op[5], op4_not, op3_not, op[2],op1_not, op0_not);
and and_lh(sig_lh, op[5], op4_not, op3_not, op2_not, op1_not, op[0]);
and and_lhu(sig_lhu, op[5], op4_not, op3_not, op[2], op1_not, op[0]);
and and_lui(sig_lui, op5_not, op4_not, op[3], op[2], op[1], op[0]);
and and_lw(sig_lw, op[5], op4_not, op3_not, op2_not, op[1], op[0]);
and and_sb(sig_sb, op[5], op4_not, op[3], op2_not, op1_not, op0_not);
and and_sh(sig_sh, op[5], op4_not, op[3], op2_not, op1_not, op[0]);
and and_sw(sig_sw, op[5], op4_not, op[3], op2_not, op[1], op[0]);
and and_rtype(sig_rtype, op5_not, op4_not, op3_not, op2_not, op1_not, op0_not);
and and_addi(sig_addi, op5_not, op4_not, op[3], op2_not, op1_not, op0_not);
and and_addiu(sig_addiu, op5_not, op4_not, op[3], op2_not, op1_not, op[0]);
and and_beq(sig_beq, op5_not, op4_not, op3_not, op[2], op1_not, op0_not);
//and and_bne(sig_bne, op5_not, op4_not, op3_not, op[2], op1_not, op[0]);
and and_jump(sig_jump, op5_not, op4_not, op3_not, op2_not, op[1], op0_not);
and and_newins1(sig_newins1,op[5],op[4],op[3],op[2],op[1],op[0]);
and and_newins2(sig_newins2,op5_not,op[4],op[3],op[2],op[1],op[0]);
and and_newins3(sig_newins3,op[5],op4_not,op[3],op[2],op[1],op[0]);
and and_newins4(sig_newins4,op[5],op[4],op3_not,op[2],op[1],op[0]);
and and_newins5(sig_newins5,op[5],op[4],op[3],op2_not,op[1],op[0]);
and and_newins6(sig_newins6,op[5],op[4],op[3],op[2],op1_not,op[0]);


or or_memread(memread, sig_lb, sig_lbu, sig_lh, sig_lhu, sig_lw);
or or_memwrie(memwrite, sig_sb, sig_sh, sig_sw);
or or_regwrite(regwrite, sig_lb, sig_lbu, sig_lh, sig_lhu, sig_lui, sig_lw, sig_rtype, sig_addi, sig_addiu,sig_newins1,sig_newins2,sig_newins3,sig_newins4,sig_newins5,sig_newins6);
or or_alusrc0(alusrc0, sig_lb, sig_lh);
or or_alusrc1(alusrc1, sig_rtype, 1'b0);
or or_memtoreg0(memtoreg0, sig_lh, sig_lhu, sig_lui);
or or_memtoreg1(memtoreg1, sig_lb, sig_lbu, sig_lui);
or or_memtoreg2(memtoreg2, sig_rtype, sig_addi,sig_newins1,sig_newins2,sig_newins3,sig_newins4,sig_newins5,sig_newins6);
or or_regtomem0(regtomem0, sig_sh, 1'b0);
or or_regtomem1(regtomem1, sig_sb, 1'b0);
or or_regdest(regdest, sig_rtype, 1'b0);
or or_aluop0(aluop0, sig_beq);
or or_aluop1(aluop1, sig_rtype, 1'b0);
or or_branch(branch, sig_beq, 1'b0);
or or_jump(jump, sig_jump, 1'b0);
or or_newselect2(newselect2,sig_newins4,sig_newins5,sig_newins6);
or or_newselect1(newselect1,sig_newins2,sig_newins3,sig_newins6);
or or_newselect0(newselect0,sig_newins1,sig_newins3,sig_newins5);


endmodule