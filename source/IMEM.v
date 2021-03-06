`timescale 1ns / 1ps
module IMEM(inst,PC);

parameter	ADDR_MEM_WIDTH_LENGTH = 32;
parameter	DATA_MEM_WIDTH_LENGTH = 32;

parameter       MAX_MEM_DEPTH_BIT = 18;
parameter	MEM_DEPTH = 1<<MAX_MEM_DEPTH_BIT;

input		[ADDR_MEM_WIDTH_LENGTH-1:0]PC;
output	reg	[DATA_MEM_WIDTH_LENGTH-1:0]inst;

/********* Instruction Memmory *************/
reg		[DATA_MEM_WIDTH_LENGTH-1:0]IMEM[0:MEM_DEPTH-1];//bo nho IMEM 32 bit rong 2^18

initial begin
$readmemh("full_test.mem",IMEM);
end

always@(PC)// khi co su thay doi cua dia chi PC 
begin
		inst <= IMEM[PC];// read 32bit IMEM instruction from the full_test.txt file at the location PC
end

endmodule