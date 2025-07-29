// A simple TB for mux

module day1_tb ();

  // Write your Testbench here...
  logic  [7:0] y_o;
  logic  [7:0] a_i;
  logic  [7:0] b_i;
  logic  sel_i;
  
  day1 uut (.y_o(y_o), .a_i(a_i), .b_i(b_i), .sel_i(sel_i));
  
  initial begin
    for (int i =0; i <20; i++) begin
      a_i = $urandom_range (0, 8'hFF);
      a_i = $urandom_range (0, 8'hFF);
      sel_i = $urandom %2; // randomly toggle the signal 
      #5;
    end
    $finish();
  end
  
endmodule
