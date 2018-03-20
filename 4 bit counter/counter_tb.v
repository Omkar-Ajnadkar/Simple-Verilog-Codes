`timescale 1ns/100ps
`include "counter.v"

module counter_tb();
reg clk, reset;
wire [3:0] counter;

initial begin
  $dumpfile("counter.vcd");
  $dumpvars(0, counter_tb);
  clk = 0;
  reset = 0;
end

counter dut(clk, reset, counter);

always begin
  #5 clk = ~clk;
end


initial begin
  #10 reset=1;
  #1;
  reset=0;
  #100 $finish;
end

endmodule