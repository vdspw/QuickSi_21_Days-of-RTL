// DFF TB

module day2_tb ();

  // Write your Testbench here...
  logic clk;
  logic reset;
  
  logic d_i;
  
  logic q_norst_o;
  logic q_syncrst_o;
  logic q_asyncrst_o;
  
  day2 DAY2 (.*);
  
  //clk block
  always begin
    clk = 1'b1;
    #5
    clk = 1'b0;
    #5;
  end
  
  //stimulus
  initial begin
    reset <= 1'b 1;
    d_i <= 1'b0;
    @(posedge clk);
    	reset <= 1'b0;
    @(posedge clk);
    	d_i <= 1'b1;
    @(posedge clk);
    @(posedge clk);
    	reset <= 1'b1;
    @(posedge clk );
    	reset <= 1'b0;
    @(posedge clk);
    $finish();
  end
  

endmodule
