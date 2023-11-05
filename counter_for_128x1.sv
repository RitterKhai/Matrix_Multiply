module counter_for_128x1 (
	input wire clk, reset,
	output reg [6:0] Q, Qnext, Q1, Q1next,Q2, Q2next, Q3, Q3next
);

	always_ff @ (negedge clk, negedge reset)
	if (!reset) begin
		Q <= 'd0;
		Qnext <= 'd1;
		Q1 <= 'd2;
		Q1next <= 'd3;
		Q2 <= 'd4;
		Q2next <= 'd5;
		Q3 <= 'd6;
		Q3next <= 'd7;		
	end
	else begin
		Q <= Q + 'd8;
		Qnext <= Qnext + 'd8;
		Q1 <= Q1 + 'd8;
		Q1next <= Q1next + 'd8;	
		Q2 <= Q2 + 'd8;
		Q2next <= Q2next + 'd8;
		Q3 <= Q3 + 'd8;
		Q3next <= Q3next + 'd8;		
	end

endmodule