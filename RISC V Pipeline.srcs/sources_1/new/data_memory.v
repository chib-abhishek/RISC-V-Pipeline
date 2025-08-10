`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:28:45 PM
// Design Name: 
// Module Name: data_memory
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


module data_memory(
input clk,
input [31:0] ALU_result_EXMEM,
input [31:0] data2_EXMEM,
input MemRead_EXMEM,
input MemWrite_EXMEM,
output reg [31:0] MemData
);
reg [31:0] memory [0:63];
initial
begin
memory[0] = 32'h00000000;
memory[1] = 32'h00000009;
memory[2] = 32'h00000008;
memory[3] = 32'h00000007;
memory[4] = 32'h00000006;
memory[5] = 32'h00000005;
memory[6] = 32'h00000004;
memory[7] = 32'h00000003;
memory[8] = 32'h00000002;
memory[9] = 32'h00000001;
memory[10] = 32'h00000009;
memory[11] = 32'h00000008;
memory[12] = 32'h0000000d;
memory[13] = 32'h0000000e;
memory[14] = 32'h0000000f;
memory[15] = 32'h00000001;
memory[16] = 32'h00000002;
memory[17] = 32'h00000003;
memory[18] = 32'h00000004;
memory[19] = 32'h00000005;
memory[20] = 32'h00000006;
memory[21] = 32'h00000007;
memory[22] = 32'h00000008;
memory[23] = 32'h00000009;
memory[24] = 32'h0000000a;
memory[25] = 32'h0000000b;
memory[26] = 32'h0000000c;
memory[27] = 32'h0000000d;
memory[28] = 32'h0000000e;
memory[29] = 32'h0000000f;
memory[30] = 32'h00000000;
memory[31] = 32'h00000000;
memory[32] = 32'h00000000;
memory[33] = 32'h00000000;
memory[34] = 32'h00000000;
memory[35] = 32'h00000000;
memory[36] = 32'h00000000;
memory[37] = 32'h00000000;
memory[38] = 32'h00000000;
memory[39] = 32'h00000000;
memory[40] = 32'h00000000;
memory[41] = 32'h00000000;
memory[42] = 32'h00000000;
memory[43] = 32'h00000000;
memory[44] = 32'h00000000;
memory[45] = 32'h00000000;
memory[46] = 32'h00000000;
memory[47] = 32'h00000000;
memory[48] = 32'h00000000;
memory[49] = 32'h00000000;
memory[50] = 32'h00000000;
memory[51] = 32'h00000000;
memory[52] = 32'h00000000;
memory[53] = 32'h00000000;
memory[54] = 32'h00000000;
memory[55] = 32'h00000000;
memory[56] = 32'h00000000;
memory[57] = 32'h00000000;
memory[58] = 32'h00000000;
memory[59] = 32'h00000000;
memory[60] = 32'h00000000;
memory[61] = 32'h00000000;
memory[62] = 32'h00000000;
memory[63] = 32'h00000000;
end
always@(*)
begin
if(MemRead_EXMEM)
MemData <= memory[ALU_result_EXMEM];
end
always @(posedge clk)
begin
if (MemWrite_EXMEM)
memory[ALU_result_EXMEM] <= data2_EXMEM;
end
endmodule
