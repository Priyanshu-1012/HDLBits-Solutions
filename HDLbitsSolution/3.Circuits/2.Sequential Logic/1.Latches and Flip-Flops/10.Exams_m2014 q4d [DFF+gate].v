module top_module (
    input clk,
    input in, 
    output out);
    
    wire d;
    assign d=in ^ out;
    always @(posedge clk)begin
        out<=d;
    end
endmodule
