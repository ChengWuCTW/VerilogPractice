module four_three_multiplier_tb();
wire [6:0] tb_res;
reg [2:0] tb_a;
reg [3:0] tb_b;

alt_four_three_binary_multiplier DUT(.a(tb_a), .b(tb_b), .res(tb_res));

initial
begin
	tb_a = 3'b010;
	tb_b = 4'b0101;

	#50
	tb_a = 3'b111;
	tb_b = 4'b1111;
end
endmodule
