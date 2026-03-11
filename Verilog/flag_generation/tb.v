
module flag_registers_tb();
reg [15:0]A,B;
reg Cin;
wire [15:0]sum;
wire carry,zero_flag,sign_flag,carry_flag,parity_flag,overflow_flag ;
wire [16:0]out;

flag_registers dut(.A(A), .B(B), .Cin(Cin), .sum(sum), .carry(carry), .zero_flag(zero_flag),
                    .sign_flag(sign_flag), .carry_flag(carry_flag), .parity_flag(parity_flag),
                    .overflow_flag(overflow_flag), .out(out));
  
  initial 
  begin 
    $dumpfile("alu.vcd");
    $dumpvars(0,flag_registers);
    $monitor($time, "A = %h, B = %h, Cin = %d, sum = %d, carry = %d, zero_flag = %d, sign_flag = %d, carry_flag = %d, parity_flag = %d,
             overflow_flag = %d, out = %h", A,B,Cin,sum,carry,zero_flag, sign_flag, carry_flag, parity_flag, overflow_flag, out);  
  end
                   
 initial 
 begin 
 A = 16'd10; B = 16'd20; Cin = 1'd0;
 #10 A = 16'd3; B = 16'd17; Cin = 1'd0;
 #10 $finish;
  end 
                   
endmodule

