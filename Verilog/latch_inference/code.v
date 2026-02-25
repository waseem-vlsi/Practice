module simple_latch(
input data,load,
output reg d_out);

reg t;
always@(load or data)
begin 
if(!load)
begin
t = data;
d_out = !t;
end 

end

endmodule
