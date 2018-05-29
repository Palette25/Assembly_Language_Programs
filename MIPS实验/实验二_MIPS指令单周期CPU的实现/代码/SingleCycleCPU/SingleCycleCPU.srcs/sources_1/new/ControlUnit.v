`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/13 22:13:15
// Design Name: 
// Module Name: ControlUnit
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

//ControlUnit控制中心的Verilog实现
module ControlUnit(
    //各项输入的数据引脚
    input [5:0] Opcode,
    input wire zero,
    
    //各项输出的数据引脚
    output wire ALUSrcA,
    output wire ALUSrcB,
    output wire RegWre,
    output wire RegDst,
    output wire InsMemRW,
    output wire ExtSel,
    output wire PCWre,
    output [2:0] ALUOp,
    output [1:0] PCSrc,
    output wire nRD,
    output wire nWR,
    output wire DBDataSrc
);
    assign ALUSrcA = (Opcode == 6'b011000)? 1 : 0;
    assign ALUSrcB = (Opcode == 6'b000001 || Opcode == 6'b010000
                        || Opcode == 6'b011011 || Opcode == 6'b100110
                            || Opcode == 6'b100111)? 1 : 0;
    assign RegWre = (Opcode == 6'b100110 || Opcode == 6'b110000
                        || Opcode == 6'b110001 || Opcode == 6'b111000
                            ||Opcode == 6'b111111)? 0 : 1;
    assign RegDst = (Opcode == 6'b000000 || Opcode == 6'b000010
                        || Opcode == 6'b010001 || Opcode == 6'b010010
                            || Opcode == 6'b011000)? 1 : 0;
    assign InsMemRW = 0;
    assign ExtSel = (Opcode == 6'b010000)? 0 : 1;
    assign PCWre = (Opcode == 6'b111111)? 0 : 1;
    assign ALUOp[0] = (Opcode == 6'b000010 || Opcode == 6'b010000
                        || Opcode == 6'b010010 || Opcode == 6'b110000
                            || Opcode == 6'b110001)? 1 : 0;
    assign ALUOp[1] = (Opcode == 6'b010000 || Opcode == 6'b010010
                        || Opcode == 6'b011000 || Opcode == 6'b011011)? 1 : 0;
    assign ALUOp[2] = (Opcode == 6'b010001 || Opcode == 6'b011011)? 1 : 0;
    assign PCSrc[0] = ((Opcode == 6'b110000 && zero == 1) 
                        || (Opcode == 6'b110001 && zero == 0))? 1 : 0;
    assign PCSrc[1] = (Opcode == 6'b111000)? 1 : 0;
    assign nRD = (Opcode == 6'b100111)? 0 : 1;
    assign nWR = (Opcode == 6'b100110)? 0 : 1;
    assign DBDataSrc = (Opcode == 6'b100111)? 1 : 0;
endmodule
