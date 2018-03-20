`timescale 1ns/100ps
`include "decoder2_to_4.v"

module decoder2_to_4_tb;

reg a0,a1;
wire d0,d1,d2,d3;

decoder2_to_4 myDecoder(a0,a1,d0,d1,d2,d3);

initial begin
$dumpfile("decoder2_to_4.vcd");
$dumpvars(0, decoder2_to_4_tb);

// Initialize values
a0 = 0; a1 = 0;
$monitor("a0= %b, a1= %b, d0= %b, d1= %b, d2= %b, d3=%b\n",a0,a1,d0,d1,d2,d3);

#100;
a0 = 1;

#100;
a1 = 1;

#100;
a0 = 0;

#100;
$finish;
end
endmodule // decoder2_to_4_tb
