`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2021 03:17:29 PM
// Design Name: 
// Module Name: test_IMEM
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


module test_IMEM();
      reg [31:0] PC;
      wire [31:0] inst;
      integer i;
    
      IMEM DUT(.PC(PC), .inst(inst));
      
      initial
         PC = 32'h00000000;
      
      initial
      begin
         for( i = 0; i < 5; i = i + 1)
         begin
            PC = i;
            #20;
         end
      end
      
      
      
      
endmodule
