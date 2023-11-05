module counter_for_A (
	input wire clk, reset,
	output reg [13:0] Q0, Q1, Q2, Q3,
	output reg [13:0] counter_out,
	output reg done_n
);

	always_ff @ (negedge clk, negedge reset)
	if (!reset) begin
		counter_out <= 1;
		Q0 <= 14'd0;
		Q1 <= 14'd1;
		Q2 <= 14'd2;
		Q3 <= 14'd3;
		done_n <= 1'b1;
	end
	else if (counter_out == 14'h1003) done_n <= 1'b0;
	else begin
		counter_out <= counter_out + 1;
		Q0 <= Q0 + 4;
		Q1 <= Q1 + 4;
		Q2 <= Q2 + 4;
		Q3 <= Q3 + 4;
		done_n <= 1'b1;
	end

endmodule