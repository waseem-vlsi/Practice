
module Basic_gates_tb();
reg A,B;  
wire Out1,Out2,Out3,Out4;
Basic_gates dut(.A(A), .B(B), .Out1(Out1), .Out2(Out2), .Out3(Out3), .Out4(Out4));
initial 
begin 
A = 1'b0; B = 1'b0;
#10 A = 1'b1; B = 1'b0;
#10 A = 1'b0; B = 1'b1;
#10 A = 1'b1; B = 1'b1;
#10 A = 1'bx; B = 1'bx;
#10 A = 1'bz; B = 1'bz;
#10 $finish;
end

initial 
begin 
$display ( "time = %0t A = %d B = %d", $time,A,B);
end 

endmodule


module Basic_gates3_tb;

reg  [3:0] A, B;  
wire [3:0] Out1, Out2, Out3, Out4;

basic_gates3 dut (
    .A(A), .B(B),
    .Out1(Out1), .Out2(Out2),
    .Out3(Out3), .Out4(Out4)
);

initial begin 
    A = 4'd3;  B = 4'd2;
    #10 A = 4'd1;  B = 4'd0;
    #10 A = 4'd5;  B = 4'd6;
    #10 A = 4'd12; B = 4'd9;
    #10 A = 4'd15; B = 4'd10;
    #10 A = 4'd11; B = 4'd3;
    #10 $finish;
end 

initial begin 
    $monitor(
        "time=%0t A=%d B=%d | AND=%d OR=%d NOT=%d BUF=%d",
        $time, A, B, Out1, Out2, Out3, Out4
    );
end

endmodule
