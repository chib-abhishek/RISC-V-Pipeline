`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:26:16 PM
// Design Name: 
// Module Name: EX_MEM
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


module EX_MEM(
input clk,
input RegWrite_IDEX,
input MemtoReg_IDEX,
input MemWrite_IDEX,
input MemRead_IDEX,
input zero,
input [31:0] ALU_result,
input [31:0] data2_IDEX,
input [4:0] write_address_IDEX,//
output reg RegWrite_EXMEM,
output reg MemtoReg_EXMEM,
output reg MemWrite_EXMEM,
output reg MemRead_EXMEM,
output reg zero_EXMEM,
output reg [31:0] ALU_result_EXMEM,
output reg [31:0] data2_EXMEM,
output reg [4:0] write_address_EXMEM
);
always @(posedge clk)
begin
RegWrite_EXMEM <= RegWrite_IDEX;
MemtoReg_EXMEM <= MemtoReg_IDEX;
MemWrite_EXMEM <= MemWrite_IDEX;
MemRead_EXMEM <= MemRead_IDEX;
zero_EXMEM <= zero_EXMEM;
ALU_result_EXMEM <= ALU_result;
data2_EXMEM <= data2_IDEX;
write_address_EXMEM <= write_address_IDEX;
end
endmodule
