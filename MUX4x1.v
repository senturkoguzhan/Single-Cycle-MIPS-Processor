module MUX4x1(
    output Y,
    input A0,
    input A1,
    input A2,
    input A3,    
    input S0,
    input S1
    );
    
    wire s0n,s1n; //s0 not, s1 not
    wire w1,w2,w3,w4;

    not n1(s0n,S0);
    not n2(s1n,S1);
    
    and and1(w1,A0,s1n,s0n);
    and and2(w2,A1,s1n,S0);
    and and3(w3,A2,S1,s0n);
    and and4(w4,A3,S1,S0);
    
    or or1(Y,w1,w2,w3,w4);   
    
endmodule
