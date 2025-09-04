module tb_mux16to1;
    reg  [15:0] d;
    reg  [3:0]  sel;
    wire y;
  mux16to1 uut (.d(d),.sel(sel),.y(y));  
    initial begin
        d = 16'b1010_1100_1111_0001;
      for (integer i = 0; i < 16; i = i + 1) begin
            sel = i;
            #5 $display("sel=%d  y=%b", sel, y);
        end
        $finish;
    end
endmodule
