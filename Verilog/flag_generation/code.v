module flag_registers(

    input [15:0]A,B,
    input Cin,
    output [15:0]sum,
    output carry,zero_flag,sign_flag,carry_flag,parity_flag,overflow_flag, 
    output [16:0]out);
    
    assign {carry,sum} = A + B + Cin;
    assign out = {carry,sum};
     
     assign zero_flag = ~|out;
     assign sign_flag = out[16];
     assign carry_flag = out[16];
     assign parity_flag = ~^out;
     assign overflow_flag = (A[15] & B[15] & ~sum[15]) | (~A[15] & ~B[15] & sum[15]) ;
       
    endmodule
