// Code your design here
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2021 02:33:14 PM
// Design Name: 
// Module Name: febbonaci
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


module febbonaci (input clk ,output [9:0]  s);
  reg [1023:0]a=0,b=1;
  reg [9:0]temps=1;
always@(posedge clk)
begin
temps=a+b;
a=b;
b=temps;
end
assign s=temps;
endmodule



/*import java.util.*;
  public class Main{
  public static void main(String[] args) {
      Scanner scn=new Scanner(System.in);
		int n=scn.nextInt();
		int a=0,b=1,s=0;
		int i=0;
		    System.out.println(a);
		    System.out.println(b);
		while(i<(n-2)){
		    s=a+b;
		    a=b;
		    b=s;
		    System.out.println(s);
		    i++;}
   }
  }*/