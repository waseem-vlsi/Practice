module tb ();
    reg clock;
  reg reset;
  reg [3:0] data_in;
  


  initial begin 
      reset = 1'b0;
  end 
  
    // always #5 clock = ~clock;

  initial begin
    clock = 1'd0;
    forever begin 
      #5 clock = ~ clock;
    end 
  end 
  
  initial begin 
      reset = 1'b1;
    #30;
    reset = 1'b0;
  end 

  initial begin 
      #30;
    data_in = 4'd3;
    #20;
    data_in = 4'd7;
    #20;
    data_in = 4'd1;
  end 

  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end 

  initial begin 
    $monitor("data_in = %0d at time = %0t", data_in, $time);
  end 

  initial begin 
    #200;
    $finish();
  end 
endmodule
