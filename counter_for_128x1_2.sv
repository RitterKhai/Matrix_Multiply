module counter_for_128x1_2 (
	input wire clk, reset,
	output reg [6:0] Q, Qnext,
	output reg done
);

	always_ff @ (negedge clk, negedge reset)
	if (!reset) begin
		Q <= 7'd0;
		Qnext <= 7'd1;
		done <= 1'b0;
	end
	else if (Qnext == 7'h7f) done <= 1'b1;
	else begin
		Q <= Q + 2;
		Qnext <= Qnext + 2;
		done <= 1'b0;
	end

endmodule