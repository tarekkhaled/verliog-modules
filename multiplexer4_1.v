module multiplexer (
    input [31:0] in1 ,  // 32 bit 
    input [31:0] in2 ,  // 32 bit 
    input [31:0] in3 ,  // 32 bit 
    input [31:0] in4 ,  // 32 bit 
    input [1:0]selector , //  one bit  
    output [31:0] result 
) ; 

always@(in1,in2,in3,in4) // if any of these change 
    begin
        case (selector) // catch this always 
            2'b00 : result <= in1 ; // assign block for synthesizable 
            2'b01 : result <= in2 ;
            2'b10 : result <= in3 ; 
            default  : result <= in4 ; // if nothing achieved from above 
        endcase 
    end
endmodule 