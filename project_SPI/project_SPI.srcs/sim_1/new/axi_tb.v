`timescale 1ns / 1ps
module axi_tb();
wire [31:0] m_axis_data;
wire m_axis_valid;
reg m_axis_ready;
reg [31:0] s_axis_datal;
reg  s_axis_clk,s_axis_valid;
wire [31:0] DATA;
wire s_axis_ready;
initial begin
s_axis_clk=1;
s_axis_valid=0;
m_axis_ready=0;
end
always #5 s_axis_clk=~s_axis_clk;



AXI dut (s_axis_clk,s_axis_valid,s_axis_ready,s_axis_data,m_axis_data,m_axis_valid,m_axis_ready);


initial begin
#20;
m_axis_ready=1;
#10;
m_axis_ready=0;
s_axis_valid=1;
#20;
m_axis_ready=1;
#30;
s_axis_valid=0;
#10;
s_axis_valid=1;
m_axis_ready=0;
#10;
m_axis_ready=1;
end
initial begin
    #200;
    $finish;
  end
endmodule
