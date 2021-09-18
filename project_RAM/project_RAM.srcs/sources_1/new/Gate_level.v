`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2021 05:02:12 PM
// Design Name: 
// Module Name: Gate_level
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


module Gate_level(
    input a,b,c,
    output y,z
    );
    wire w1,w2,w3;
    assign w1= a ^ b;
    assign w2=a & b;
    assign y=w1 ^ c;
    assign w3=c &w1;
    assign z=w2 | w3; 
endmodule
module tb_Gate();
reg a,b,c;
wire y,z;
initial begin
a=0;b=0;c=0;
end
always #20 a=~a;
always #250 b=~b;
always #10 c=~c;
Gate_level dut  (a,b,c,y,z);

initial begin
#500;
$finish;
end
endmodule
