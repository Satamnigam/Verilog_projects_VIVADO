// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2021 01:56:34 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb();
reg clk,cs,ready;
wire mosi,clock;

initial begin
clk=0;
cs=1;
end
always #5 clk=~clk;
top dut (clk,cs,ready,mosi,clock);
initial begin
#10;
ready=1;
cs=0;
#32985;
  ready=0;
end
initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
    #70000;
    $finish;
  end

endmodule
