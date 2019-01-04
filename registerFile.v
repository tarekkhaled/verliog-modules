module registerF (
    input [4:0] read1 ,
    input [4:0] read2 ,
    input [4:0] regAddress ,
    input [31:0] dwbsira , // data will be stored in reg again
    input writeReg ,
    input clk ,
    output [31:0] data1 ,
    output [31:0] data2 
); 

reg [31:0] Rf [31:0] ; // Two Dimension Array "memory" 

assign data1 = Rf[read1] ;
assign data2 = RF[read2] ; 


always@(posedge clk) 
begin
  if (writeReg)
    begin
    RF[regAddress] <=dwbsira ;
    end
end

endmodule 