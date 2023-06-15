module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]s0,s1,csel,co;
    add16 ins1(a[15:0],b[15:0],0,sum[15:0],csel);
    add16 ins2(a[31:16],b[31:16],0,s0,co);
    add16 ins3(a[31:16],b[31:16],1,s1,co);
    
    always @(*)
        begin
            case(csel)
                0: sum[31:16]=s0;
                1: sum[31:16]=s1;
            endcase
        end
endmodule
