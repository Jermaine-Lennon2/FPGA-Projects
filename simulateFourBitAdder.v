`timescale 1ns / 1ps


module simulateFourBitAdder();
reg [8:0] sw;
wire [4:0] led;

fourBitAdder UUT (sw, led);
reg [7:0] i;

initial

for (i=0; i<= 255; i = i + 1) begin

sw[3:0] = i[7:4]; sw[7:4] = i[3:0]; sw[8] = 1'b0;
#20; end

initial #6000 $finish;


   
endmodule
