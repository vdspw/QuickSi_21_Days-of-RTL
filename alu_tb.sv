// Simple ALU TB

module day4_tb ();

  logic [7:0] a_i;
  logic [7:0] b_i;
  logic [2:0] op_i;
  logic [7:0] alu_o;
  
  day4 uut (.a_i(a_i),.b_i(b_i),.op_i(op_i),.alu_o(alu_o));
  initial begin 
    op_i = 3'b 000;
    a_i = 7'b 1111111;
    b_i = 7'b 1010101;
    #10;
    op_i = 3'b 001;
    a_i = 7'b 1011110;
    b_i = 7'b 0000111;
    #10;
    op_i = 3'b 010;
    a_i = 7'b 0000111;
    b_i = 7'b 1110000;
    #10;
    op_i = 3'b011;
    a_i = 7'b 0010101;
    b_i = 7'b 1110000;
    #10;
    op_i = 3'b100;
    a_i =  7'b 1100110;
    b_i =  7'b 0011000;
    #10;
    op_i = 3'b101;
    a_i = 7'b 0000110;
    b_i = 7'b 1111001;
    #10;
    op_i = 3'b110;
    a_i = 7'b 0001111;
    b_i = 7'b 1110100;
    #10;
    op_i = 3'b111;
    a_i = 7'b1111111;
    b_i = 7'b1111111;
    $finish();
    
  end

endmodule
