module mem_sys(
	input [7:0] data,
	input store,
	input [1:0] addr,
	output [7:0] mem
);

// wires for demux data (4 bytes, 4 lines)
wire [7:0] d0, d1, d2, d3;

// enabled lines for demux
wire s0, s1, s2, s3;

//stored values
wire [7:0] m0, m1, m2, m3;

demux #(.WIDTH(8)) data_demux(
	.data(data),
	.sel(addr),
	.A(d0),
	.B(d1),
	.C(d2),
	.D(d3)
);

demux #(.WIDTH(1)) store_demux(
	.data(store),
	.sel(addr),
	.A(s0),
	.B(s1),
	.C(s2),
	.D(s3)
);

byte_mem byte0(.data(d0), .store(s0), .mem(m0));
byte_mem byte1(.data(d1), .store(s1), .mem(m1));
byte_mem byte2(.data(d2), .store(s2), .mem(m2));
byte_mem byte3(.data(d3), .store(s3), .mem(m3));

mux #(.WIDTH(8)) out_mux(
	.A(m0),
	.B(m1),
	.C(m2),
	.D(m3),
	.sel(addr),
	.out(mem)
);

endmodule