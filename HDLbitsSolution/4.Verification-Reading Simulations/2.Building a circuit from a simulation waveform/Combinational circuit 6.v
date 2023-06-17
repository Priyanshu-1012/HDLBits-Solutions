module top_module (
    input [2:0] a,
    output [15:0] q ); 

    always @*begin
        case(a)
            0: q='h1232;
            1: q='haee0;
            2: q='h27d4;
            3: q='h5a0e;
            4: q='h2066;
            5: q='h64ce;
            6: q='hc526;
            7: q='h2f19;
        endcase
    end
endmodule
