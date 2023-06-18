module top_module(
    input clk,
    input load,
    input ena,
    input [1:0] amount,
    input [63:0] data,
    output reg [63:0] q); 
    
   always @(posedge clk)begin
        if(load) 
            q<=data;
       else if(ena)begin
           case(amount)
               'b00: q<=q<<1;
               'b01: q<=q<<8;
               'b10: q<=$signed(q)>>>1;
               'b11: q<=$signed(q)>>>8;
                default: q<=q;
            endcase
        end
       else q<=q;
    end
endmodule
