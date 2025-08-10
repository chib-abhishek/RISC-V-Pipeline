`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:27:00 PM
// Design Name: 
// Module Name: MEM_WB
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


module MEM_WB(
input clk,
input RegWrite_EXMEM,//
input MemtoReg_EXMEM,
input [31:0] MemData,
input [31:0] ALU_result_EXMEM,
input [4:0] write_address_EXMEM,
output reg RegWrite_MEMWB,//
output reg MemtoReg_MEMWB,
output reg [31:0] MemData_MEMWB,
output reg [31:0] ALU_result_MEMWB,
output reg [4:0] write_address_MEMWB
);
always @(posedge clk)
begin
RegWrite_MEMWB <= RegWrite_EXMEM;
MemtoReg_MEMWB <= MemtoReg_EXMEM;
MemData_MEMWB <= MemData;
ALU_result_MEMWB <= ALU_result_EXMEM;
write_address_MEMWB <= write_address_EXMEM;
end
endmodule
