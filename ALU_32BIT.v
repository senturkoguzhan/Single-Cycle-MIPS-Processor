module ALU_32BIT(
    output [31:0]resAlu32,
    output c_out,
	 output V,
	 output Z,
    input [31:0]A,
    input [31:0]B,
    input [2:0] OP,
	 input [2:0] select
    );
    
    wire c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31;
	 wire set,or_result;
	 wire [31:0] Res0,Res1,Res2,Res3,Res4,Res5,Res6,Res7;
	 wire cout1,cout2,cout3,cout4,cout5,cout6;
	 ALU_1BIT alu0(Res0[0],c0,A[0],B[0],OP[2],OP,set);
	 ALU_1BIT alu1(Res0[1],c1,A[1],B[1],c0,OP,1'b0);
	 ALU_1BIT alu2(Res0[2],c2,A[2],B[2],c1,OP,1'b0);
	 ALU_1BIT alu3(Res0[3],c3,A[3],B[3],c2,OP,1'b0);
	 ALU_1BIT alu4(Res0[4],c4,A[4],B[4],c3,OP,1'b0);
	 ALU_1BIT alu5(Res0[5],c5,A[5],B[5],c4,OP,1'b0);
	 ALU_1BIT alu6(Res0[6],c6,A[6],B[6],c5,OP,1'b0);
	 ALU_1BIT alu7(Res0[7],c7,A[7],B[7],c6,OP,1'b0);
	 ALU_1BIT alu8(Res0[8],c8,A[8],B[8],c7,OP,1'b0);
	 ALU_1BIT alu9(Res0[9],c9,A[9],B[9],c8,OP,1'b0);
	 ALU_1BIT alu10(Res0[10],c10,A[10],B[10],c9,OP,1'b0);
	 ALU_1BIT alu11(Res0[11],c11,A[11],B[11],c10,OP,1'b0);
	 ALU_1BIT alu12(Res0[12],c12,A[12],B[12],c11,OP,1'b0);
	 ALU_1BIT alu13(Res0[13],c13,A[13],B[13],c12,OP,1'b0);
	 ALU_1BIT alu14(Res0[14],c14,A[14],B[14],c13,OP,1'b0);
	 ALU_1BIT alu15(Res0[15],c15,A[15],B[15],c14,OP,1'b0);
	 ALU_1BIT alu16(Res0[16],c16,A[16],B[16],c15,OP,1'b0);
	 ALU_1BIT alu17(Res0[17],c17,A[17],B[17],c16,OP,1'b0);
	 ALU_1BIT alu18(Res0[18],c18,A[18],B[18],c17,OP,1'b0);
	 ALU_1BIT alu19(Res0[19],c19,A[19],B[19],c18,OP,1'b0);
	 ALU_1BIT alu20(Res0[20],c20,A[20],B[20],c19,OP,1'b0);
	 ALU_1BIT alu21(Res0[21],c21,A[21],B[21],c20,OP,1'b0);
	 ALU_1BIT alu22(Res0[22],c22,A[22],B[22],c21,OP,1'b0);
	 ALU_1BIT alu23(Res0[23],c23,A[23],B[23],c22,OP,1'b0);
	 ALU_1BIT alu24(Res0[24],c24,A[24],B[24],c23,OP,1'b0);
	 ALU_1BIT alu25(Res0[25],c25,A[25],B[25],c24,OP,1'b0);
	 ALU_1BIT alu26(Res0[26],c26,A[26],B[26],c25,OP,1'b0);
	 ALU_1BIT alu27(Res0[27],c27,A[27],B[27],c26,OP,1'b0);
	 ALU_1BIT alu28(Res0[28],c28,A[28],B[28],c27,OP,1'b0);
	 ALU_1BIT alu29(Res0[29],c29,A[29],B[29],c28,OP,1'b0);
	 ALU_1BIT alu30(Res0[30],c30,A[30],B[30],c29,OP,1'b0);
	 MSB_ALU_1BIT alu31(Res0[31],c_out,V,set,A[31],B[31],c30,OP,1'b0);
	 
	 FULL_ADDER_32 ins1(Res1,cout1,A,32'h00000001,1'b0);
	 FULL_ADDER_32 ins2(Res2,cout2,A,32'h00000002,1'b0);
	 FULL_ADDER_32 ins3(Res3,cout3,A,32'h00000003,1'b0);
	 FULL_ADDER_32 ins4(Res4,cout4,A,32'h00000004,1'b0);
	 FULL_ADDER_32 ins5(Res5,cout5,A,32'h00000005,1'b0);
	 FULL_ADDER_32 ins6(Res6,cout6,A,32'h00000006,1'b0);
	 
	 MUX_8X1_32 mux1(resAlu32,Res0,Res1,Res2,Res3,Res4,Res5,Res6,Res7,select);
	 
	 
	 or(or_result,resAlu32[0],resAlu32[1],
	 resAlu32[2],resAlu32[3],
	 resAlu32[4],resAlu32[5],
	 resAlu32[6],resAlu32[7],
	 resAlu32[8],resAlu32[9],
	 resAlu32[10],resAlu32[11],
	 resAlu32[12],resAlu32[13],
	 resAlu32[14],resAlu32[15],
	 resAlu32[16],resAlu32[17],
	 resAlu32[18],resAlu32[19],
	 resAlu32[20],resAlu32[21],
	 resAlu32[22],resAlu32[23],
	 resAlu32[24],resAlu32[25],
	 resAlu32[26],resAlu32[27],
	 resAlu32[28],resAlu32[29],
	 resAlu32[30],resAlu32[31]
	 );
	 not(Z,or_result);
	 
endmodule
