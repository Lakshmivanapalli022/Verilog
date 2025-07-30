module half_sub(
input a,b,
output sum,borrow);
assign sum=a^b;
  assign barrow=(~a) & b;
endmodule
