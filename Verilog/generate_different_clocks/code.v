module tb();
    reg clock1;
  reg clock2;
  reg clock3;

  initial begin 
    clock1 = 1'b0;
    clock2 = 1'b0;
    clock3 = 1'b0;
  end 

  always #5 clock1 = ~clock1;
  always #10 clock2 = ~clock2;
  always #20 clock3 = ~clock3;

endmodule
