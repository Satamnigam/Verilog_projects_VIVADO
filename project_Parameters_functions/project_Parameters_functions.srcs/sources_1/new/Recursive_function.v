`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2021 04:12:59 PM
// Design Name: 
// Module Name: Recursive_function
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


module Recursive_function #(parameter N=4);
//Factorial of Number
function automatic [63:0] fact(input[7:0] N);
if (N==1)
fact=1;
else
fact=N*fact(N-1);
endfunction

initial begin
$display("Factorial of the number is ==>>%0d",fact(N));
end
endmodule
