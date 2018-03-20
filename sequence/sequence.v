`timescale 1ns / 100ps

module sequence(a,b,c,clk);
  output a,b,c;
  reg a,b,c;
  input clk;
  wire clk;

  initial begin
    a=0;
    b=0;
    c=0;
  end

  always @(posedge clk)
    begin
      if (b&&c)
        a<=~a;
      if( (~a&&~b&&~c) || (a&&c) || (b&&c))
        b<=~b;
      if((a&&b&&c) || (~a&&b&&~c))
        c<=~c;
    end
endmodule
