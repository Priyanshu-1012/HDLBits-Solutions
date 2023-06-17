module top_module (
    input clk,
    input a,
    output [3:0] q );
    
    always @(posedge clk)
        q<= a ? 'd4 : ((q==6) ? 0 : q+1);

 endmodule
