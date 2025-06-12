module gates(
  input a,b,
  output y_and,y_or,y_not_a,y_xor,y_xnor
);
  and(y_and,a,b);
  or(y_or,a,b);
  not(y_not_a,a);
  xor(y_xor,a,b);
  xnor(y_xnor,a,b);
endmodule
