 // An edge detector

module day3 (
  input     wire    clk,
  input     wire    reset,

  input     wire    a_i,

  output    wire    rising_edge_o,
  output    wire    falling_edge_o
);

  
	logic signal_prev; // flip-flop to store the prev state.
  
  always_ff@(posedge clk or posedge reset)
    if(reset)
      signal_prev <= 1'b0;
  	else
      signal_prev <= a_i;
  // rising edge is detected when prev signal is 0 and current is 1
  	assign rising_edge_o = ~ signal_prev & a_i;
  //falling edge is detected when prev signal is 1 and current is 0
  	assign falling_edge_o = signal_prev & ~a_i;
endmodule
