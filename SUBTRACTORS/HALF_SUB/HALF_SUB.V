module half_sub(
input a,b,
output sum,barrow);
assign sum=a^b;
  assign barrow=(~a) & b;
endmodule
