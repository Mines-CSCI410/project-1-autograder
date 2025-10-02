module mux16_test;
  reg [15:0] a, b, sel;
  wire [15:0] out;

  student_mux16 dut (.a(a), .b(b), .sel(sel) .out(out));

  initial begin
    $display("|        a         |        b         |sel|       out        |");

    a = 0;
    b = 0;
    sel = 0;
    #1 $display("| %d | %d | %d | %d |", a, b, sel, out);

    sel = 1;
    #2 $display("| %d | %d | %d | %d |", a, b, sel, out);

    a = 'b0000000000000000;
    b = 'b0001001000110100;
    sel = 0;
    #3 $display("| %d | %d | %d | %d |", a, b, sel, out);

    sel = 1;
    #4 $display("| %d | %d | %d | %d |", a, b, sel, out);

    a = 'b1001100001110110;
    b = 'b0000000000000000;
    sel = 0;
    #5 $display("| %d | %d | %d | %d |", a, b, sel, out);

    sel = 1;
    #6 $display("| %d | %d | %d | %d |", a, b, sel, out);

    a = 'b1010101010101010;
    b = 'b0101010101010101;
    sel = 0;
    #7 $display("| %d | %d | %d | %d |", a, b, sel, out);

    sel = 1;
    #8 $display("| %d | %d | %d | %d |", a, b, sel, out);

    $finish;
  end
endmodule
