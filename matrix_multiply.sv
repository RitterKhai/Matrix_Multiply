module matrix_multiply
  (input  logic [13:0] Q_A,
   input  logic [13:0] Qnext_A,
	
	input  logic [7:0]  q_a_ROMB,
   input  logic [7:0]  q_b_ROMB,
	
   input  logic        reset,
	input  logic        clock,
	input  logic        done_counter,
	
	output logic         done,
   output logic [16:0]  result_multiply_matrix
	);
   logic [7:0] q_a_ROMA;
	logic [7:0] q_b_ROMA;

	logic [15:0] result_mult_0;
	logic [15:0] result_mult_1;
	
	logic [7:0] q_a_ROMA_temp;
   logic [7:0] q_b_ROMA_temp;
	logic [7:0] q_a_ROMB_temp;
   logic [7:0] q_b_ROMB_temp;

	logic [7:0] q_a_ROMA_temp_temp;
   logic [7:0] q_b_ROMA_temp_temp;
	logic [7:0] q_a_ROMB_temp_temp;
   logic [7:0] q_b_ROMB_temp_temp;
   logic			done_temp;
	
	logic [7:0] q_a_ROMA_temp_temp_temp;
   logic [7:0] q_b_ROMA_temp_temp_temp;
	logic [7:0] q_a_ROMB_temp_temp_temp;
   logic [7:0] q_b_ROMB_temp_temp_temp;
   logic			done_temp_temp;
	
	romA_128x128 ROM_A ( 
								.address_a(Q_A),
								.address_b(Qnext_A),
								.clock(clock),
								.q_a(q_a_ROMA),
								.q_b(q_b_ROMA)
								);
								

	always @(negedge clock, negedge reset) begin
   if (!reset) begin
	   q_a_ROMA_temp <= 'd0;
		q_b_ROMA_temp <= 'd0;
		q_a_ROMB_temp <= 'd0;
		q_b_ROMB_temp <= 'd0;
		done_temp <= 'd0;
	end
	
   else begin
	   q_a_ROMA_temp <= q_a_ROMA;
		q_b_ROMA_temp <= q_b_ROMA;
		q_a_ROMB_temp <= q_a_ROMB;
		q_b_ROMB_temp <= q_b_ROMB;	
		done_temp <= done_counter;
	end
   end	

	always @(posedge clock, negedge reset) begin
   if (!reset) begin
	   q_a_ROMA_temp_temp <= 'd0;
		q_b_ROMA_temp_temp <= 'd0;
		q_a_ROMB_temp_temp <= 'd0;
		q_b_ROMB_temp_temp <= 'd0;
		done_temp_temp <= 'd0;
	end
	
   else begin
	   q_a_ROMA_temp_temp <= q_a_ROMA_temp;
		q_b_ROMA_temp_temp <= q_b_ROMA_temp;
		q_a_ROMB_temp_temp <= q_a_ROMB_temp;
		q_b_ROMB_temp_temp <= q_b_ROMB_temp;	
		done_temp_temp <= done_temp;
	end
   end
	
	always @(negedge clock, negedge reset) begin
   if (!reset) begin
	   q_a_ROMA_temp_temp_temp <= 'd0;
		q_b_ROMA_temp_temp_temp <= 'd0;
		q_a_ROMB_temp_temp_temp <= 'd0;
		q_b_ROMB_temp_temp_temp <= 'd0;
		done <= 'd0;
	end
	
   else begin
	   q_a_ROMA_temp_temp_temp <= q_a_ROMA_temp_temp;
		q_b_ROMA_temp_temp_temp <= q_b_ROMA_temp_temp;
		q_a_ROMB_temp_temp_temp <= q_a_ROMB_temp_temp;
		q_b_ROMB_temp_temp_temp <= q_b_ROMB_temp_temp;	
		done <= done_temp_temp;
	end
   end
	
	multiplier_8816 multiplier_0 (
											.dataa(q_a_ROMA_temp_temp_temp),
											.datab(q_a_ROMB_temp_temp_temp),
											.result(result_mult_0)
											);
											
	multiplier_8816 multiplier_1 (
											.dataa(q_b_ROMA_temp_temp_temp),
											.datab(q_b_ROMB_temp_temp_temp),
											.result(result_mult_1)
											);

always @(posedge clock, negedge reset) begin
   if (!reset) begin
	   result_multiply_matrix <= 'd0;
	end
	else if(!done)	begin										
		result_multiply_matrix <= result_mult_0 + result_mult_1;
	end
	else begin
	   result_multiply_matrix <= 'd0;
	end	
end


endmodule