module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [15:0]c,co;
    wire [31:0]outb;
    always @(*) begin
        case(sub)
            1: outb=~b;
            0: outb=b;
        endcase
    end
    
    add16 ins1(a[15:0], outb[15:0], sub, sum[15:0], c);
    add16 ins2(a[31:16], outb[31:16], c, sum[31:16], co);
    
endmodule
