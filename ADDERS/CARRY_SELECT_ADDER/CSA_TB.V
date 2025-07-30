module CarrySelectAdder_tb();
reg [3:0]A,B;
reg Cin;
wire Cout;
wire [4:0]Sum;

CarrySelectAdder dut(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
initial begin 
  $dump("CarrySelectAdder.vcd");
  $dumpvars(1);
  A=4'b0000;B=4'b0000;Cin=1;
#10;
$display("A=%b,B=%b,Cin=%b,Cout=%b,Sum=%b",A,B,Cin,Cout,Sum);
A=4'b0001;B=4'b0100; Cin=0;
#10;
$display("A=%b,B=%b,Cin=%b,Cout=%b,Sum=%b",A,B,Cin,Cout,Sum);
A=4'b0011;B=4'b0000; Cin=1;
#10;
$display("A=%b,B=%b,Cin=%b,Cout=%b,Sum=%b",A,B,Cin,Cout,Sum);
A=4'b0110;B=4'b1110;Cin=0;
#10;
$display("A=%b,B=%b,Cin=%b,Cout=%b,Sum=%b",A,B,Cin,Cout,Sum);
A=4'b1111;B=4'b1111;Cin=1;
#10;
$display("A=%b,B=%b,Cin=%b,Cout=%b,Sum=%b",A,B,Cin,Cout,Sum);
A=4'b1000;B=4'b0110;Cin=0;
#10;
$display("A=%b,B=%b,Cin=%b,Cout=%b,Sum=%b",A,B,Cin,Cout,Sum);
A=4'b0110;B=4'b1101;Cin=1;
#10;
$display("A=%b,B=%b,Cin=%b,Cout=%b,Sum=%b",A,B,Cin,Cout,Sum);
#10;
$finish();
end
endmodule
