`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2021 01:42:49 PM
// Design Name: 
// Module Name: sequence_111_detect
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
module sequence_111_detect(
    input clk,rst,din,
    output reg dout
    );
    reg [1:0]state;
    parameter [1:0]state0=2'b00;
    parameter [1:0]state1=2'b01;
    parameter [1:0]state2=2'b11;
    always@(posedge clk or posedge rst)
    begin
        if (rst)
        begin
          dout<=1'b0;
          state<=state0;
        end
        else
        begin
            case(state)
            state0:begin
            if (din==1'b1) begin
            state<=state1;
            dout<=0; end
            else begin
            state<=state0;
            dout<=0;
            end
            end
            
            state1:begin
            if (din==1'b1) begin
            state<=state2;
            dout<=0;
            end
            else begin
            state<=state0;
            dout<=0; end
            end
            
            state2:begin
            if (din==1'b1) begin
            state<=state2;  //Overlapping Type sequence detector
            //state<=state0;  NON-Overlapping Type sequence detector
            dout<=1'b1;
            end
            else
            begin
            state<=state0;
             dout<=0;
            end
            end
            endcase
        end
        end
endmodule

//parameter s0=0,s1=1,s2=2;
//reg[0:1]ps,ns;
//always @(posedge clk or posedge rst)
//	if(rst) ps<=s0;
//	else ps<=ns;
//always @(ps,din)
//	case(ps)
//		s0:begin
//			out<=din ? 0 : 0;
//			ns<=din ? s1 : s0;
//		end
//		s1:begin
//			out<=din ? 0 : 0;
//			ns<=din ? s2 : s0;
//		end
		
//		s2:begin
//			out<=din ? 1 : 0;
//			ns<=din ? s2 : s0;
//		end
//	endcase
//endmodule