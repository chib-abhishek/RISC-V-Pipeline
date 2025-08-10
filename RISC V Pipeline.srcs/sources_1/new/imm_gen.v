`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:22:04 PM
// Design Name: 
// Module Name: imm_gen
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


module imm_gen(
input clk,
input [31:0] instruction_IFID,
input [6:0] opcode,
output reg [31:0] immediate
);
always @(*)
begin
case (opcode)
7'b0110011:
immediate = 32'b0;
7'b0000011: // lw
immediate = {{20{instruction_IFID[31]}}, instruction_IFID[31:20]};
7'b0100011: // sw
immediate = {{20{instruction_IFID[31]}}, instruction_IFID[31:25], instruction_IFID[11:7]};
7'b1100011: // beq
immediate = {{20{instruction_IFID[31]}}, instruction_IFID[31], instruction_IFID[7],
instruction_IFID[30:25], instruction_IFID[11:8]};
endcase
end
endmodule
