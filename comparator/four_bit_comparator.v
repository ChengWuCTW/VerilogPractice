module four_bit_comparator
(
	A,
	B,
	A_less_B,
	A_greater_B,
	A_equal_B
);

	input [3:0] A;
	input [3:0] B;
	output A_less_B;
	output A_greater_B;
	output A_equal_B;

	wire tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	wire x0, x1, x2, x3;

	assign tmp0 = A[0] & ~B[0];
	assign tmp1 = ~A[0] & B[0];
	assign tmp2 = A[1] & ~B[1];
	assign tmp3 = ~A[1] & B[1];
	assign tmp4 = A[2] & ~B[2];
	assign tmp5 = ~A[2] & B[2];
	assign tmp6 = A[3] & ~B[3];
	assign tmp7 = ~A[3] & B[3];

	xnor xnor_0(x0, tmp0, tmp1);
	xnor xnor_1(x1, tmp2, tmp3);
	xnor xnor_2(x2, tmp4, tmp5);
	xnor xnor_3(x3, tmp6, tmp7);


	assign A_less_B = tmp7 | (tmp5 & x3) | (tmp3 & x3 & x2) | (tmp1 & x3 & x2 & x1);
	assign A_greater_B = tmp6 | (tmp4 & x3) | (tmp2 & x3 & x2) | (tmp0 & x3 & x2 & x1);
	assign A_equal_B = x0 & x1 & x2 & x3;

endmodule
