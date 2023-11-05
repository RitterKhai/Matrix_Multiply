`timescale 1ps/1ps

module TB;
  logic clock, resetN;
  logic disp_sel;

  logic done;
  logic [31:0] result;
  logic [6:0] HEX_D[6];
  integer fptr;
  integer fptw;
  p2 dut (.CLOCK_50(clock), 
  .SW0({disp_sel}), 
  .KEY0({resetN}),
  .HEX5(HEX_D[5]), 
  .HEX4(HEX_D[4]), 
  .HEX3(HEX_D[3]),
  .HEX2(HEX_D[2]), 
  .HEX1(HEX_D[1]), 
  .HEX0(HEX_D[0]),
  .result(result),
  .done(done)
  );


  initial begin
    clock = 1'b0;
    forever #5 clock = ~clock;
  end

  initial begin
    fptw = $fopen("output_waveform.txt","w");
    disp_sel = 1'b0;
    resetN <= 1'b0;
    #20;
    disp_sel = 1'b0;
    resetN <= 1'b1;
    
   
    @(posedge dut.done);
    #20;
    disp_sel = 1'b1;
    resetN <= 1'b1;
    #100;
    $finish;
    
  end

always @(posedge clock) begin
$fwrite(fptw, "result = " ,result, "\n");
end

endmodule
