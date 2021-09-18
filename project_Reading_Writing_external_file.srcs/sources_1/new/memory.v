`timescale 1ns / 1ps
 
 //RAM IMPLEMTATION
module memory(
    input clk,oe,wr,
    input [15:0] din,
    input [7:0] addr,
    output [15:0] dout
    );
reg [15:0] mem [255:0];
reg [15:0] temp; 
 
always@(posedge clk)
begin
if(wr == 1'b1)
  mem[addr] <= din;
else
  temp <= mem[addr];
end  
 
assign  dout = (oe == 1'b1) ? temp : 16'h0000;
 
endmodule
