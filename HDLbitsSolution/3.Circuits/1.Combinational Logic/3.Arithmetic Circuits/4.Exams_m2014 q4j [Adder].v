module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire cout [3:0];
    genvar i;
    generate
        for(i=0;i<4;i++)begin:fa_s
            if(i!=0) fa ins(x[i],y[i],cout[i-1],sum[i],cout[i]);
                
                else fa inst(x[0],y[0],0,sum[0],cout[0]);
        end
    endgenerate
    assign sum[4]=cout[3];
endmodule

module fa(input x,y,cin,
          output sum,cout);
    assign {cout,sum}=x+y+cin;
endmodule
