`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:17:52 PM
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory (
input clk,
input [31:0] address,
output reg [31:0] instruction
);
reg [31:0] memory [0:31]; // 32 32-bit registers in instruction memory
initial begin
memory[0] = 32'h00008103;
memory[1] = 32'hffc0a183;
memory[2] = 32'h00000033;
memory[3] = 32'h00000033;
memory[4] = 32'h00000033;
memory[5] = 32'h003101b3;
memory[6] = 32'h402080b3;
memory[7] = 32'h00000033;
memory[8] = 32'h00000033;
memory[9] = 32'h00000033;
memory[10] = 32'h00408223;
memory[11] = 32'h00000000;
memory[12] = 32'h00000000;
memory[13] = 32'h00000000;
memory[14] = 32'h00000000;
memory[15] = 32'h00000000;
memory[16] = 32'h00000000;
memory[17] = 32'h00000000;
memory[18] = 32'h00000000;
memory[19] = 32'h00000000;
memory[20] = 32'h00000000;
memory[21] = 32'h00000000;
memory[22] = 32'h00000000;
memory[23] = 32'h00000000;
memory[24] = 32'h00000000;
memory[25] = 32'h00000000;
memory[26] = 32'h00000000;
memory[27] = 32'h00000000;
memory[28] = 32'h00000000;
memory[29] = 32'h00000000;
memory[30] = 32'h00000000;
memory[31] = 32'h00000000;
end
always @(*)
begin
instruction <= memory[address];
end
endmodule
