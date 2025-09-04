module tb;
  reg [3:0] a,b;
  reg cin;
  wire [3:0]s;
  wire carry;
  bcd dut(a,b,cin,s,carry);
  initial begin
    a=4'b1001; b=4'b1001;cin=0;
    #10;
  end
  initial 
    $monitor("a=[%b],b=[%b],cin=[%b],s=[%b],carry=[%b]",a,b,cin,s,carry);
endmodule
