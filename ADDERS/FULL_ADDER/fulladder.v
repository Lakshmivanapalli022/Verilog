module full_adder(
    input A,
    input B,
    input C_in,
    output SUM,
    output C_out
);

assign SUM = A ^ B ^ C_in;    
  assign C_out = (A & B) | (B & C_in) | (A & C_in);

endmodule
