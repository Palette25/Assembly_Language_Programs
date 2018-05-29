`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/13 22:15:40
// Design Name: 
// Module Name: DataMem
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

//DataMemoey���ݼĴ�����Verilogʵ��
module DataMem(
    //�����������������
    input [31:0] DAddr,
    input [31:0] DataIn,
    input wire RD,
    input wire WR,
    input wire clk,
    //�����������������
    output reg [31:0] DataOut
);
    //ʵ��Ҫ�����ݴ洢���洢��Ԫ���һ��ʹ��8λ
    reg[7:0] unit[0:127]; //�ָ��4��һ�ֽڵ�Ԫ
    reg [31:0] address; //�洢32λ��ַ
    integer i;
    //������Read
    always @(RD)
    begin
        if(RD == 0)
        begin
            address = (DAddr << 2); //��ַ��4ת��Ϊ8λ��ַ
            DataOut = ((unit[address] << 24) + (unit[address+1] << 16)
                            + (unit[address+2] << 8) + unit[address+3]);
        end
    end
    
    //д����Write
    initial begin
        for(i=0;i<=127;i=i+1)
            unit[i] <= 0;
    end
    always @(WR or DAddr or DataIn)
    begin
        if(WR == 0)
        begin
            address = DAddr << 2;
            unit[address] = DataIn[31:24];
            unit[address+1] = DataIn[23:16];
            unit[address+2] = DataIn[15:8];
            unit[address+3] = DataIn[7:0];
        end
    end
endmodule
