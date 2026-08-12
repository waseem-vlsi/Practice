module tb();
    reg clock_ref;
  reg clock1;
  reg clock2;

  always #5 clock_ref = ~ clock_ref;

  always begin 
    #5;
    clock1 = ~ clock1;
    #10;
    clock1 = ~clock1;
    #5;
  end 

  always begin 
    #5;
    clock2 = ~ clock2;
    #20;
    clock2 = ~clock2;
    #15;
  end 
endmodule
