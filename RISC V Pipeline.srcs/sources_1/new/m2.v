`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:35:47 PM
// Design Name: 
// Module Name: m2
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


module m2(
input clk,
input ALUSrc_IDEX,
input [31:0] data2_IDEX,
input [31:0] immediate_IDEX,
output reg [31:0] m2
);
always @(*)
begin
m2 = (ALUSrc_IDEX)? immediate_IDEX:data2_IDEX;
end
endmodule
