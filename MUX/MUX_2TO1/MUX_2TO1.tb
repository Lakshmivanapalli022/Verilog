module mux2to1_tb;
    reg a, b, sel;
    wire y;
  mux2to1 uut (.a(a),.b(b),.sel(sel),.y(y));
    initial begin
      $display("sel a b | y");
      $dumpfile("mux2to1.vcd");    
        $dumpvars(0, mux2to1_tb); 
      for ( integer i = 0; i < 8; i = i + 1) begin
            {sel, a, b} = i[2:0];  
            #5;
            $display(" %b  %b %b | %b", sel, a, b, y);
        end
        $finish;
    end
endmodule
