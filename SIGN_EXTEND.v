module SIGN_EXTEND(
		output [31:0] out,
		input [15:0] in
);

or (out[0],in[0],1'b0);
or (out[1],in[1],1'b0);
or (out[2],in[2],1'b0);
or (out[3],in[3],1'b0);
or (out[4],in[4],1'b0);
or (out[5],in[5],1'b0);
or (out[6],in[6],1'b0);
or (out[7],in[7],1'b0);
or (out[8],in[8],1'b0);
or (out[9],in[9],1'b0);
or (out[10],in[10],1'b0);
or (out[11],in[11],1'b0);
or (out[12],in[12],1'b0);
or (out[13],in[13],1'b0);
or (out[14],in[14],1'b0);
or (out[15],in[15],1'b0);
or (out[16],in[15],1'b0);
or (out[17],in[15],1'b0);
or (out[18],in[15],1'b0);
or (out[19],in[15],1'b0);
or (out[20],in[15],1'b0);
or (out[21],in[15],1'b0);
or (out[22],in[15],1'b0);
or (out[23],in[15],1'b0);
or (out[24],in[15],1'b0);
or (out[25],in[15],1'b0);
or (out[26],in[15],1'b0);
or (out[27],in[15],1'b0);
or (out[28],in[15],1'b0);
or (out[29],in[15],1'b0);
or (out[30],in[15],1'b0);
or (out[31],in[15],1'b0);

endmodule