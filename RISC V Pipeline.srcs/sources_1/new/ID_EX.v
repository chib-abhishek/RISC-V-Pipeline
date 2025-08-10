`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:24:16 PM
// Design Name: 
// Module Name: ID_EX
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


module ID_EX(
input clk,//
input [31:0] immediate,
input [4:0] write_address,
input [2:0] funct3,
input [6:0] funct7,
input [31:0] data1,
input [31:0] data2,
input RegWrite,
input MemtoReg,
input MemRead,
input MemWrite,
input [1:0] ALUOp,
input ALUSrc,
output reg [31:0] immediate_IDEX,
output reg [4:0] write_address_IDEX,
output reg [2:0] funct3_IDEX,
output reg [6:0] funct7_IDEX,
output reg [31:0] data1_IDEX,
output reg [31:0] data2_IDEX,
output reg RegWrite_IDEX,
output reg MemtoReg_IDEX,
output reg MemRead_IDEX,
output reg MemWrite_IDEX,
output reg [1:0] ALUOp_IDEX,
output reg ALUSrc_IDEX
);
always @(posedge clk)
begin
immediate_IDEX <= immediate;
write_address_IDEX <= write_address;
funct3_IDEX <= funct3;
funct7_IDEX <= funct7;
RegWrite_IDEX <= RegWrite;
MemtoReg_IDEX <= MemtoReg;
MemRead_IDEX <= MemRead;
MemWrite_IDEX <= MemWrite;
ALUOp_IDEX <= ALUOp;
ALUSrc_IDEX <= ALUSrc;
data1_IDEX <= data1;
data2_IDEX <= data2;
end
endmodule
