`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 05:48:52 PM
// Design Name: 
// Module Name: testbench
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


module top_module_tb;
reg clk;
reg reset;
wire [31:0] adder1;
wire [31:0] address;
wire [31:0] instruction;
wire [31:0] instruction_IFID;
wire [6:0] opcode;
wire [4:0] read_addr1;
wire [4:0] read_addr2;
wire [4:0] write_address;
wire [6:0] funct7;
wire [2:0] funct3;
wire RegWrite;
wire MemtoReg;
wire MemRead;
wire MemWrite;
wire [31:0] write_data;
wire [31:0] data1;
wire [31:0] data2;
wire [31:0] immediate;
wire [31:0] immediate_IDEX;
wire [4:0] write_address_IDEX;
wire [6:0] funct7_IDEX;
wire [2:0] funct3_IDEX;
wire [31:0] data1_IDEX;
wire [31:0] data2_IDEX;
wire RegWrite_IDEX;
wire MemtoReg_IDEX;
wire MemRead_IDEX;
wire MemWrite_IDEX;
wire [1:0] ALUOp_IDEX;
wire [1:0] ALUOp;
wire ALUSrc_IDEX;
wire [31:0] m2;
wire [3:0] ALU_control;
wire [31:0] ALU_result;
wire zero;
wire RegWrite_EXMEM;
wire MemtoReg_EXMEM;
wire MemWrite_EXMEM;
wire MemRead_EXMEM;
wire zero_EXMEM;
wire [31:0] ALU_result_EXMEM;
wire [31:0] data2_EXMEM;
wire [4:0] write_address_EXMEM;
wire [31:0] MemData;
wire RegWrite_MEMWB;
wire MemtoReg_MEMWB;
wire [31:0] MemData_MEMWB;
wire [31:0] ALU_result_MEMWB;
wire [4:0] write_address_MEMWB;
top_module uut (
.clk(clk),
.reset(reset),
.adder1(adder1),
.address(address),
.instruction(instruction),
.instruction_IFID(instruction_IFID),
.opcode(opcode),
.read_addr1(read_addr1),
.read_addr2(read_addr2),
.write_address(write_address),
.funct7(funct7),
.funct3(funct3),
.RegWrite(RegWrite),
.MemtoReg(MemtoReg),
.MemRead(MemRead),
.MemWrite(MemWrite),
.write_data(write_data),
.data1(data1),
.data2(data2),
.immediate(immediate),
.immediate_IDEX(immediate_IDEX),
.write_address_IDEX(write_address_IDEX),
.funct7_IDEX(funct7_IDEX),
.funct3_IDEX(funct3_IDEX),
.data1_IDEX(data1_IDEX),
.data2_IDEX(data2_IDEX),
.RegWrite_IDEX(RegWrite_IDEX),
.MemtoReg_IDEX(MemtoReg_IDEX),
.MemRead_IDEX(MemRead_IDEX),
.MemWrite_IDEX(MemWrite_IDEX),
.ALUOp_IDEX(ALUOp_IDEX),
.ALUOp(ALUOp),
.ALUSrc_IDEX(ALUSrc_IDEX),
.m2(m2),
.ALU_control(ALU_control),
.ALU_result(ALU_result),
.zero(zero),
.RegWrite_EXMEM(RegWrite_EXMEM),
.MemtoReg_EXMEM(MemtoReg_EXMEM),
.MemWrite_EXMEM(MemWrite_EXMEM),
.MemRead_EXMEM(MemRead_EXMEM),
.zero_EXMEM(zero_EXMEM),
.ALU_result_EXMEM(ALU_result_EXMEM),
.write_address_EXMEM(write_address_EXMEM),
.MemData(MemData),
.RegWrite_MEMWB(RegWrite_MEMWB),
.MemtoReg_MEMWB(MemtoReg_MEMWB),
.MemData_MEMWB(MemData_MEMWB),
.ALU_result_MEMWB(ALU_result_MEMWB),
.write_address_MEMWB(write_address_MEMWB),
.data2_EXMEM(data2_EXMEM)
);
always #5 clk = ~clk;
initial begin
clk = 1;
reset = 1;
#1 reset = 0;
end
initial begin
#5;
#200 $finish;
end
endmodule
