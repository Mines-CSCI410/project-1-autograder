module dmux4way_test;
  reg in;
  reg [1:0] sel;
  wire a, b, c, d;

  student_dmux4way dut (.in(in), .sel(sel), .a(a), .b(b), .c(c), .d(d));

  initial begin
    $display("|in|sel|a|b|c|d|");

    in = 0;
    sel = 'b00;
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    #1 $display("|%b|%b|%b|%b|%b|%b|", in, sel, a, b, c, d);

    in = 0;
    sel = 'b01;
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    #2 $display("|%b|%b|%b|%b|%b|%b|", in, sel, a, b, c, d);

    in = 0;
    sel = 'b10;
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    #3 $display("|%b|%b|%b|%b|%b|%b|", in, sel, a, b, c, d);

    in = 0;
    sel = 'b11;
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    #4 $display("|%b|%b|%b|%b|%b|%b|", in, sel, a, b, c, d);

    in = 1;
    sel = 'b00;
    a = 1;
    b = 0;
    c = 0;
    d = 0;
    #5 $display("|%b|%b|%b|%b|%b|%b|", in, sel, a, b, c, d);

    in = 1;
    sel = 'b01;
    a = 0;
    b = 1;
    c = 0;
    d = 0;
    #6 $display("|%b|%b|%b|%b|%b|%b|", in, sel, a, b, c, d);

    in = 1;
    sel = 'b10;
    a = 0;
    b = 0;
    c = 1;
    d = 0;
    #7 $display("|%b|%b|%b|%b|%b|%b|", in, sel, a, b, c, d);

    in = 1;
    sel = 'b11;
    a = 0;
    b = 0;
    c = 0;
    d = 1;
    #8 $display("|%b|%b|%b|%b|%b|%b|", in, sel, a, b, c, d);
  end
endmodule
