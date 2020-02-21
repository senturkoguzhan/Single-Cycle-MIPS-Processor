module BUILD_XOR (c, a, b); 
	 input a, b; 
	 output c; 
	 wire c, a_not, b_not, y, x; 
	 not a_inv (a_not, a); 
	 not b_inv (b_not, b); 
	 and a1 (x, a_not, b); 
	 and a2 (y, b_not, a); 
	 or out (c, x, y); 
endmodule 
