`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:36:53 PM
// Design Name: 
// Module Name: top_module
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


module top_module(
input wire clk,
input wire reset,
output wire [31:0] adder1,
output wire [31:0] address,
output wire [31:0] instruction,
output wire [31:0] instruction_IFID,
output wire [6:0] opcode,
output wire [4:0] read_addr1,
output wire [4:0] read_addr2,
output wire [4:0] write_address,
output wire [6:0] funct7,
output wire [2:0] funct3,
output wire RegWrite,
output wire MemtoReg,
output wire MemRead,
output wire MemWrite,
output wire [31:0] write_data,
output wire [31:0] data1,
output wire [31:0] data2,
output wire [31:0] immediate,
output wire [31:0] immediate_IDEX,
output wire [4:0] write_address_IDEX,
output wire [6:0] funct7_IDEX,
output wire [2:0] funct3_IDEX,
output wire [31:0] data1_IDEX,
output wire [31:0] data2_IDEX,
output wire RegWrite_IDEX,
output wire MemtoReg_IDEX,
output wire MemRead_IDEX,
output wire MemWrite_IDEX,
output wire [1:0] ALUOp_IDEX,
output wire [1:0] ALUOp,
output wire ALUSrc_IDEX,
output wire [3:0] ALU_control,
output wire [31:0] ALU_result,
output wire zero,
output wire RegWrite_EXMEM,
output wire MemtoReg_EXMEM,
output wire MemWrite_EXMEM,
output wire MemRead_EXMEM,
output wire zero_EXMEM,
output wire [31:0] ALU_result_EXMEM,
output wire [31:0] data2_EXMEM,
output wire [4:0] write_address_EXMEM,
output wire [31:0] MemData,
output wire RegWrite_MEMWB,
output wire MemtoReg_MEMWB,
output wire [31:0] MemData_MEMWB,
output wire [31:0] ALU_result_MEMWB,
output wire [4:0] write_address_MEMWB,
output wire [31:0] m2
);
program_counter Program_Counter(
.clk(clk),
.reset(reset),
.adder1(adder1),
.address(address)
);
instruction_memory Instruction_Memory(
.clk(clk),
.address(address),
.instruction(instruction)
);
instruction_divider Instruction_Divider(
.clk(clk),
.instruction_IFID(instruction_IFID),
.opcode(opcode),
.read_addr1(read_addr1),
.read_addr2(read_addr2),
.write_address(write_address),
.funct7(funct7),
.funct3(funct3)
);
registers Registers(
.clk(clk),
.read_addr1(read_addr1),
.read_addr2(read_addr2),
.write_address_MEMWB(write_address_MEMWB),
.write_data(write_data),
.data1(data1),
.data2(data2),
.RegWrite_MEMWB(RegWrite_MEMWB)
);
adder_1 Adder_1(
.clk(clk),
.address(address),
.adder1(adder1)
);
control Control(
.clk(clk),
.instruction_IFID(instruction_IFID),
.RegWrite(RegWrite),
.MemtoReg(MemtoReg),
.MemRead(MemRead),
.MemWrite(MemWrite),
.ALUOp(ALUOp),
.ALUSrc(ALUSrc)
);
imm_gen Imm_Gen(
.clk(clk),
.instruction_IFID(instruction_IFID),
.opcode(opcode),
.immediate(immediate)
);
ALU_control ALU_Control(
.clk(clk),
.ALUOp_IDEX(ALUOp_IDEX),
.funct3_IDEX(funct3_IDEX),
.funct7_IDEX(funct7_IDEX),
.ALU_control(ALU_control)
);
ID_EX ID_EX(
.clk(clk),
.immediate(immediate),
.write_address(write_address),
.funct3(funct3),
.funct7(funct7),
.data1(data1),
.data2(data2),
.RegWrite(RegWrite),
.MemtoReg(MemtoReg),
.MemRead(MemRead),
.MemWrite(MemWrite),
.ALUOp(ALUOp),
.ALUSrc(ALUSrc),
.immediate_IDEX(immediate_IDEX),
.write_address_IDEX(write_address_IDEX),
.funct3_IDEX(funct3_IDEX),
.funct7_IDEX(funct7_IDEX),
.data1_IDEX(data1_IDEX),
.data2_IDEX(data2_IDEX),
.MemtoReg_IDEX(MemtoReg_IDEX),
.MemRead_IDEX(MemRead_IDEX),
.MemWrite_IDEX(MemWrite_IDEX),
.ALUOp_IDEX(ALUOp_IDEX),
.ALUSrc_IDEX(ALUSrc_IDEX),
.RegWrite_IDEX(RegWrite_IDEX)
);
ALU ALU(
.clk(clk),
.ALU_control(ALU_control),
.data1_IDEX(data1_IDEX),
.m2(m2),
.ALU_result(ALU_result),
.zero(zero)
);
EX_MEM EX_MEM (
.clk(clk),
.RegWrite_IDEX(RegWrite_IDEX),
.MemtoReg_IDEX(MemtoReg_IDEX),
.MemWrite_IDEX(MemWrite_IDEX),
.MemRead_IDEX(MemRead_IDEX),
.zero(zero),
.ALU_result(ALU_result),
.data2_IDEX(data2_IDEX),
.write_address_IDEX(write_address_IDEX),
.RegWrite_EXMEM(RegWrite_EXMEM),
.MemtoReg_EXMEM(MemtoReg_EXMEM),
.MemWrite_EXMEM(MemWrite_EXMEM),
.MemRead_EXMEM(MemRead_EXMEM),
.zero_EXMEM(zero_EXMEM),
.ALU_result_EXMEM(ALU_result_EXMEM),
.data2_EXMEM(data2_EXMEM),
.write_address_EXMEM(write_address_EXMEM)
);
MEM_WB MEM_WB (
.clk(clk),
.RegWrite_EXMEM(RegWrite_EXMEM),
.MemtoReg_EXMEM(MemtoReg_EXMEM),
.MemData(MemData),
.ALU_result_EXMEM(ALU_result_EXMEM),
.write_address_EXMEM(write_address_EXMEM),
.RegWrite_MEMWB(RegWrite_MEMWB),
.MemtoReg_MEMWB(MemtoReg_MEMWB),
.MemData_MEMWB(MemData_MEMWB),
.ALU_result_MEMWB(ALU_result_MEMWB),
.write_address_MEMWB(write_address_MEMWB)
);
data_memory data_memory (
.clk(clk),
.ALU_result_EXMEM(ALU_result_EXMEM),
.data2_EXMEM(data2_EXMEM),
.MemRead_EXMEM(MemRead_EXMEM),
.MemWrite_EXMEM(MemWrite_EXMEM),
.MemData(MemData)
);
m3 m3 (
.clk(clk),
.MemtoReg_MEMWB(MemtoReg_MEMWB),
.MemData_MEMWB(MemData_MEMWB),
.ALU_result_MEMWB(ALU_result_MEMWB),
.write_data(write_data)
);
IF_ID ID_IF (
.clk(clk),
.instruction(instruction),
.instruction_IFID(instruction_IFID)
);
m2 M2 (
.clk(clk),
.ALUSrc_IDEX(ALUSrc_IDEX),
.data2_IDEX(data2_IDEX),
.immediate_IDEX(immediate_IDEX),
.m2(m2)
);
endmodule
