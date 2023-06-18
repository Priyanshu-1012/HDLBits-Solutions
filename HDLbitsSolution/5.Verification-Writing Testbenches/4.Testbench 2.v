module top_module();
    reg clk,in;
    reg [2:0]s;
    wire out;
    q7 inst(clk,in,s,out);
    
    initial begin
        clk=0;
      forever  #5 clk=~clk;
    end
    
    initial begin
        in=0;s=3'h2;
        #10 in=0;s=3'h6;
        #10 in=1;s=3'h2;
        #10 in=0;s=3'h7;
        #10 in=1;s=3'h0;
        #30 in=0;s=3'h0;
    end
endmodule
