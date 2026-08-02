module parametrised_counter(clock,reset,count);
  parameter N = 7;

  input clock;
  input reset;
  output reg [N - 1:0] count;

  always@(posedge clock) begin 
    if(reset) begin 
      count <= 0;
    end 
    else begin 
     count <= count + 1;
    end 
  end 

endmodule

  
