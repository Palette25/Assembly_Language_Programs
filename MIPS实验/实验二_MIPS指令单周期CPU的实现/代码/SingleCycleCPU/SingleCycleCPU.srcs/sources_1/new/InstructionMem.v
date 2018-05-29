`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/13 22:14:38
// Design Name: 
// Module Name: InstructionMem
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

//InstructionMemory指令寄存器的Verilog实现
module InstructionMem(
    //各项输入数据引脚
    input clk,
    input [31:0] IAddr,
    input wire RW,
    //各项输出数据引脚
    output [5:0] OpCode,
    output [4:0] rs,
    output [4:0] rt,
    output [4:0] rd,
    output [4:0] sa,
    output [15:0] immediate,
    output [25:0] jumpAddress
);
    //实验要求：指令寄存器的存储单元一律使用8位
    reg [7:0] unit[0:127];
    reg [31:0] instruction;
    reg [31:0] address;
    
    initial begin
        $readmemb("E:/VivadoProjects/SingleCycleCPU/Instruction.txt", unit);
        instruction = 0;
    end
    
    always @(IAddr)
    begin
        address = (IAddr[6:2] << 2);
        instruction = ((unit[address] << 24) + (unit[address+1] << 16)
                            + (unit[address+2] << 8) + unit[address+3]);
    end
    assign OpCode = instruction[31:26];
    assign rs = instruction[25:21];
    assign rt = instruction[20:16];
    assign rd = instruction[15:11];
    assign sa = instruction[10:6];
    assign immediate = instruction[15:0];
    assign jumpAddress = instruction[25:0];
endmodule
