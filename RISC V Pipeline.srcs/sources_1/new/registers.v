`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:19:31 PM
// Design Name: 
// Module Name: registers
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


module registers (
input clk,
input [4:0] read_addr1, read_addr2,
input [4:0] write_address_MEMWB,
input RegWrite_MEMWB,
input [31:0] write_data,
output reg [31:0] data1,data2
);
reg [31:0] registers [0:31];
initial
begin
registers [0] = 32'h00000000;
registers [1] = 32'h00000004;
registers [2] = 32'h00000003;
registers [3] = 32'h00000002;
registers [4] = 32'h00000001;
registers [5] = 32'h00000005;
registers [6] = 32'h00000004;
registers [7] = 32'h00000003;
registers [8] = 32'h00000009;
registers [9] = 32'h0000000a;
registers [10] = 32'h0000000b;
registers [11] = 32'h0000000c;
registers [12] = 32'h0000000d;
registers [13] = 32'h0000000e;
registers [14] = 32'h0000000f;
registers [15] = 32'h00000001;
registers [16] = 32'h00000002;
registers [17] = 32'h00000003;
registers [18] = 32'h00000004;
registers [19] = 32'h00000005;
registers [20] = 32'h00000006;
registers [21] = 32'h00000006;
registers [22] = 32'h00000008;
registers [23] = 32'h00000009;
registers [24] = 32'h0000000a;
registers [25] = 32'h0000000b;
registers [26] = 32'h0000000c;
registers [27] = 32'h0000000d;
registers [28] = 32'h0000000e;
registers [29] = 32'h0000000f;
registers [30] = 32'h00000001;
registers [31] = 32'h00000002;
end
always @(*) begin
data1 = registers[read_addr1];
data2 = registers[read_addr2];
end
always @(posedge clk)
begin
if (RegWrite_MEMWB)
registers[write_address_MEMWB] = write_data;
end
endmodule
