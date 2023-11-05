module matrix_add
  (input  logic [6:0] Q_C,
   input  logic [6:0] Qnext_C,
	input  logic        done_counter,
   input  logic        reset,
	input  logic        clock,
	
   output logic [16:0]  result_add_matrix
	);
logic [15:0] q_a_ROMC;
logic [15:0] q_b_ROMC;
logic [15:0] q_a_ROMC_temp;
logic [15:0] q_b_ROMC_temp;
logic done;
logic [15:0] q_a_ROMC_temp_temp;
logic [15:0] q_b_ROMC_temp_temp;
logic done_temp;
logic [15:0] q_a_ROMC_temp_temp_temp;
logic [15:0] q_b_ROMC_temp_temp_temp;
logic done_temp_temp;
	romC_128x1   ROM_C (
								.address_a(Q_C),
								.address_b(Qnext_C),
								.clock(clock),
								.q_a(q_a_ROMC),
								.q_b(q_b_ROMC)
								);
								
	always @(negedge clock, negedge reset) begin
   if (!reset) begin
	   q_a_ROMC_temp <= 'd0;
		q_b_ROMC_temp <= 'd0;
		done <= 'd0;
	end
   else begin
	   q_a_ROMC_temp <= q_a_ROMC;
		q_b_ROMC_temp <= q_b_ROMC;
		done <= done_counter; 
	end
	end

	always @(posedge clock, negedge reset) begin
   if (!reset) begin
	   q_a_ROMC_temp_temp <= 'd0;
		q_b_ROMC_temp_temp <= 'd0;
		done_temp <= 'd0;
	end
   else begin
	   q_a_ROMC_temp_temp <= q_a_ROMC_temp;
		q_b_ROMC_temp_temp <= q_b_ROMC_temp;
		done_temp <= done; 
	end
	end

	always @(negedge clock, negedge reset) begin
   if (!reset) begin
	   q_a_ROMC_temp_temp_temp <= 'd0;
		q_b_ROMC_temp_temp_temp <= 'd0;
		done_temp_temp <= 'd0;
	end
   else begin
	   q_a_ROMC_temp_temp_temp <= q_a_ROMC_temp_temp;
		q_b_ROMC_temp_temp_temp <= q_b_ROMC_temp_temp;
		done_temp_temp <= done_temp; 
	end
	end
	
always @(posedge clock, negedge reset) begin
   if (!reset) begin
	   result_add_matrix <= 'd0;
	end
	else if(!done_temp_temp)	begin										
		result_add_matrix <= q_a_ROMC_temp_temp_temp + q_b_ROMC_temp_temp_temp;
	end
	else begin
	   result_add_matrix <= 'd0;
	end	
end

endmodule