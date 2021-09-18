module AXI (
input s_axis_clk,
input s_axis_valid,
output s_axis_ready,
input [31:0] s_axis_data,
 
output reg [31:0] m_axis_data,
output reg m_axis_valid,
input m_axis_ready
);
 
always@(posedge s_axis_clk) begin
  if(s_axis_valid & s_axis_ready)
    m_axis_data <= $random;
end
 
always@(posedge s_axis_clk) begin
 m_axis_valid <= s_axis_valid & s_axis_ready;
end
 
assign s_axis_ready = m_axis_ready;
endmodule







//`timescale 1ns / 1ps
//module AXI(
//    input ACLK,tv,tr,
//    output [31:0] DATA
//    );
//    reg [31:0]dout;
////    reg tv,tr;
////      assign VALID=tv;
////    assign READY=tr;
//    reg [2:0] state;
//    reg [3:0] count;
//    parameter master_ready=1,slave_check=0,load_data=2;
    
//    always@(posedge ACLK) begin
//    case(state)
    
//    slave_check:begin
//    if(tr==1) state<=master_ready;
//    else if(tr==1 & tv==1) dout<=$random; 
//    else state<=slave_check; 
//    end
    
//    master_ready: begin
//    if(tv==1) begin 
//    dout<=$random;
//    state<=slave_check;
//    end
//    else if(tr==1 & tv==1) dout<=$random; 
 
//    else state<=slave_check;
//    end
    
//    default: state<=slave_check;
//    endcase
//    end
//    assign DATA=dout;
//endmodule
