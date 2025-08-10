`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:22:50 PM
// Design Name: 
// Module Name: ALU_control
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


module ALU_control(
input clk,
input [1:0] ALUOp_IDEX,
input [2:0] funct3_IDEX,
input [6:0] funct7_IDEX,
output reg [3:0] ALU_control
);
always @(*)
begin
case(ALUOp_IDEX)
2'b10:begin//r
if( funct3_IDEX == 0 && funct7_IDEX == 0)//add
ALU_control <= 4'b0010;
else if (funct3_IDEX == 0 && funct7_IDEX == 32)//sub
ALU_control <= 4'b0110;
else if (funct3_IDEX == 7 && funct7_IDEX == 0)//and
ALU_control <= 4'b0000;
else if (funct3_IDEX == 6 && funct7_IDEX == 0)//or
ALU_control <= 4'b1111;
end
2'b00:begin//lw-sw
ALU_control <= 4'b0010;
end
2'b01:begin//beq
ALU_control <= 4'b0110;
end
endcase
end
endmodule
