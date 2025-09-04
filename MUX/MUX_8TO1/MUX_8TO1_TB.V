module tb;
   reg [7:0]din;
 reg [3:0]sel;
   wire y;
  mux8to1 m1(.din(din),.sel(sel),.y(y));
  initial begin
    $dumpfile("mux8to1.vcd");
    $dumpvars(0,tb);
    $display("Time\t sel\t in\t out");
    $monitor("%0t\t %b\t %b\t %b", $time, sel, din,y);
     din=8'b10111010;
    sel = 3'b000; #10;
    sel = 3'b010; #10;
    sel = 3'b100; #10;
    sel = 3'b110; #10;
    $finish;
  end
endmodule

