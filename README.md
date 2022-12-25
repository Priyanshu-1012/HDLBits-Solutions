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

