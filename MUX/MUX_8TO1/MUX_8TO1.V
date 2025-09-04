module mux8to1 (
  input [3:0]sel,
  input [7:0]din,
  output reg y);
  always@(*)
    begin
      case(sel)
        3'b000:y=din[0];
        3'b001:y=din[1];
        3'b010:y=din[2];
        3'b011:y=din[3];
        3'b100:y=din[4];
        3'b101:y=din[5];
        3'b011:y=din[6];
        3'b111:y=din[7];
      endcase
    end
        endmodule
