module fsm (
    input start , 
    output result ,
    input clk ,
    input reset  
);

parameter idle = 2'b00 ;
parameter g1 = 2'b01;
parameter g2 = 2'b02;

reg [1:0] state ; 

always@(posedge clk , inpo , posedge reset) 
begin
  if (reset)
  state <= idle ;
  else 
    case (state)
    idle : (start) ? state <= g1 : state <= idle ;
    g1 :  state <= g2 ;
    g2 : state <= idle 
end