module top(
	input [15:0] sw,
	input btnC,
	output [15:0] led
);

// 1 bit D-latch
d_latch assign_dlatch(
	.D(sw[0]),
	.E(btnC),
	.Q(led[0]),
	.notQ(led[1])
);

// 4 bit mem
mem_sys assign_memsys(
	.data(sw[15:8]),
	.addr(sw[7:6]),
	.store(btnC),
	.mem(led[15:8])
);

// I didn't use these LEDs
assign led[7:2] = 6'b0;

endmodule