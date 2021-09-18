// Code your testbench here
// or browse Examples
module tb_febbo();
  reg clk;
  wire[9:0] s;
  initial begin
    clk=0;
  end
  febbonaci uut(clk,s);
always #5  clk=~clk;
//  initial begin
//    $monitor("%0d",s);
//  end
//  initial begin
//    $dumpvars;
//    $dumpfile("dump.vcd");
//    #200;
//    $finish;
//  end
endmodule