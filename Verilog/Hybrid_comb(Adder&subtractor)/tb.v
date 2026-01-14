`timescale 1ns / 1ps
module Hybrid_comb_ckt_tb();

    reg  [3:0] A, B;
    reg        sel, Cin;
    wire       y0, y1, y2, y3, y4;
    wire [3:0] out;

   
    Hybrid_comb_ckt dut (
        .A(A),
        .B(B),
        .sel(sel),
        .Cin(Cin),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3),
        .y4(y4),
        .out(out)
    );

    initial begin
        $monitor(
            "time=%0t | sel=%b Cin=%b | A=%d B=%d | out=%d carry=%b",
            $time, sel, Cin, A, B, out, y4
        );
    end

    initial begin
        // -------- ADDITION --------
        sel = 0; Cin = 0;
        A = 4'd3;  B = 4'd5;   
        #10;

        A = 4'd7;  B = 4'd6;   
        #10;

        A = 4'd9;  B = 4'd4;   
        #10;

        // -------- SUBTRACTION (B - A) --------
        sel = 1; Cin = 1;      
        A = 4'd3;  B = 4'd5;   
        #10;

        A = 4'd6;  B = 4'd4;   
        #10;

        A = 4'd2;  B = 4'd9;   
        #10;

        $finish;
    end

endmodule
