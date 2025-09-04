module full(a,b,cin,sum,carry);
  input a,b,cin;
  output sum,carry;
  wire w1,w2,w3;
  xor g1(w1,a,b);
  xor g2(sum,w1,cin);
  and g3(w2,a,b);
  and g4(w3,w1,cin);
  or g5(carry,w2,w3);
endmodule

module adder_4_bit(a,b,cin,s,carry);
  input[3:0]a,b;
  input cin;
  output [3:0]s;
  output carry;
  wire w1,w2,w3;
  full f1(.a(a[0]),.b(b[0]),.cin(cin),.sum(s[0]),.carry(w1));
  full f2(.a(a[1]),.b(b[1]),.cin(w1),.sum(s[1]),.carry(w2));
  full f3(.a(a[2]),.b(b[2]),.cin(w2),.sum(s[2]),.carry(w3));
  full f4(.a(a[3]),.b(b[3]),.cin(w3),.sum(s[3]),.carry(carry));
endmodule


module bcd(a,b,cin,s,carry);
  input[3:0]a,b;
  input cin;
  output [3:0]s;
  output carry;
  wire w1,w2,w3;
  wire[3:0]sout;
  wire dumpy_carry;
  wire correction;
  wire [3:0] b_in;
  assign b_in[0]=correction&1'b0;
  assign b_in[1]=correction&1'b1;
  assign b_in[2]=correction&1'b1;
  assign b_in[3]=correction&1'b0;
  assign carry=correction;
  and g1(w1,sout[3],sout[2]);
  and g2(w2,sout[3],sout[1]);
  or g3(correction,w3,w1,w2);
  adder_4_bit f1(.a(a),.b(b),.cin(cin),.s(sout),.carry(w3));
  adder_4_bit f2(.a(sout),.b(b_in),.cin(1'b0),.s(s),.carry(dumpy_carry));
endmodule
