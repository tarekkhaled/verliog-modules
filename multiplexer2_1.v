module multiplexer (
    input [3:0] in1 ,  // 4 bit 
    input [3:0] in2 ,  // 4 bit 
    input selector , //  one bit  
    output [3:0] result 
) ; 

assign result = (!selector) ? in1 : in2 ;

endmodule 