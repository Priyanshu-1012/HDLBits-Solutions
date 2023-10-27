module top_module (
    input [3:0] SW, //R
    input [3:0] KEY, //clk to KEY[0], E to KEY[1],L to KEY[2], and w to KEY[3].
    output [3:0] LEDR //outputs
); //

    muxdff inst1(KEY[0], KEY[3],  SW[3], KEY[1], KEY[2], LEDR[3]);
    muxdff inst2(KEY[0], LEDR[3], SW[2], KEY[1], KEY[2], LEDR[2]);
    muxdff inst3(KEY[0], LEDR[2], SW[1], KEY[1], KEY[2], LEDR[1]);
    muxdff inst4(KEY[0], LEDR[1], SW[0], KEY[1], KEY[2], LEDR[0]);
                           
endmodule

//------------------
module muxdff (
    input clk,
    input w, R, E, L,
    output Q
);
    wire d;
    assign d= L ? R : (E ? w : Q);
    always @(posedge clk)
        Q<=d;
endmodule
