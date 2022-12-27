_Goto HDLBits_ :point_right: [click here](https://hdlbits.01xz.net/wiki/Step_one)

# HDLBits-Solutions

## Problems _quick nav_ :small_red_triangle_down:

<details><summary>Getting Started</summary>
<p>
	
:white_check_mark: [Getting Started](https://github.com/Priyanshu-1012/HDLBits-Solutions#step-one) 

:white_check_mark: [Output Zero](https://github.com/Priyanshu-1012/HDLBits-Solutions#zero)

</p>
</details>



<details><summary>Verilog Language</summary>
<p>
	<details><summary>Basics</summary><p>
	
:white_check_mark: [Simple wire](https://github.com/Priyanshu-1012/HDLBits-Solutions#wire)
	
:white_check_mark: [Four Wires](https://github.com/Priyanshu-1012/HDLBits-Solutions#wire4)
	
:white_check_mark: [Inverter](https://github.com/Priyanshu-1012/HDLBits-Solutions#notgate)
	
:white_check_mark: [AND gate](https://github.com/Priyanshu-1012/HDLBits-Solutions#andgate)
	
:white_check_mark: [NOR gate](https://github.com/Priyanshu-1012/HDLBits-Solutions#norgate)
	
:white_check_mark: [XNOR gate](https://github.com/Priyanshu-1012/HDLBits-Solutions#xnorgate)
	
:white_check_mark: [Declaring wires](https://github.com/Priyanshu-1012/HDLBits-Solutions#wire-decl)
	
:white_check_mark: [7458 chip](https://github.com/Priyanshu-1012/HDLBits-Solutions#7458)

</p>
</details>

	
<details><summary>Vectors</summary>
<p>
	
:white_check_mark: [Vectors](https://github.com/Priyanshu-1012/HDLBits-Solutions#vector0) 

:white_check_mark: [Vectors in more detail](https://github.com/Priyanshu-1012/HDLBits-Solutions#vector1)
		       
:white_check_mark: [Vector part select](https://github.com/Priyanshu-1012/HDLBits-Solutions#vector2)
		        
:white_check_mark: [Bitwise operators](https://github.com/Priyanshu-1012/HDLBits-Solutions#vectorgates)
		    
:white_check_mark: [Four-input gates](https://github.com/Priyanshu-1012/HDLBits-Solutions#gates4)
		    
:white_check_mark: [Vector concantenation operator](https://github.com/Priyanshu-1012/HDLBits-Solutions#vector3)
		    
:white_check_mark: [Vector reversal 1](https://github.com/Priyanshu-1012/HDLBits-Solutions#vectorr)
		    
:white_check_mark: [Replication operator](https://github.com/Priyanshu-1012/HDLBits-Solutions#vector4)
		    
:white_check_mark: [More replication](https://github.com/Priyanshu-1012/HDLBits-Solutions#vector3)
</p>
</details>


<details><summary>Modules:Hierarchy</summary>
<p>

:white_check_mark: [Modules](https://github.com/Priyanshu-1012/HDLBits-Solutions#module)

:white_check_mark: [Connecting ports by position](https://github.com/Priyanshu-1012/HDLBits-Solutions#module-pos)

:white_check_mark: [Connecting ports by name](https://github.com/Priyanshu-1012/HDLBits-Solutions#module-name)

:white_check_mark: [Three module](https://github.com/Priyanshu-1012/HDLBits-Solutions#module-shift)

:white_check_mark: [Modules and vectors ](https://github.com/Priyanshu-1012/HDLBits-Solutions#module-shift8)

:white_check_mark: [Adder 1](https://github.com/Priyanshu-1012/HDLBits-Solutions#module-add)
	
:white_check_mark: [Adder 2](https://github.com/Priyanshu-1012/HDLBits-Solutions#module-fadd)

:white_check_mark: [Carry-select adder](https://github.com/Priyanshu-1012/HDLBits-Solutions#module-cseladd)
	
:white_check_mark: [Adder-subtractor](https://github.com/Priyanshu-1012/HDLBits-Solutions#module-addsub)
	
</p>
</details>	
	
<details><summary>Procedures</summary>
<p>
	
:white_check_mark: [Always blocks(combinational)](https://github.com/Priyanshu-1012/HDLBits-Solutions#alwaysblock1)

:white_check_mark: [Always blocks(clocked)](https://github.com/Priyanshu-1012/HDLBits-Solutions#alwaysblock2)

:white_check_mark: [If statement](https://github.com/Priyanshu-1012/HDLBits-Solutions#always-if)
	
:white_check_mark: [If statement latches](https://github.com/Priyanshu-1012/HDLBits-Solutions#always-if2)
	
:white_check_mark: [Case statement](https://github.com/Priyanshu-1012/HDLBits-Solutions#always-case)

:white_check_mark: [Priority encoder](https://github.com/Priyanshu-1012/HDLBits-Solutions#always-case2)

:white_check_mark: [Priority encoder with casez](https://github.com/Priyanshu-1012/HDLBits-Solutions#always-casez)
	
</p>
</details>

<details><summary>More verilog features</summary>
<p>	
:white_check_mark: [Conditional temporary operator](https://github.com/Priyanshu-1012/HDLBits-Solutions#alwaysblock1)	

	
</p>
</details>
	
	
</p>
</details>







## Step one [Getting started]

```verilog
module top_module( output one );

    assign one = 1;

endmodule
```
## Zero [Output zero]
```verilog
module top_module(
    output zero
);
assign zero=0;
endmodule
```
## Wire [Simple wire]
```verilog
module top_module( input in, output out );
assign out=in;
endmodule
```
## Wire4 [four wires]
```verilog
module top_module( 
    input a,b,c,
    output w,x,y,z );
assign w=a,x=b,y=b,z=c;
endmodule
```
## Notgate [Inverter]
```verilog
module top_module( input in, output out );
assign out=~in;
endmodule
```
## Andgate [AND gate]
```verilog
module top_module( 
    input a, 
    input b, 
    output out );
assign out=a&b;
endmodule
```
## Norgate [NOR gate]
```verilog
module top_module( 
    input a, 
    input b, 
    output out );
    assign out=~(a|b);
endmodule
```
## Xnorgate [XNOR gate]
```verilog
module top_module( 
    input a, 
    input b, 
    output out );
    assign out= ~(a^b);
endmodule
```
## Wire decl [Declaring wires]
```verilog
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
## 7458 [7458 chip]
```verilog
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
## Vector0 [Vectors]
```verilog
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
## Vector1 [Vectors in more detail]
```verilog
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    
    assign out_hi=in[15:8], 
           out_lo=in[7:0];
endmodule

```
## Vector2 [Vector part select]
```verilog
module top_module( 
    input [31:0] in,
    output [31:0] out );

    assign out[31:24] = in[7:0],
           out[23:16] = in[15:8],
           out[15:8] = in[23:16],
           out[7:0] = in[31:24];

endmodule
```
## Vectorgates [Bitwise operators]
```verilog
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
## Gates4 [4-input gates]
```verilog
module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    assign out_and=in[3]&in[2]&in[1]&in[0],
           out_or=in[3]|in[2]|in[1]|in[0],
           out_xor=in[3]^in[2]^in[1]^in[0];
endmodule
```
## Vector3 [Vector concatenation operator]
```verilog
module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    wire [31:0] com;
assign com[31:0]={a[4:0],b[4:0],c[4:0],d[4:0],e[4:0],f[4:0],2'b11};
    assign z[7:0]= com[7:0];
    assign y[7:0]= com[15:8];
    assign x[7:0]= com[23:16];
    assign w[7:0]= com[31:24];

endmodule
```
## Vectorr [Vector reversal 1]
```verilog
module top_module( 
    input [7:0] in,
    output [7:0] out
);
    assign out[7:0]={in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]};
endmodule
```
method2 (using loop)
```verilog
module top_module( 
    input [7:0] in,
    output [7:0] out
);
  always @(*) begin	
		for (int i=0; i<8; i++)	
			out[i] = in[8-i-1];
	end
endmodule
```
method3 (using generate for-loop)
```verilog
module top_module( 
    input [7:0] in,
    output [7:0] out
);
  generate
		genvar i;
      for (i=0; i<8; i = i+1) begin: rev
			assign out[i] = in[8-i-1];
		end
	endgenerate
endmodule
```
## Vector4 [Replication operator]
```verilog
module top_module (
    input [7:0] in,
    output [31:0] out );

    assign out={{24{in[7]}}, in[7:0]};

endmodule
```
## Vector5 [More replication]
```verilog
module top_module (
    input a, b, c, d, e,
    output [24:0] out );
    
assign out=~{{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}}^{5{a,b,c,d,e}};
    
endmodule
```
## Module [Modules]
```verilog
module top_module ( input a, input b, output out );
    mod_a inst1 (.in1(a), .in2(b), .out(out));
   
    
endmodule
```
## Module pos [Connecting ports by position]
```verilog
module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    mod_a inst1(out1,out2,a,b,c,d);
endmodule
```
## Module name [Connecting ports by name]
```verilog
module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    mod_a inst1(.in1(a), .in2(b), .in3(c), .in4(d), .out1(out1), .out2(out2) );
endmodule
```
## Module shift [Three modules]
```verilog
module top_module ( input clk, input d, output q );
    wire q1,q2;
    my_dff inst1(.clk(clk), .d(d), .q(q1));
    my_dff inst2(.clk(clk), .d(q1), .q(q2));
    my_dff inst3(.clk(clk), .d(q2), .q(q));
endmodule
```
## Module shift8 [Modules and vectors]
```verilog
module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0]q1,q2,q3;
    
    my_dff8 inst1(.clk(clk), .d(d), .q(q1));
    my_dff8 inst2(.clk(clk), .d(q1), .q(q2));
    my_dff8 inst3(.clk(clk), .d(q2), .q(q3));
    
    always @(*)    //this is for combinational block
		case(sel)
			2'h0: q = d;
			2'h1: q = q1;
			2'h2: q = q2;
			2'h3: q = q3;
		endcase

endmodule
```
## Module add [Adder-1]
```verilog
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c1,c2;

    add16 inst1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(c1));
    add16 inst2(.a(a[31:16]), .b(b[31:16]), .cin(c1), .sum(sum[31:16]), .cout(c2));

endmodule
```
## Module fadd [Adder-2]
```verilog
module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c,c2;
    
    add16 inst1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]),  .cout(c));
    add16 inst2(.a(a[31:16]), .b(b[31:16]), .cin(c), .sum(sum[31:16]),  .cout(c2));
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

 assign sum = a ^ b ^ cin;
 assign cout = a&b | a&cin | b&cin;
 
endmodule
```
## Module cseladd [Carry-select adder]
```verilog
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]s2,s3,c2,c3,sel;
    
    add16 inst1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(sel));
    add16 inst2(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(s2), .cout(c2));
    add16 inst3(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(s3), .cout(c3));
    
    always @(*)    
		case(sel)
           1'b0  : sum[31:16] = s2;
           1'b1  : sum[31:16] = s3;
		endcase

endmodule
```
## Module addsub [Adder-subtractor]
```verilog
module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [15:0]c,c2;
    wire [31:0]xorout,subin;
    
    assign subin={32{sub}};   //making sub 32 bit so that we can XOR it with inp 'b'.
    assign xorout=b^subin;
    
    add16 inst1(.a(a[15:0]), .b(xorout[15:0]), .cin(sub), .cout(c), .sum(sum[15:0]));
    add16 inst2(.a(a[31:16]), .b(xorout[31:16]), .cin(c), .cout(c2), .sum(sum[31:16]));

endmodule
```
method2 (XOR as programmable inverter)

![image](https://user-images.githubusercontent.com/39450902/209582275-f3619c07-8380-4e14-bb1d-aa5c209ef690.png)


```verilog
module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [15:0]c,c2;
    wire [31:0]xorout;
    
    always @(*)                      //XOR gate can also be viewed as a programmable inverter, 
        case(sub)
            0: xorout = b;           //where one input controls whether the other should be inverted
            1: xorout = ~b;
        endcase
    add16 inst1(.a(a[15:0]), .b(xorout[15:0]), .cin(sub), .cout(c), .sum(sum[15:0]));
    add16 inst2(.a(a[31:16]), .b(xorout[31:16]), .cin(c), .cout(c2), .sum(sum[31:16]));

endmodule
```
## Alwaysblock1 [Always block (combinational)]
```verilog
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
assign out_assign = a & b;
always @(*) out_alwaysblock = a & b;
endmodule
```
## Alwaysblock2 [Always block (clocked)]
```verilog
// synthesis verilog_input_version verilog_2001
module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
assign out_assign = a ^ b;
always @(*) out_always_comb = a ^ b;
    always @(posedge clk) out_always_ff <= a ^ b;
endmodule
```
## Always if [If statement]
```verilog

module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   );
    
    assign out_assign= sel_b2 ? (sel_b1 ? b : a) : a;
    
    always @(*) begin
        if(sel_b1 && sel_b2) begin
            out_always=b;
        end
        else begin
            out_always=a;
        end
    end
    
endmodule

```
## Always if2 [If statement latches]
```verilog
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        shut_off_computer=cpu_overheated; 
    end

    always @(*) begin
        if (~arrived && ~gas_tank_empty) begin
           keep_driving = 1;
          end
         else begin
          keep_driving = 0;
        end
    end

endmodule
```
## Always case [Case statement]
```verilog
module top_module ( 
    input [2:0] sel, 
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out   );//

    always@(*) begin  // This is a combinational circuit
        case(sel)
            3'b000 : out=data0;
            3'b001 : out=data1;
            3'b010 : out=data2;
            3'b011 : out=data3;
            3'b100 : out=data4;
            3'b101 : out=data5;
            3'b110 : out=0;
            3'b111 : out=0;
            
        endcase
    end

endmodule
```
## Always case2 [Priority encoder]
```verilog
// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always @(*)begin
        
        if(in[0]==1)
            pos=0;
        else if(in[1]==1)
            pos=1;
        else if(in[2]==1)
            pos=2; 
        else if(in[3]==1)
            pos=3;
        else pos=0;
    end
endmodule
```
method2 (using loop)
```verilog
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    integer i;
       always @(*) begin
           pos=2'b00;
           for(i=3;i>=0;i=i-1)
            if(in[i]==1)
                pos=i;
       end
endmodule
```
## Always casez [Priority encoder with casez]
```verilog
// synthesis verilog_input_version verilog_2001
module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    always @* begin
        casez(in[7:0])
       8'bzzzzzzz1 : pos=0;
       8'bzzzzzz1z : pos=1;
       8'bzzzzz1zz : pos=2;
       8'bzzzz1zzz : pos=3;
       8'bzzz1zzzz : pos=4;
       8'bzz1zzzzz : pos=5;
       8'bz1zzzzzz : pos=6;
       8'b1zzzzzzz : pos=7;
       default : pos=0;
        endcase
    end
endmodule

```
## Always nolatches [Avoid latches]
```verilog
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
   
   always @* begin
    up=0;down=0;right=0;left=0;
      case(scancode)
        16'he06b :	left =1;
        16'he072 :	down=1;
		16'he074 :	right =1;
		16'he075 :	up =1;
        endcase
   end
endmodule
```
## Conditional [Conditional temporary operator]
```verilog

```
