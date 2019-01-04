module d_flipFlop (in1,out1,clk,reset) ;
input clk , in1,reset ; 
output out1 ; 

always@(posedge clk , reset) 
if (!reset)
    begin
      out1 <= in1 ; // if not achieved previous value will be in out1
    end
else 
    begin
      out1 <= 1'b0 ;
    end

endmodule 