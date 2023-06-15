module top_module (input x, input y, output z);
wire z1,z2,z3,z4,zand,zor;
    moda ins1(x,y,z1);
    modb ins2(x,y,z2);
    moda ins3(x,y,z3);
    modb ins4(x,y,z4);
    
    assign zor =z1 | z2,
        zand = z3 & z4,
        z = zor ^ zand;
endmodule


module moda (input x,y, 
                   output z);
    assign z = (x^y) & x;
endmodule

module modb (input x,y, 
                   output z);
    assign z=~(x^y);
endmodule
