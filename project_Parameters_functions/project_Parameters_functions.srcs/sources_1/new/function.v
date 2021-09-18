`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2021 04:00:00 PM
// Design Name: 
// Module Name: function
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


module func(
    input [3:0] a,b,
    output [4:0] c
    );
    function [4:0] add(input [3:0]i1,input [3:0]i2);
    add =i1+i2;
    endfunction
    assign c=add(a,b);
endmodule
