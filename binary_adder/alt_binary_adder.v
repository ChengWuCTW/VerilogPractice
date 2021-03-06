module full_adder
(
	x,
	y,
	z,
	sum,
	carry
);

	input x;
	input y;
	input z;
	output sum;
	output carry;

	assign sum = x ^ y ^ z;
	assign carry = (x & y) | (z & (x ^ y));

endmodule

module half_adder
(
	x,
	y,
	sum,
	carry
);

	input x;
	input y;
	output sum;
	output carry;

	assign sum = x ^ y;
	assign carry = x & y;

endmodule

// 4 bit binary adder
module alt_binary_adder
(
	A,
	B,
	sum,
);
	
	input [3:0] A;
	input [3:0] B;
	output [3:0] sum;

	wire carry_out;
	wire [3:0] carry;

	genvar i;
	generate
	for(i=0; i<4; i=i+1)
	begin: generate_4_bit_adder
		if(i == 0)
			half_adder f(.x(A[0]), .y(B[0]), .sum(sum[0]), .carry(carry[0]));
		else
			full_adder f(.x(A[i]), .y(B[i]), .z(carry[i-1]), .sum(sum[i]), .carry(carry[i]));
	end
	assign carry_out = carry[3];
	endgenerate
endmodule
