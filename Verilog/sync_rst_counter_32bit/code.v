module sync_rst_counter_32bit(

  input clock,
  input reset,
  output reg [31:0] count
);

  always@(posedge clock ) begin 
    if(reset) begin 
    count <= 32'd0;
    end
    else begin 
    count <= count + 32'd1;
    end 
  end 

endmodule
  
