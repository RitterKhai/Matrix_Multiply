module counter_for_128x128_4 (
	input wire clk, reset,
	output reg [13:0] Q, Qnext, Q1, Q1next,Q2, Q2next, Q3, Q3next,
	output reg done
);

	always_ff @ (negedge clk, negedge reset)
	if (!reset) begin
		Q <= 14'h3000;
		Qnext <= 14'h3001;
		Q1 <= 14'h3002;
		Q1next <= 14'h3003;
		Q2 <= 14'h3004;
		Q2next <= 14'h3005;
		Q3 <= 14'h3006;
		Q3next <= 14'h3007;		
		done <= 1'b0;	
	end
	else if (Q3next == 14'h3fff) done <= 1'b1;
	else begin
		Q <= Q + 'd8;
		Qnext <= Qnext + 'd8;
		Q1 <= Q1 + 'd8;
		Q1next <= Q1next + 'd8;	
		Q2 <= Q2 + 'd8;
		Q2next <= Q2next + 'd8;
		Q3 <= Q3 + 'd8;
		Q3next <= Q3next + 'd8;	
		done <= 1'b0;
	end

endmodule