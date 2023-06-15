module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    reg count[3:0];
    genvar i;
    generate
        for(i=0;i<4;i++)begin:bcdadd
            if(i!=0) bcd_fadd ins(a[(4*i+3) : (4*i)],b[(4*i+3) : (4*i)],count[i-1],count[i],sum[(4*i+3) : (4*i)]);
            else bcd_fadd inst(a[3:0],b[3:0],cin,count[i],sum[3:0]);
                    end
        assign cout=count[3];
   endgenerate
endmodule
