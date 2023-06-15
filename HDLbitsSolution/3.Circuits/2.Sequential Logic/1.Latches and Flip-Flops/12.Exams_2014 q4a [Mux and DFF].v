module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    wire d;
    assign d= L ? R : (E ? w : Q);

    always @(posedge clk)
        Q<=d;
        
endmodule
