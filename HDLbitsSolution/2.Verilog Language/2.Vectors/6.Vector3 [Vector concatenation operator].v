module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
    wire [31:0] con;
    assign con={a,b,c,d,e,f,2'b11},
        w=con[31:24],
        x=con[23:16],
        y=con[15:8],
        z=con[7:0];

endmodule

