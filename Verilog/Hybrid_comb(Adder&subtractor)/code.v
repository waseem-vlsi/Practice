`timescale 1ns / 1ps
module Gate(
input B0,B1,B2,B3,
input in,
output Y0,Y1,Y2,Y3);

assign Y0 = B0 ^ in;
assign Y1 = B1 ^ in;
assign Y2 = B2 ^ in;
assign Y3 = B3 ^ in;

endmodule




module full_adder(
input A,B,Cin,
output Sum,Carry);

assign Sum = A^B^Cin;
assign Carry = A&B | B&Cin | Cin&A;
endmodule

module adder_4bit(
input A0,A1,A2,A3,Cin,
input B0,B1,B2,B3,
output Y0,Y1,Y2,Y3,Y4);

wire W1,W2,W3,W4,W5,W6;
full_adder a1(.A(A0), .B(B0), .Cin(Cin), .Sum(Y0), .Carry(W1));
full_adder a2(.A(A1), .B(B1), .Cin(W1), .Sum(Y1), .Carry(W2));
full_adder a3(.A(A2), .B(B2), .Cin(W2), .Sum(Y2), .Carry(W3));
full_adder a4(.A(A3), .B(B3), .Cin(W3), .Sum(Y3), .Carry(Y4));

endmodule



module Hybrid_comb_ckt(
    input  [3:0] A, B,
    input  sel, Cin,
    output y0, y1, y2, y3, y4,
    output [3:0] out
);

wire X1, X2, X3, X4;

Gate g1(
    .B0(A[0]), .B1(A[1]), .B2(A[2]), .B3(A[3]),
    .in(sel),
    .Y0(X1), .Y1(X2), .Y2(X3), .Y3(X4)
);

adder_4bit g2(
    .A0(B[0]), .A1(B[1]), .A2(B[2]), .A3(B[3]),
    .B0(X1), .B1(X2), .B2(X3), .B3(X4),
    .Cin(Cin),
    .Y0(y0), .Y1(y1), .Y2(y2), .Y3(y3), .Y4(y4)
);

assign out = {y3, y2, y1, y0};

endmodule
