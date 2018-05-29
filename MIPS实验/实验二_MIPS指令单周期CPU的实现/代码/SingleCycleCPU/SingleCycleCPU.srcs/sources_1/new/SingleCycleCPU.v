`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/15 15:45:44
// Design Name: 
// Module Name: SingleCycleCPU
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

//顶层模块SingleCycleCPU的实现
module SingleCycleCPU(
    //各项输入数据引脚
    input wire clk, Reset,
    //各项输出数据引脚
    output [5:0] Opcode,
    output [31:0] Data1, Data2, Address, Result, DBData, nextAddress,
    output [4:0] rs, rt,
    output wire DBDataSrc
);
    wire [4:0] rd;
    wire [4:0] sa;
    wire [2:0] ALUOp;
    wire [15:0] immediate;
    wire [25:0] jumpAddress;
    wire[31:0] signExt, DataMemOut;
    wire zero;
    wire [1:0] PCSrc;
    wire ALUSrcA, ALUSrcB, RegWre, RegDst, InsMemRW, PCWre, ExtSel;
    wire nRD, nWR;
    assign DBData = DBDataSrc ? DataMemOut : Result;
    //各项模块的构建
    ALU alu(Data1, Data2, ALUOp, signExt, sa, ALUSrcA, ALUSrcB, Result, zero);
    ControlUnit cu(Opcode, zero, ALUSrcA, ALUSrcB, RegWre, RegDst, 
                    InsMemRW, ExtSel, PCWre, ALUOp, PCSrc, nRD, nWR,DBDataSrc);
    PC pc(clk, Reset, PCWre, PCSrc, signExt, Address, jumpAddress, Address, nextAddress);
    DataMem datamem(Result, Data2, nRD, nWR, clk, DataMemOut);
    InstructionMem imem(clk, Address, InsMemRW, Opcode, rs, rt, rd, sa, immediate, jumpAddress);
    SignZeroExtends se(immediate, ExtSel, signExt);
    RegFile rf(RegWre, RegDst, clk, DBDataSrc, rs, rt, rd, Result, DataMemOut, Data1, Data2);
endmodule
