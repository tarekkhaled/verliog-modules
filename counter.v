module counter (
    input [7:0] cValue , //control value ;
    output [7:0] shown , 
    input up_down , 
    input clk ,
    input load ,
    input clear , // active low 
); 

reg [7:0] counter ; // reg only which can you assign in always block

assign shown <= counter ;

always@(posedge clk)
begin
    if(!clear)
    counter <= 8'h00 ; // h stands for hexa
    if (load)
    counter <= cValue ;
    if (up_down) 
    counter <= counter + 1 ;
    if (!up_down)
    counter <= counter - 1 ;
end

endmodule