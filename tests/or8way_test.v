module or8way_test;
  reg [7:0] in;
  wire out;

  student_or8way dut (.in(in), .out(out));

  initial begin
    $display("|     in     |out|");

    in = 'b00000000;
    #1 $display("|  %d  | %d |", in, out);

    in = 'b11111111;
    #2 $display("|  %d  | %d |", in, out);

    in = 'b00010000;
    #3 $display("|  %d  | %d |", in, out);

    in = 'b00000001;
    #4 $display("|  %d  | %d |", in, out);

    in = 'b00100110;
    #5 $display("|  %d  | %d |", in, out);

    $finish;
  end
endmodule
