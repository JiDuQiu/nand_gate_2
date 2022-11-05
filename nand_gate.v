//2022-7-21  llz
//yufeimen;
module nand_gate(A,B,Y);
	input[3:0]	A;
        input[3:0]	B;
	output[3:0]	Y;

assign		Y=~(A&&B);

endmodule
