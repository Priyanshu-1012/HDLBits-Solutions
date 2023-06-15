module top_module (
    input in1,
    input in2,
    input in3,
    output out);
wire o1;
    assign o1=~(in1^in2),
        out=o1^in3;
endmodule
