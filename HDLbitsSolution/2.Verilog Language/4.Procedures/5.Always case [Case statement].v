// synthesis verilog_input_version verilog_2001
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
            4'h0: out=data0;
            4'h1: out=data1;
            4'h2: out=data2;
            4'h3: out=data3;
            4'h4: out=data4;
            4'h5: out=data5;
            default: out=0;
            endcase
    end
            
endmodule
