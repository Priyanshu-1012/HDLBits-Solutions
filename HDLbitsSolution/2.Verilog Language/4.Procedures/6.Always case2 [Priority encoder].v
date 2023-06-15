module top_module (
    input [3:0] in,
    output reg [1:0] pos
); integer i;
    always @(*)
    begin
        pos = 2'b00; 
        for (i = 3; i >=0; i = i - 1)
        begin
            if (in[i])
                pos = i;
        end
    end
endmodule
