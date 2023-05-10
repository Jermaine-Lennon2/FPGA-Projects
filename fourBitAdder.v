`timescale 1ns / 1ps



module fourBitAdder(input [8:0] sw, output [4:0] led 
);

wire C1, C2, C3;

fullAdder fa_1 (sw[0], sw[4], sw[8], led[0], C1);
fullAdder fa_2 (sw[1], sw[5], C1, led[1], C2);
fullAdder fa_3 (sw[2], sw[6], C2, led[2], C3);
fullAdder fa_4 (sw[3], sw[7], C3, led[3], led[4]);

endmodule
