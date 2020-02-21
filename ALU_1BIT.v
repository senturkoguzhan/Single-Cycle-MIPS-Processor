module ALU_1BIT(
    output R,
    output c_out,
    input A_i,
    input B_i,
    input c_in,
    input [2:0] OP,
    input SLT
    );
    
    wire xor_res, and1_res, or1_res;
    wire not1_res, and2_res, and3_res;
    wire or2_res, not2_res, and4_res;
    
    BUILD_XOR xor1(xor_res, B_i, OP[2]);
    and and1(and1_res, xor_res, A_i);
    or or1(or1_res, xor_res, A_i);
    not not1(not1_res, and1_res);
    and and2(and2_res, not1_res, or1_res);
    and and3(and3_res, and2_res, c_in);
    or or2(or2_res, and2_res, c_in);
    or or3(c_out, and3_res, and1_res);
    not not2(not2_res, and3_res);
    and and4(and4_res, not2_res, or2_res);
    MUX4x1 mux1(R, and1_res, or1_res, and4_res, SLT, OP[0], OP[1]);
    
endmodule
