module async_reset_32bit_counter(
  input clock,
  input reset,
  output reg [31:0] count
);

  always@(posedge clock or posedge reset) begin 
    if(reset) begin 
      count <= 32'd0;
    end
    else begin 
    count <= count + 32'd1;
    end 
  end 

endmodule
