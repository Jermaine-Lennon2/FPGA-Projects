`timescale 1ns / 1ps

module fullAdder(input x, y, Cin, output Cout, sum);

reg sum, Cout;

always @(x, y, Cin)
    {Cout, sum} = x + y + Cin;


endmodule
