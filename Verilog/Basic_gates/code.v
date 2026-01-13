`timescale 1ns / 1ps

module Basic_gates(
input A,B,
output Out1,Out2,Out3,Out4);

and(Out1,A,B);
or(Out2,A,B);
not(Out3,A);
buf(Out4,A);
endmodule


module basic_gates2(
input [3:0]A,B,
output Out1,Out2,Out3,Out4);

assign Out1 = A&&B;
assign Out2 = A||B;
assign Out3 = ~A;
assign Out4 = A;
endmodule

module basic_gates3(
input [3:0]A,B,
output [3:0]Out1,Out2,Out3,Out4);

assign Out1 = A&B;
assign Out2 = A|B;
assign Out3 = ~A;
assign Out4 = A;

endmodule
