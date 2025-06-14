module FullAdder (input A,B,C,
output Sum, Carry);
assign Sum=A^B^C;
assign Carry=(A&B| B&C|C&A);

endmodule

module mux (input A, B, sel,
output reg y);
always @(A, B, sel)
begin
if (sel==0)
y=A;
else
y=B;
end
endmodule

module CarrySelectAdder (
input [3:0] A,B,
input Cin, 
output Cout,
output [4:0] Sum);
wire [3:0] w0,w1,c0,c1;
    
///FOR CARRY=0;
FullAdder M1 (.A(A[0]),.B(B[0]),.C(0),.Sum(w0[0]),.Carry(c0[0])); 
FullAdder M2 (.A(A[1]),.B(B[1]),.C(c0[0]),.Sum(w0[1]),.Carry (c0 [1]));
FullAdder M3 (.A(A[2]),.B(B[2]),.C(c0[1]),.Sum(w0[2]),.Carry(c0[2]));
FullAdder M4 (.A(A[3]),.B(B[3]),.C(c0[2]),.Sum(w0[3]),.Carry(c0[3]));

///FOR CARRY=1;

FullAdder M5 (.A(A[0]),.B(B[0]),.C(1), .Sum(w1[0]),.Carry(c1[0])); 
FullAdder M6 (.A(A[1]),.B(B[1]),.C(c1[0]),.Sum(w1[1]),.Carry(c1[1]));
FullAdder M7(.A(A[2]),.B(B[2]),.C(c1[1]),.Sum(w1[2]),.Carry (c1[2]));
FullAdder M8 (.A(A[3]),.B(B[3]),.C(c1[2]),.Sum (w1[3]),.Carry(c1[3]));

///To select the carry

mux m5 (.A(c0[3]),.B(c1[3]),.sel (Cin),.y(Cout));
mux ml (.A (w0[0]),.B(w1[0]),.sel(Cin),.y(Sum[0]));
mux m2 (.A(w0[1]),.B(w1[1]),.sel (Cin),.y(Sum[1]));
mux m3 (.A(w0 [2]),.B(w1[2]),.sel (Cin),.y(Sum[2]));
mux m4 (.A (w0 [3]),.B(w1[3]),.sel (Cin),.y(Sum[3]));

assign Sum[4]=Cout;

endmodule
