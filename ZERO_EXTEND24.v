module ZERO_EXTEND24(
		output [31:0] out,
		input [7:0] in
);

or (out[0],in[0],1'b0);
or (out[1],in[1],1'b0);
or (out[2],in[2],1'b0);
or (out[3],in[3],1'b0);
or (out[4],in[4],1'b0);
or (out[5],in[5],1'b0);
or (out[6],in[6],1'b0);
or (out[7],in[7],1'b0);
or (out[8],1'b0,1'b0);
or (out[9],1'b0,1'b0);
or (out[10],1'b0,1'b0);
or (out[11],1'b0,1'b0);
or (out[12],1'b0,1'b0);
or (out[13],1'b0,1'b0);
or (out[14],1'b0,1'b0);
or (out[15],1'b0,1'b0);
or (out[16],1'b0,1'b0);
or (out[17],1'b0,1'b0);
or (out[18],1'b0,1'b0);
or (out[19],1'b0,1'b0);
or (out[20],1'b0,1'b0);
or (out[21],1'b0,1'b0);
or (out[22],1'b0,1'b0);
or (out[23],1'b0,1'b0);
or (out[24],1'b0,1'b0);
or (out[25],1'b0,1'b0);
or (out[26],1'b0,1'b0);
or (out[27],1'b0,1'b0);
or (out[28],1'b0,1'b0);
or (out[29],1'b0,1'b0);
or (out[30],1'b0,1'b0);
or (out[31],1'b0,1'b0);

endmodule