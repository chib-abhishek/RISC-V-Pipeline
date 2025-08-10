`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:35:05 PM
// Design Name: 
// Module Name: ID_IF
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


module IF_ID(
input clk,
input [31:0] instruction,
output reg [31:0] instruction_IFID
);
always @(posedge clk)
begin
instruction_IFID <= instruction;
end
endmodule
