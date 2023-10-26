module top_module (
    input clk,
    input reset,
    output OneHertz,
    output [2:0] c_enable
); //
    wire [3:0]w1,w2,w3;
    
    assign c_enable = {(w2==4'd9) & (w1==4'd9), w1==4'd9,1'b1};
    assign OneHertz = (w1==4'd9)&&(w2==4'd9)&&(w3==4'd9);
    
    bcdcount counter0 (clk, reset, c_enable[0], w1);
    bcdcount counter1 (clk, reset, c_enable[1], w2);
    bcdcount counter2 (clk, reset, c_enable[2], w3);

endmodule
