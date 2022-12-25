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
```
