module byte_mem(
	input [7:0] data,
	input store,
	output reg [7:0] mem
);

// Same enable for the d-latches
always @(data, store) begin

	if (store)

		mem <= data;

end

endmodule