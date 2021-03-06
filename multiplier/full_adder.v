module full_adder
(
	x,
	y,
	c_in,
	sum,
	c_out
);

	input x;
	input y;
	input c_in;
	output sum;
	output c_out;

	assign sum = x ^ y ^ c_in;
	assign c_out = (x & y) | (c_in & (x ^ y));

endmodule


