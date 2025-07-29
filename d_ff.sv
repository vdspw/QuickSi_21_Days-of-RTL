// Different DFF

module day2 (
  input     logic      clk,
  input     logic      reset,

  input     logic      d_i,

  output    logic      q_norst_o,
  output    logic      q_syncrst_o,
  output    logic      q_asyncrst_o
);

  // Write your logic here...
  //no reset
  always_ff@(posedge clk )
    q_norst_o <= d_i;
  
  //synchronuos reset
  always_ff@(posedge clk or negedge reset) // added negedge reset --to fix the lint 
    if(reset)
      q_syncrst_o <= 1'b0;
  	else 
      q_syncrst_o <= d_i;
  //asynchrounous reset
  always_ff@(posedge clk or posedge reset)
    if(reset)
      q_asyncrst_o <= 1'b0;
  	else
      q_asyncrst_o <= d_i;
  

endmodule
