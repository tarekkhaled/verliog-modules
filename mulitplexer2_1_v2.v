module inverter (
input  eValue , // entered Value 
output oValue  // output Value 
);

assign oValue = ~eValue ;

endmodule 


module AOI ( // And Or Inverter Circut
    input A , 
    input B ,
    input C , 
    input D , 
    output result  
);

wire AB , CD ; 

assign AB <= A & B ;
assign CD <= C & D ;

assign result <= ~ (AB || CD) ;

endmodule 


module muxCircuit (
    input sel,
    input A ,
    input B ,
    output result2 
);

wire selB , FB ;


inverter G1 (sel,selB) ;
AOI G2 (selB,A,sel,B,FB) ;
inverter G2 (FB,result2) ;

endmodule 
