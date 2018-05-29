`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/13 22:06:57
// Design Name: 
// Module Name: RegFile
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

//�Ĵ�����RegFile��ʵ��
module RegFile(
    //����������������
    input wire RegWre,
    input wire RegDst,
    input wire clk,
    input wire DBDataSrc,
    input [4:0] ReadReg1, // rs
    input [4:0] ReadReg2, // rt
    input [4:0] ReadReg3, // rd
    input [31:0] ALUResult, // The calculating result from ALU
    input [31:0] DataMemOut, // The output of Data Memory
    //���������������
    output [31:0] ReadData1,
    output [31:0] ReadData2
);
    //�洢�Ĵ��������ݵ�regFile
    reg[31:0] regFile[0:31];
    //����RegFile������Write����
    wire[4:0] WriteReg;
    wire[31:0] WriteData;
    //����RegDst�ź�ȷ��WriteRegΪrt����rd
    assign WriteReg = RegDst? ReadReg3 : ReadReg2;
    //����DBDataSrc�ź�ȷ��WriteData����ALU����DataMemory
    assign WriteData = DBDataSrc? DataMemOut : ALUResult;
    integer i;
    initial begin
        for(i=0;i<32;i=i+1)
            regFile[i] <= 0;
    end
    //���Ĵ���������
    assign ReadData1 = regFile[ReadReg1];
    assign ReadData2 = regFile[ReadReg2];
    //д�Ĵ���������
    always @(posedge clk)
    begin
        if(RegWre)
        begin
        if(WriteReg != 0)
           regFile[WriteReg] = WriteData;
        end
    end
endmodule
