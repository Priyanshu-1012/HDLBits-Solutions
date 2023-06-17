module top_module (
    input clock,
    input a,
    output p,
    output q );

    always @(negedge clock)begin
        q<=a;
    end
    assign p= clock ? a : p;
        
endmodule
