module tb_Gate();
reg a,b,c;
wire y,z;
initial begin
a=0;b=0;c=0;
end
always #20 a=~a;
always #250 b=~b;
always #10 c=~c;
Gate_level dut  (a,b,c,y,z);

initial begin
#500;
$finish;
end
endmodule