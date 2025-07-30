module mux4X1_tb;
  reg [3:0] i;
  reg [1:0] sel;
  wire out;
  mux4X1 uut (
    .i(i),
    .sel(sel),
    .out(out)
  );
  initial begin
    $dumpfile("mux4X1.vcd");
    $dumpvars(0,mux4X1_tb);
    $display("Time\t sel\t in\t out");
    $monitor("%0t\t %b\t %b\t %b", $time, sel, i, out);
    i = 4'b1010; 
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;
    i = 4'b1101;
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;
    $finish;
  end
endmodule
