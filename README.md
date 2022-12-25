# HDLBits-Solutions

## Step one
```
module top_module( output one );

    assign one = 1;

endmodule
```
## Zero
```
module top_module(
    output zero
);
assign zero=0;
endmodule
```
## Wire
```
module top_module( input in, output out );
assign out=in;
endmodule
```
## Wire4
```
module top_module( 
    input a,b,c,
    output w,x,y,z );
assign w=a,x=b,y=b,z=c;
endmodule
```
## Notgate
```
module top_module( input in, output out );
assign out=~in;
endmodule
```
## Andgate
```
module top_module( 
    input a, 
    input b, 
    output out );
assign out=a&b;
endmodule
```
## Norgate
```
module top_module( 
    input a, 
    input b, 
    output out );
    assign out=~(a|b);
endmodule
```
## Xnorgate
```
module top_module( 
    input a, 
    input b, 
    output out );
    assign out= ~(a^b);
endmodule
```
## Wire decl
```
`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
wire andab,andcd,orout;
    assign andab=a&b,
           andcd=c&d, 
           orout=andab|andcd;
           
    assign out=orout, 
           out_n= ~(orout);
endmodule
```
## 7458
```
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
wire andp2ab,andp2cd,andp1abc,andp1def;

    assign andp2ab = p2a&p2b, 
           andp2cd = p2c&p2d, 
           p2y= andp2ab|andp2cd;
                     
    assign andp1abc= p1a&p1b&p1c, 
           andp1def= p1d&p1e&p1f,
           p1y= andp1abc|andp1def;

endmodule
```
## Vector0
```
module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); 
    
    assign  outv=vec[2:0];
    
    assign o2=vec[2], 
           o1=vec[1], 
           o0=vec[0]; 
endmodule
```
## Vector1
```
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    
    assign out_hi=in[15:8], 
           out_lo=in[7:0];
endmodule

```
## Vector2
```
module top_module( 
    input [31:0] in,
    output [31:0] out );

    assign out[31:24] = in[7:0],
           out[23:16] = in[15:8],
           out[15:8] = in[23:16],
           out[7:0] = in[31:24];

endmodule
```
## Vectorgates
```
module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    assign out_or_bitwise[2:0]= a[2:0]|b[2:0],
           out_or_logical= a||b,
           out_not[5:3]=~b[2:0],
           out_not[2:0]=~a[2:0];
           
endmodule
```
