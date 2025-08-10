`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:18:43 PM
// Design Name: 
// Module Name: instruction_divider
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


module instruction_divider(
input clk,
input [31:0] instruction_IFID,
output reg [6:0] opcode,
output reg [4:0] read_addr1,
output reg [4:0] read_addr2,
output reg [4:0] write_address,
output reg [6:0] funct7,
output reg [2:0] funct3
);
always @(*)
begin
opcode <= instruction_IFID[6:0];
read_addr1 <= instruction_IFID[19:15];
read_addr2 <= instruction_IFID[24:20];
write_address <= instruction_IFID[11:7];
funct7 <= instruction_IFID[31:25];
funct3 <= instruction_IFID[14:12];
end
endmodule
