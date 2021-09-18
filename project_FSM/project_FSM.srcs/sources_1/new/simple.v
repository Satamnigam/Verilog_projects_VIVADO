`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2021 12:55:03 PM
// Design Name: 
// Module Name: simple
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


module simple(
    input clk,din,rst,
    output reg dout
    );
    parameter state0=0;
    parameter state1=1;
    reg state;
    always@(posedge clk or posedge rst)
    begin
    if (rst) begin
    dout<=0;
    state<=state0;end
    else
    begin
    case(state)
    state0: 
    if(din) begin
    state<=state1;
    dout<=0; end
    else begin
    state<=state0;
    dout<=0;
    end
    
    state1: 
    if(din) begin
    state<=state0;
    dout<=1; end
    else begin
    state<=state1;
    dout<=1;
    end 
    endcase
    end
    end
endmodule
