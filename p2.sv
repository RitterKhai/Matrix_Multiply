//`default_nettype none

// Starter code for Project 2.  See README.md for details

module p2
  (input  logic       CLOCK_50,
   input  logic       KEY0,  // reset
   input  logic       SW0,
	output logic       done,
//	output logic [31:0] result,
   output logic [6:0] HEX5, HEX4, HEX3, HEX2, HEX1, HEX0
	);
	
logic [13:0] Q_A_0;
logic [13:0] Qnext_A_0;
logic [13:0] Q_A_1;
logic [13:0] Qnext_A_1;
logic [13:0] Q_A_2;
logic [13:0] Qnext_A_2;
logic [13:0] Q_A_3;
logic [13:0] Qnext_A_3;

logic [13:0] Q_A_4;
logic [13:0] Qnext_A_4;
logic [13:0] Q_A_5;
logic [13:0] Qnext_A_5;
logic [13:0] Q_A_6;
logic [13:0] Qnext_A_6;
logic [13:0] Q_A_7;
logic [13:0] Qnext_A_7;

logic [13:0] Q_A_8;
logic [13:0] Qnext_A_8;
logic [13:0] Q_A_9;
logic [13:0] Qnext_A_9;
logic [13:0] Q_A_10;
logic [13:0] Qnext_A_10;
logic [13:0] Q_A_11;
logic [13:0] Qnext_A_11;

logic [13:0] Q_A_12;
logic [13:0] Qnext_A_12;
logic [13:0] Q_A_13;
logic [13:0] Qnext_A_13;
logic [13:0] Q_A_14;
logic [13:0] Qnext_A_14;
logic [13:0] Q_A_15;
logic [13:0] Qnext_A_15;

logic [6:0]  Q_B;
logic [6:0]  Qnext_B;
logic [6:0]  Q1_B;
logic [6:0]  Q1next_B;
logic [6:0]  Q2_B;
logic [6:0]  Q2next_B;
logic [6:0]  Q3_B;
logic [6:0]  Q3next_B;

logic [6:0]  Q_C;
logic [6:0]  Qnext_C;

logic [7:0]  q0_a_ROMB;
logic [7:0]  q0_b_ROMB;
logic [7:0]  q1_a_ROMB;
logic [7:0]  q1_b_ROMB;
logic [7:0]  q2_a_ROMB;
logic [7:0]  q2_b_ROMB;
logic [7:0]  q3_a_ROMB;
logic [7:0]  q3_b_ROMB;

logic [16:0]  result_multiply_matrix_0;
logic [16:0]  result_multiply_matrix_1;
logic [16:0]  result_multiply_matrix_2;
logic [16:0]  result_multiply_matrix_3;
logic [16:0]  result_multiply_matrix_4;
logic [16:0]  result_multiply_matrix_5;
logic [16:0]  result_multiply_matrix_6;
logic [16:0]  result_multiply_matrix_7;
logic [16:0]  result_multiply_matrix_8;
logic [16:0]  result_multiply_matrix_9;
logic [16:0]  result_multiply_matrix_10;
logic [16:0]  result_multiply_matrix_11;
logic [16:0]  result_multiply_matrix_12;
logic [16:0]  result_multiply_matrix_13;
logic [16:0]  result_multiply_matrix_14;
logic [16:0]  result_multiply_matrix_15;

logic [16:0]  result_add_matrix;

logic [31:0] result_add_ROMA_ROMB_ROMC;
logic [31:0] result;
logic [31:0] hex;
logic [31:0] k;

logic done_counter;
logic done_A_0;
logic done_A_1;
logic done_A_2;
logic done_A_3;
logic done_A_0_out;
logic done_A_1_out;
logic done_A_2_out;
logic done_A_3_out;
logic done_A_4_out;
logic done_A_5_out;
logic done_A_6_out;
logic done_A_7_out;
logic done_A_8_out;
logic done_A_9_out;
logic done_A_10_out;
logic done_A_11_out;
logic done_A_12_out;
logic done_A_13_out;
logic done_A_14_out;
logic done_A_15_out;

counter_for_128x128 counter_ROM_A_0 (
											.clk(CLOCK_50),
											.reset(KEY0),
											.Q(Q_A_0),
											.Qnext(Qnext_A_0),
											.Q1(Q_A_1),
											.Q1next(Qnext_A_1),
											.Q2(Q_A_2),
											.Q2next(Qnext_A_2),
											.Q3(Q_A_3),
											.Q3next(Qnext_A_3),											
											.done(done_A_0)
											);
											
counter_for_128x128_2 counter_ROM_A_1	(
											.clk(CLOCK_50),
											.reset(KEY0),
											.Q(Q_A_4),
											.Qnext(Qnext_A_4),
											.Q1(Q_A_5),
											.Q1next(Qnext_A_5),
											.Q2(Q_A_6),
											.Q2next(Qnext_A_6),
											.Q3(Q_A_7),
											.Q3next(Qnext_A_7),												
											.done(done_A_1)
											);

counter_for_128x128_3 counter_ROM_A_2 (
											.clk(CLOCK_50),
											.reset(KEY0),
											.Q(Q_A_8),
											.Qnext(Qnext_A_8),
											.Q1(Q_A_9),
											.Q1next(Qnext_A_9),
											.Q2(Q_A_10),
											.Q2next(Qnext_A_10),
											.Q3(Q_A_11),
											.Q3next(Qnext_A_11),											
											.done(done_A_2)
											);
											
counter_for_128x128_4 counter_ROM_A_3	(
											.clk(CLOCK_50),
											.reset(KEY0),
											.Q(Q_A_12),
											.Qnext(Qnext_A_12),
											.Q1(Q_A_13),
											.Q1next(Qnext_A_13),
											.Q2(Q_A_14),
											.Q2next(Qnext_A_14),
											.Q3(Q_A_15),
											.Q3next(Qnext_A_15),												
											.done(done_A_3)
											);
									
counter_for_128x1 counter_ROM_B (
											.clk(CLOCK_50),
											.reset(KEY0),
											.Q(Q_B),
											.Qnext(Qnext_B),
											.Q1(Q1_B),
											.Q1next(Q1next_B),
											.Q2(Q2_B),
											.Q2next(Q2next_B),
											.Q3(Q3_B),
											.Q3next(Q3next_B)												
											);
											
counter_for_128x1_2 counter_ROM_C (
											.clk(CLOCK_50),
											.reset(KEY0),
											.done(done_counter),
											.Q(Q_C),
											.Qnext(Qnext_C)											
											);

	romB_128x1   ROM_B_0 (
								.address_a(Q_B),
								.address_b(Qnext_B),
								.clock(CLOCK_50),
								.q_a(q0_a_ROMB),
								.q_b(q0_b_ROMB)
								);
								
	romB_128x1   ROM_B_1 (
								.address_a(Q1_B),
								.address_b(Q1next_B),
								.clock(CLOCK_50),
								.q_a(q1_a_ROMB),
								.q_b(q1_b_ROMB)
								);
								
	romB_128x1   ROM_B_2 (
								.address_a(Q2_B),
								.address_b(Q2next_B),
								.clock(CLOCK_50),
								.q_a(q2_a_ROMB),
								.q_b(q2_b_ROMB)
								);
								
	romB_128x1   ROM_B_3 (
								.address_a(Q3_B),
								.address_b(Q3next_B),
								.clock(CLOCK_50),
								.q_a(q3_a_ROMB),
								.q_b(q3_b_ROMB)
								);		
								
matrix_multiply matrix_multiply_0 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_0),
											.Qnext_A(Qnext_A_0),
											.q_a_ROMB(q0_a_ROMB),
											.q_b_ROMB(q0_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_0),
											.done_counter(done_A_0),
											.done(done_A_0_out)
											);
											
matrix_multiply matrix_multiply_1 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_1),
											.Qnext_A(Qnext_A_1),
											.q_a_ROMB(q1_a_ROMB),
											.q_b_ROMB(q1_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_1),
											.done_counter(done_A_0),
											.done(done_A_1_out)
											);	

matrix_multiply matrix_multiply_2 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_2),
											.Qnext_A(Qnext_A_2),
											.q_a_ROMB(q2_a_ROMB),
											.q_b_ROMB(q2_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_2),
											.done_counter(done_A_0),
											.done(done_A_2_out)
											);
											
matrix_multiply matrix_multiply_3 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_3),
											.Qnext_A(Qnext_A_3),
											.q_a_ROMB(q3_a_ROMB),
											.q_b_ROMB(q3_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_3),
											.done_counter(done_A_0),
											.done(done_A_3_out)
											);	
											
		matrix_multiply matrix_multiply_4 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_4),
											.Qnext_A(Qnext_A_4),
											.q_a_ROMB(q0_a_ROMB),
											.q_b_ROMB(q0_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_4),
											.done_counter(done_A_1),
											.done(done_A_4_out)
											);
											
		matrix_multiply matrix_multiply_5 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_5),
											.Qnext_A(Qnext_A_5),
											.q_a_ROMB(q1_a_ROMB),
											.q_b_ROMB(q1_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_5),
											.done_counter(done_A_1),
											.done(done_A_5_out)
											);	

		matrix_multiply matrix_multiply_6 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_6),
											.Qnext_A(Qnext_A_6),
											.q_a_ROMB(q2_a_ROMB),
											.q_b_ROMB(q2_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_6),
											.done_counter(done_A_1),
											.done(done_A_6_out)
											);
											
		matrix_multiply matrix_multiply_7 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_7),
											.Qnext_A(Qnext_A_7),
											.q_a_ROMB(q3_a_ROMB),
											.q_b_ROMB(q3_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_7),
											.done_counter(done_A_1),
											.done(done_A_7_out)
											);	
										
matrix_multiply matrix_multiply_8 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_8),
											.Qnext_A(Qnext_A_8),
											.q_a_ROMB(q0_a_ROMB),
											.q_b_ROMB(q0_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_8),
											.done_counter(done_A_2),
											.done(done_A_8_out)
											);
											
matrix_multiply matrix_multiply_9 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_9),
											.Qnext_A(Qnext_A_9),
											.q_a_ROMB(q1_a_ROMB),
											.q_b_ROMB(q1_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_9),
											.done_counter(done_A_2),
											.done(done_A_9_out)
											);	

matrix_multiply matrix_multiply_10 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_10),
											.Qnext_A(Qnext_A_10),
											.q_a_ROMB(q2_a_ROMB),
											.q_b_ROMB(q2_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_10),
											.done_counter(done_A_2),
											.done(done_A_10_out)
											);
											
matrix_multiply matrix_multiply_11 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_11),
											.Qnext_A(Qnext_A_11),
											.q_a_ROMB(q3_a_ROMB),
											.q_b_ROMB(q3_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_11),
											.done_counter(done_A_2),
											.done(done_A_11_out)
											);	
											
		matrix_multiply matrix_multiply_12 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_12),
											.Qnext_A(Qnext_A_12),
											.q_a_ROMB(q0_a_ROMB),
											.q_b_ROMB(q0_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_12),
											.done_counter(done_A_3),
											.done(done_A_12_out)
											);
											
		matrix_multiply matrix_multiply_13 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_13),
											.Qnext_A(Qnext_A_13),
											.q_a_ROMB(q1_a_ROMB),
											.q_b_ROMB(q1_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_13),
											.done_counter(done_A_3),
											.done(done_A_13_out)
											);	

		matrix_multiply matrix_multiply_14 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_14),
											.Qnext_A(Qnext_A_14),
											.q_a_ROMB(q2_a_ROMB),
											.q_b_ROMB(q2_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_14),
											.done_counter(done_A_3),
											.done(done_A_14_out)
											);
											
		matrix_multiply matrix_multiply_15 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_A(Q_A_15),
											.Qnext_A(Qnext_A_15),
											.q_a_ROMB(q3_a_ROMB),
											.q_b_ROMB(q3_b_ROMB),
											.result_multiply_matrix(result_multiply_matrix_15),
											.done_counter(done_A_1),
											.done(done_A_15_out)
											);	
											
matrix_add matrix_add_0 (
											.clock(CLOCK_50),
											.reset(KEY0),
											.Q_C(Q_C),
											.Qnext_C(Qnext_C),
											.done_counter(done_counter),
											.result_add_matrix(result_add_matrix)
											);


   always @ (negedge CLOCK_50, negedge KEY0) begin
	   if (!KEY0) begin
		   result_add_ROMA_ROMB_ROMC <= 'd0;
	   end
	   else begin
		   result_add_ROMA_ROMB_ROMC <= 	result_add_matrix
													+ result_multiply_matrix_1
													+ result_multiply_matrix_0
													+ result_multiply_matrix_2
													+ result_multiply_matrix_3
													+ result_multiply_matrix_4
													+ result_multiply_matrix_5
													+ result_multiply_matrix_6
													+ result_multiply_matrix_7
													+ result_multiply_matrix_8
													+ result_multiply_matrix_9
													+ result_multiply_matrix_10
													+ result_multiply_matrix_11
													+ result_multiply_matrix_12
													+ result_multiply_matrix_13
													+ result_multiply_matrix_14
													+ result_multiply_matrix_15;													
	   end
	end 
	
   always @ (posedge CLOCK_50, negedge KEY0) begin
	   if (!KEY0) begin
		   result <= 'd0;
			k <= 'd0;
	   end
	   else begin
		   result <= result + result_add_ROMA_ROMB_ROMC;
			k <= (done) ? k : (k + 'd1);
	   end
	end 

   always @ (posedge CLOCK_50, negedge KEY0) begin
	   if (!KEY0) begin
		   hex <= 'd0;
			done <= 'd0;
	   end
	   else begin
		   hex <= (SW0) ? k : result;
			done <= done_A_0_out & done_A_1_out & done_A_2_out & done_A_3_out 
						& done_A_4_out & done_A_5_out & done_A_6_out & done_A_7_out
						& done_A_8_out & done_A_9_out & done_A_10_out & done_A_11_out 
						& done_A_12_out & done_A_13_out & done_A_14_out & done_A_15_out;						
	   end	
	end
	
bcdtohex bcdtohex_0 (.bcd(hex[3:0]), .segment(HEX0));
bcdtohex bcdtohex_1 (.bcd(hex[7:4]), .segment(HEX1));
bcdtohex bcdtohex_2 (.bcd(hex[11:8]), .segment(HEX2));
bcdtohex bcdtohex_3 (.bcd(hex[15:12]), .segment(HEX3));
bcdtohex bcdtohex_4 (.bcd(hex[19:16]), .segment(HEX4));
bcdtohex bcdtohex_5 (.bcd(hex[23:20]), .segment(HEX5));
endmodule