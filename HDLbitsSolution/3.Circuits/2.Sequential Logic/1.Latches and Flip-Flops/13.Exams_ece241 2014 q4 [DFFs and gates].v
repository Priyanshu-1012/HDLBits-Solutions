module top_module (
    input clk,
    input x,
    output z
); 
   wire d1,d2,d3;
    reg q1,q2,q3;
    assign d1=x^q1,
        d2=x&~q2,
        d3=x|~q3,
        z=~(q1|q2|q3);
    always @(posedge clk)begin
        q1<=d1;
        q2<=d2;
        q3<=d3;
    end

endmodule
