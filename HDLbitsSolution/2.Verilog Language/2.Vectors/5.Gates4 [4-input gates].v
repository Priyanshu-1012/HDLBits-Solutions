module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
assign out_and=&in, out_or=|in, out_xor=^in;
endmodule

