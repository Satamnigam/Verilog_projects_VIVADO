`timescale 1ns / 1ps
 
 
module tb_read();
 
integer file;
reg [15:0] temp [11:0];///declare memory
reg status;
 
initial begin
file = $fopen("C:/Users/satyam/Desktop/Udemy/project_Reading_Writing_external_file/project_Reading_Writing_external_file.srcs/sim_1/imports/Desktop/babbu.txt", "r");
$readmemh("C:/Users/satyam/Desktop/Udemy/project_Reading_Writing_external_file/project_Reading_Writing_external_file.srcs/sim_1/imports/Desktop/babbu.txt", temp);
$fclose(file);
end
endmodule