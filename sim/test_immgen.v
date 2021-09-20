`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/03/2021 09:00:26 PM
// Design Name: 
// Module Name: test_immgen
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


module test_immgen;
reg [31:0] imm_in;
reg [2:0] imm_sel;
wire [31:0] imm_out;
imm_gen dut(.imm_in(imm_in),.imm_sel(imm_sel),.imm_out(imm_out));
initial
 begin
  imm_in=32'h01101010;
  imm_sel=3'b000;
  #150;
  imm_sel=3'b001;
  #150;
  imm_sel=3'b010;
  #150;
  imm_sel=3'b011;
  #150;
  imm_sel=3'b100;
  #150;
  imm_sel=3'b101;
  
end
endmodule
