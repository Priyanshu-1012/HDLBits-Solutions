module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    
    genvar i;
    generate
        for(i=0;i<3;i++)begin:adr
            if(i!=0) 
                fa inst1(a[i],b[i],cout[i-1],cout[i],sum[i]);
        
        else fa inst2(a[0],b[0],cin,cout[0],sum[0]);
        end
    endgenerate
    
endmodule

module fa(input a,b,cin,
                 output cout,sum);
            assign {cout,sum}=a+b+cin;
        endmodule