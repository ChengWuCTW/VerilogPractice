module four_bit_register_parallel
(
	I,
	load,
	clk,
	A,
	
);

	input [3:0] I;
	input load, clk;
	output reg [3:0] A;

	always @(posedge clk)
	begin
		if(load)
			A <= I;
	end

endmodule
