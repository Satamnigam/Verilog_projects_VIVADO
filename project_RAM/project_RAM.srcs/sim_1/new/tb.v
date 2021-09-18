module tb();
 
reg clk = 0, cs,we;
reg [7:0] datain, addr;
wire [7:0] dataout;
integer i =0;
 
top u1 (
.clk(clk),
.cs(cs),
.we(we),
.addr(addr),
.datain(datain),
.dataout(dataout)
    );
 
initial begin
clk = 1'b0;
cs = 1'b0;
addr = 0;
datain = 0;
#20 cs = 1'b1;
 
for(i =0; i< 5; i= i+1) begin
@(posedge clk);
write();
end
 
 
for(i =0; i< 5; i= i+1) begin
@(posedge clk)
read();
end
$stop;
end
 
always #5 clk = ~clk;
 
task write();
begin
addr = addr + 1;
we = 1'b1;
datain = $random;
end
endtask
 
task read();    
begin
addr = addr - 1;
we = 1'b0;
end
endtask
 
endmodule
 