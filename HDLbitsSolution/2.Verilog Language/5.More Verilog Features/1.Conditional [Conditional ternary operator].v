module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    
    wire [7:0]min1,min2;
    
 assign min1= (a>b) ? b : a,
        min2= (min1>c) ? c : min1,
        min= (min2>d) ? d : min2;

endmodule
