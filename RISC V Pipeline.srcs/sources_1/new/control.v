`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:21:08 PM
// Design Name: 
// Module Name: control
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


module control(
input clk,
input [31:0] instruction_IFID,
output reg RegWrite,
output reg MemtoReg,
output reg MemRead,
output reg MemWrite,
output reg [1:0] ALUOp,
output reg ALUSrc
);
always @(*)
begin
case(instruction_IFID[6:0])
7'b0110011: // R type
begin
RegWrite = 1'b1;
MemtoReg = 1'b0;
MemRead = 1'b0;
MemWrite = 1'b0;
ALUOp = 2'b10;
ALUSrc = 1'b0;
end
7'b0000011: // I type lw
begin
RegWrite = 1'b1;
MemtoReg = 1'b1;
MemRead = 1'b1;
MemWrite = 1'b0;
ALUOp = 2'b00;
ALUSrc = 1'b1;
end
7'b0100011: // S type sw
begin
RegWrite = 1'b0;
MemtoReg = 1'b0;
MemRead = 1'b0;
MemWrite = 1'b1;
ALUOp = 2'b00;
ALUSrc = 1'b1;
end
7'b1100011: // B type beq
begin
RegWrite = 1'b0;
MemtoReg = 1'b0;
MemRead = 1'b0;
MemWrite = 1'b0;
ALUOp = 2'b01;
ALUSrc = 1'b0;
end
endcase
end
endmodule
