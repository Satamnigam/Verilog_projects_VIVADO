`timescale 1ns / 1ps
 
module ram_tb();
 
reg clk;
reg wr;
reg oe;
reg [15:0] din;
reg [7:0] addr;
wire [15:0] dout;
 
 
initial begin
clk = 0;
oe = 0;
wr = 0;
end
 
memory dut (clk,oe,wr,din,addr,dout);
 
always #5 clk = ~clk;
 
integer i;
integer file;
integer rfile;
 
 
 
 
/////////////////Writing data to file
reg [15:0] data [99:0];
reg [15:0] tdin;
 
 
 
 
 
initial begin
 
file = $fopen("C:/Users/satyam/Desktop/Udemy/project_Reading_Writing_external_file/project_Reading_Writing_external_file.srcs/sim_1/imports/Desktop/babbu.txt", "w");
for(i =0; i < 50 ; i = i + 1) begin
wr = 1'b1;
oe = 1'b0;
addr = i;
din = $urandom();
$fdisplay(file, "%0x\t %0x\t",addr,din);
#10;
end
$fclose(file);
 
 
file = $fopen("C:/Users/satyam/Desktop/Udemy/project_Reading_Writing_external_file/project_Reading_Writing_external_file.srcs/sim_1/imports/Desktop/babbu.txt", "r");
$readmemh("C:/Users/satyam/Desktop/Udemy/project_Reading_Writing_external_file/project_Reading_Writing_external_file.srcs/sim_1/imports/Desktop/babbu.txt", data);
$fclose(file);
 
 
rfile = $fopen("C:/Users/satyam/Desktop/Udemy/project_Reading_Writing_external_file/project_Reading_Writing_external_file.srcs/sim_1/imports/Desktop/file.txt", "w");
$fdisplay(rfile, "ADDR:\t DIN:\t DOUT:\t");
for(i = 0; i < 50; i = i + 1) begin
wr = 1'b0;
oe = 1'b1;
addr = data[2*i];
tdin = data[2*i + 1];
$fdisplay(rfile, "%0x\t %0x\t %0x\t",addr,tdin,dout);
#10;
end
$fclose(rfile);
 
end
endmodule