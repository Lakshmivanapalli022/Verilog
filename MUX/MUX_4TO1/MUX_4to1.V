 module mux4X1( i,sel,out);
input [3:0]i;
input [1:0]sel;
output out;
assign out = sel[1] ? ( sel[0] ? i[3]: i[2]) : ( sel[0] ? i[1]: i[0]);
endmodule  

