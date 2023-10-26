module top_module(
    input clk,
    input reset,
    input ena,
    output pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss); 
    
  wire ena_m,ena_h;
    
    assign ena_m=(ss[7:4]==4'd5 && ss[3:0]==4'd9) ? 1 : 0;
    assign ena_h=(mm[7:4]==4'd5 && mm[3:0]==4'd9 && ena_m) ? 1 : 0;
    
    cntr59 inst1(clk,reset,ena,ss);
    cntr59 inst2(clk,reset,ena_m,mm);
    cnt_hr ins(clk, reset,ena_h, hh);
    
    always @(posedge clk)begin
        if(reset) 
            pm<=0;
        else 
            pm<=(hh==8'h11 && mm==8'h59 && ss==8'h59) ? ~pm :pm;
    end
    
endmodule


//----------------
module cntr59(
    input clk,
    input reset,      
    input ena,
    output reg[7:0] q);

    always @(posedge clk) begin
        if(reset) q<=0;
        else if(ena)
          begin
          if(q[3:0]==4'd9) begin
                    q[3:0]<=4'd0;
                    if(q[7:4]==4'd5) q[7:4]<=0;
                      else q[7:4]<=q[7:4]+1;
                    end
          else q[3:0]<=q[3:0]+4'd1;
          end
    end
endmodule
//----------------
module cnt_hr(
    input clk,
    input reset,
    input ena,
    output reg[7:0] q);

    always @(posedge clk) begin
        if(reset) begin
            q[7:4]<=4'd1;       //reset to 12
            q[3:0]<=4'd2;
        end
        else if(ena)begin
            if(q[7:4]==4'd1 && q[3:0]==4'd2) begin
                q[7:4]<=4'd0;
                q[3:0]<=4'd1;
             end
            else begin
                if(q[3:0]==4'd9) begin 
                    q[3:0]<=4'd0;
                    q[7:4]<=4'd1;
                  end
                else q[3:0]<=q[3:0]+4'd1;
            end
            end
    end
endmodule