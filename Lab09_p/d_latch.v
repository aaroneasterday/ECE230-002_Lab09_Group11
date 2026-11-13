module d_latch(
	input D, E,
	output reg Q,
	output notQ
);

// holds value while E = 0, does not while E = 1
always @(D, E) begin
	if (E)
		Q <= D;
end

assign notQ = ~Q;

endmodule