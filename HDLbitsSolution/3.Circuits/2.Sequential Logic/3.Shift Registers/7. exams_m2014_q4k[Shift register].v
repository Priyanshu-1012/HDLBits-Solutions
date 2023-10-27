module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);

    wire q1,q2,q3;
    d_ff inst1(clk, resetn, in, q1);
    d_ff inst2(clk, resetn, q1, q2);
    d_ff inst3(clk, resetn, q2, q3);
    d_ff inst4(clk, resetn, q3, out);
endmodule
//---------------
module d_ff(
	input clk,
	input rst,
	input d,
	output reg q);
     
    always @(posedge clk)begin
        if(!rst) 
            q<=0;
        else 
            q<=d;
    end
endmodule