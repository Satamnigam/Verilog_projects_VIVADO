`timescale 1ns / 1ps
 
 
module top(
input clk,
input cs,
input we,
input [3:0] addr,
input [7:0] datain,
output [7:0] dataout
    );
    reg [7:0] g=0;
    wire [7:0] temp;
    integer i;
 blk_mem_gen_0 b1(clk,cs,we,addr,datain,temp);
  always@(posedge clk) begin
      g=temp;
      for (i=0;i<=7;i=i+1) begin
       if (we==1)
       g[i]=g[i]&1'b0;
      end
  end
  assign dataout=g;
endmodule