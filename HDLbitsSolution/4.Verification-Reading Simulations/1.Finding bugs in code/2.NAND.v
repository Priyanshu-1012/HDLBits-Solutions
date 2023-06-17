module top_module (input a, input b, input c, output out);
wire outo;
    andgate inst1 ( outo,a,b,c,1,1 );
assign out=~outo;
endmodule
