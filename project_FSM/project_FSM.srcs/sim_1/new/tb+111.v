`timescale 1ns / 1ps
module tb_111(  );
reg clk,rst,din;
wire dout;
sequence_111_detect dut(clk,rst,din,dout);
initial begin
clk=0;
rst=1;
din=0;
end
always #5 clk=~clk;
initial begin
#30;
rst=0;
din=1;
#10;
din=1;
#10;
din=0;
#10;
din=1;
#10;
din=1;
#10;
din=1;
#10;
din=1;
#10;
din=1;
#10;
din=0;
#300;
end 
endmodule
