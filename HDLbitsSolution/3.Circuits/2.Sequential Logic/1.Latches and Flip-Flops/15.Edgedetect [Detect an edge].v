module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0]del;  //delay
    always @(posedge clk)begin
  	 del<=in;
    pedge<=~del&in;
    end
endmodule
