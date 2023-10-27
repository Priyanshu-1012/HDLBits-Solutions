module top_module (
    input clock,
    input a,
    output p,
    output reg q );
    
    assign p= clock ? a : p;
    
    always @(negedge clock)begin
    q<=p;
    end
endmodule
