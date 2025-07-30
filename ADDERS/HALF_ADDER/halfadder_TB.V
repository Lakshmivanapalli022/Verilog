module half_adder_tb;

  // Testbench signals
  reg A, B;
  wire SUM, CARRY;

  // Instantiate the half adder module
  half_adder_dataflow dUT (
    .A(A),
    .B(B),
    .SUM(SUM),
    .CARRY(CARRY)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dump(1, half_adder_tb);
    $display("A B | SUM CARRY");
    $display("-------------");

    // Apply test cases
    A = 0; B = 0; #10;
    $display("%b %b |  %b    %b", A, B, SUM, CARRY);

    A = 0; B = 1; #10;
    $display("%b %b |  %b    %b", A, B, SUM, CARRY);

    A = 1; B = 0; #10;
    $display("%b %b |  %b    %b", A, B, SUM, CARRY);

    A = 1; B = 1; #10;
    $display("%b %b |  %b    %b", A, B, SUM, CARRY);

    $finish;
  end

endmodule
