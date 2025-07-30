module full_adder_tb();
  reg A, B,C_in;
  wire SUM, C_out;
  full_adder tb(A,B,C_in,SUM, C_out);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,full_adder_tb);
    $display("A B C_in| SUM C_out");
    $display("-------------");
    $monitor("time=%0t |A=%0b| B=%0b| C_in=%0b| SUM=%0b| C_out=%0b",$time,A,B,C_in,SUM,C_out); 
   A=0;B=0;C_in=0;
    #10  A=0;B=0;C_in=1;
    #10  A=0;B=1;C_in=0;
    #10  A=1;B=0;C_in=0;
    #10  A=1;B=0;C_in=1;
    #10  A=1;B=1;C_in=0;
    #10  A=1;B=1;C_in=1;    
    $finish;
  end

endmodule
