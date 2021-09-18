`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2021 03:39:45 PM
// Design Name: 
// Module Name: nbit_counter
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


module nbit_counter
#(parameter N=8)
(   input clk,
    input start,
    output [N-1:0] q
    );
    reg [N-1:0] temp;
    initial temp=0;
    always@(posedge clk) begin
    if (start==1'b1)
    temp<=temp+1; //non blocking "<=" for sequential circuit 
    else
    temp<=0;
    end
    assign q=temp;
endmodule
