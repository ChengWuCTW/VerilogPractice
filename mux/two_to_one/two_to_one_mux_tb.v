module two_to_one_mux_tb();
wire tb_Y;
reg [1:0] tb_I;
reg tb_S;

two_to_one_mux DUT(.Y(tb_Y), .I(tb_I), .S(tb_S));

initial
begin
	tb_I = 2'b10;
	tb_S = 1'b0;

	#50;
	tb_S = 1'b1;
end
endmodule
