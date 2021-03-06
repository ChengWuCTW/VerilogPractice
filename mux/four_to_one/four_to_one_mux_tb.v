module four_to_one_mux_tb();
wire tb_Y;
reg [3:0] tb_I;
reg [1:0] tb_S;

four_to_one_mux DUT(.Y(tb_Y), .I(tb_I), .S(tb_S));

initial
begin
	tb_I = 4'b1010;
	tb_S = 2'b00;

	#50;
	tb_S = 2'b01;

	#50;
	tb_S = 2'b10;

	#50;
	tb_S = 2'b11;
end
endmodule
