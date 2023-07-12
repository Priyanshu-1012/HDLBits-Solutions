module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0]del;
    always @(posedge clk) begin
        del<=in;
        out<=reset ? 0 : (~in&del)|out;
	end
    
endmodule
