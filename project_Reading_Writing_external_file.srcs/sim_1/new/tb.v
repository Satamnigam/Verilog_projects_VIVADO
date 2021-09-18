`timescale 1ns / 1ps
module tb();
integer file,i;
 
reg [15:0] a = 16'd3;
reg [7:0] b = 8'd4;
reg [15:0] c = 16'd5;
 
initial begin
file = $fopen("C:/Users/satyam/Desktop/Udemy/project_Reading_Writing_external_file/project_Reading_Writing_external_file.srcs/sim_1/imports/Desktop/babbu.txt", "w");
$fdisplay(file, "addr\t din1\t din2");
for(i=0; i<50;i=i+1) begin
$fdisplay(file, "%0d\t\t %0d\t\t %0d",i*a,b*i,c*i);
end
$fclose(file);
end
 
endmodule