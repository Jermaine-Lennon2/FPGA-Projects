`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2023 05:12:04 PM
// Design Name: 
// Module Name: test_branch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_Sequence_Detector_Moore_FSM_Verilog;

 // Inputs
 reg sequence_in;
 reg clock;
 reg reset;

 // Outputs
 wire detector_out;

 // Instantiate the Sequence Detector using Moore FSM
 Sequence_Detector_MOORE_Verilog uut (
  .sequence_in(sequence_in), 
  .clock(clock), 
  .reset(reset), 
  .detector_out(detector_out)
 );
 initial begin
 clock = 0;
 forever #5 clock = ~clock;
 end 
 initial begin
  // Initialize Inputs
  sequence_in = 0;
  reset = 1;
  // Wait 100 ns for global reset to finish
  #30;
      reset = 0;
  #40;
  sequence_in = 1;
  #10;
  sequence_in = 0;
  #10;
  sequence_in = 1; 
  #20;
  sequence_in = 0; 
  #20;
  sequence_in = 1; 
  #20;
  sequence_in = 0;  
  // Add stimulus here

 end
      
endmodule