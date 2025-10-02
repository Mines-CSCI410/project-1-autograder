module not16_test;
  reg [15:0] in;
  wire [15:0] out;

  student_not16 dut (.in(in), .out(out));

  initial begin
    $display("|        in        |       out        |");

    in = 'b0000000000000000;
    #1 $display("| %d | %d |", in, out);

    in = 'b1111111111111111;
    #2 $display("| %d | %d |", in, out);

    in = 'b1010101010101010;
    #3 $display("| %d | %d |", in, out);

    in = 'b0011110011000011;
    #4 $display("| %d | %d |", in, out);

    in = 'b0001001000110100;
    #5 $display("| %d | %d |", in, out);

    $finish;
  end
endmodule
