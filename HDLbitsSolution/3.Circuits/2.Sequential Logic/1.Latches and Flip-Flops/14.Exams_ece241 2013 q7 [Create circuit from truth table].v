module top_module (
    input clk,
    input j,
    input k,
    output Q); 

    always @(posedge clk)
        Q<=((j&~Q)|(~k&Q)); //characteristic equation of jk ff
    
endmodule
