module half_sub_tb;
reg a,b;
wire sum,borrow;
full_sub dut(.a(a),.b(b),.sum(sum),.barrow(barrow));
initial
begin
   $dumpfile("dump.vcd");
  $dumpvars(1,full_sub_tb);
a=0;b=0;
#5;
a=0;b=1;
#5;
a=1;b=0;
#5;
a=1;b=1;
$finish();
end
endmodule
