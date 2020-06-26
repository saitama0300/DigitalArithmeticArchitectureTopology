module PG_Generator(A,B,P,G);

	input [15:0] A;
	input [15:0] B;
	output [15:0] P;
	output [15:0] G;

	assign P = A^B;
	assign G = A&B;

endmodule
	