`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:25:18 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
input clk,
input [3:0] ALU_control,
input [31:0] data1_IDEX,
input [31:0] m2,
output reg [31:0] ALU_result,
output reg zero
);
always @(*)
begin
case(ALU_control)
4'b0010:begin//add
ALU_result <= data1_IDEX + m2;
end
4'b0110:begin//sub beq
ALU_result <= data1_IDEX - m2;
end
4'b0000:begin//and
ALU_result <= data1_IDEX & m2;
end
4'b1111:begin//or
ALU_result <= data1_IDEX | m2;
end
endcase
if (ALU_result == 0)
zero = 1'b1;
else
zero = 1'b0;
end
endmodule
