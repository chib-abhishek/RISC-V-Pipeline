`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 05:25:22 PM
// Design Name: 
// Module Name: m3
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


module m3(
input clk,
input MemtoReg_MEMWB,
input [31:0] MemData_MEMWB,
input [31:0] ALU_result_MEMWB,
output reg [31:0] write_data
);
always @(*)
begin
write_data = (MemtoReg_MEMWB)? MemData_MEMWB:ALU_result_MEMWB;
end
endmodule
