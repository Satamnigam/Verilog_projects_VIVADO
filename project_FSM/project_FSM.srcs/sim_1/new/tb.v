`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2021 01:15:10 PM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb(  );
reg clk,rst,din;
wire dout;
initial begin
clk=0;
rst=1;
end
simple dut(clk,din,rst,dout);
always #10 clk=~clk;
initial begin
#20;
rst=0;
din=1;
#200;
end 
endmodule
