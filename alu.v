module alu(
    input [3:0] aluSel ,
    input [31:0] in1 ,
    input [31:0] in2 ,
    output aZero , 
    output [31:0] aOutput,
);

assign aZero = (!aOutput)  ; // if this equal zero will return 1 to aZero

always@(in1,in2,aluSel)
begin
    case(aluSel)
    0 :  aOutput <= in1 & in2 ; // and
    1 :  aOutput <= in1 | in2 ; // or
    2 :  aOutput <= in1 + in2 ; // add
    6 :  aOutput <= in1 - in2 ; // sub
    7 :  aOutput <= in1 < in2 ? 1 : 0 ; // bnq
    12:  aOutput <= ~ (in1|in2) ; // nor 
    default : aOutput <= 0 ;
    endcase 
end
endmodule