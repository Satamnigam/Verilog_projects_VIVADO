`timescale 1ns / 1ps
//Start the transaction by setting CS low, Transmit 32-bit of the data required to initialize all the register of the DAC 
//(magic no. 32'x80000001 ) through MOSI at the posedge of the SCLK with MSB bit transmitted first and LSB bit last of the 
//Magic no. This data (Magic no.) need to be transmitted only once on powering the DAC. After register is initialized by 
//sending the Magic number, User can take data to generate equivalent analog value. The register format is as follows

//Data format to generate analog value (32-bit ) : { 8'x00 (Unused 8-bits) , 4'x3 (Control bit) , 
//4'x1 (Select Specific DAC channel), 12'x FFF (Data to be send to DAC) , 4'x 0 (Unused bit) }

//Value to be sent after initialization for the generation of 1.25 V from DAC: 32'x 0031FFF00
//After the data is transmitted CS must be made high to complete transaction then successive transactions can be executed. 
//We will plan to just Send FFF continuously so that we will receive 1.25 V at DAC output for all the time 
//(Reference voltage for the DAC). Assume FPGA clock spped is 100 MHz and DAC can run at Max. 1 Mhz.
module top(
    input clk,cs,ready,
    output reg mosi,
    output clock
    );
    //clock generation 1Mhz
    reg sclk=1;
    assign clock=sclk;
    reg [5:0]count=0;
    always@(posedge clk) begin
    if (count<49)
    count<=count+1;
    else begin
    count<=0;
    sclk<=~sclk;
    end
    end
 reg [31:0] magic=32'h80000001 ; 
 reg [31:0] new_data=32'h0031FFF0;
  integer i=31,j=31;
 always@(posedge sclk) begin
       if(ready==1 & cs==0) begin
           mosi<=magic[i];
           i=i-1;
           $display("LOOP COUNT== %0d",i);
         end
       else if(ready==0) begin
       mosi<=new_data[j];
         j=j-1;
         $display("LOOP == %0d",j);
       end
   	else mosi<=0;
       end
 endmodule


// reg [5:0]scount=31;
// always@(posedge sclk)begin
//     if(cs==1)
//     mosi<=0;
//     else if(cs==0 & scount>=0)begin //start transaction magic number 
//     mosi<=magic[scount];
//     scount=scount-1;
//     end
//     else begin
//     scount<=0;
//     mosi<=0;end
//     end
