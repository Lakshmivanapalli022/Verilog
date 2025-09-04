module mux16to1 (
    input  [15:0] d,  
    input  [3:0]  sel,
    output        y    
);
    assign y = d[sel]; 
endmodule
