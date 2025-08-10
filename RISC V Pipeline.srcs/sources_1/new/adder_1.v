`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:20:15 PM
// Design Name: 
// Module Name: adder_1
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


module adder_1(
input clk,
input [4:0] address,
output reg [31:0] adder1
);
always @(*)
begin
adder1 <= address + 1;
end
endmodule
