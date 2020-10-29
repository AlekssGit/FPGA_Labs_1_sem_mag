//Lab 4 Var. 6

module Lab_4(
	input i_clk,
	input  [2:0] A,
	input  [2:0] B,
	output [6:0] led_lib,
	output [6:0] led_rom,
	output [2:0] res_lib,
	output [2:0] res_rom
);

semisegment seg_lib (.number({res_lib}), .result(led_lib));
semisegment seg_rom (.number({res_rom}), .result(led_rom));

lpmRom rm (
	.address({ B, A}),
	.clock(i_clk),
	.q(res_rom)
	);

assign res_lib = ~A | B & A;
	
endmodule