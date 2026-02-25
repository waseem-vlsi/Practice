module replication(
input a,b,
output [7:0]out0,out1,out2,out3);

assign out0 = {{5{a}},{3{b}}};
assign out1 = {8{a&b}};
assign out2 = {3'd7,{5{a^b}}};
assign out3 = {2'd2,5'd20,1'd0};

endmodule
