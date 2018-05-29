`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/15 16:14:16
// Design Name: 
// Module Name: SingleCycleCPUTest
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

//������CPU���Գ���ģ��
module SingleCycleCPUTest();
     //������������
    reg clk, Reset;
    //�����������
    wire [5:0] Opcode;
    wire [31:0] Data1, Data2, Address, Result, DBData, nextAddress;
    wire [4:0] rs, rt;
    wire DBDataSrc;
    
    //����������CPU��������
    SingleCycleCPU uut(
        .clk(clk),
        .Reset(Reset),
        .Opcode(Opcode),
        .Data1(Data1),
        .Data2(Data2),
        .Address(Address),
        .Result(Result),
        .rs(rs),
        .rt(rt),
        .DBData(DBData),
        .DBDataSrc(DBDataSrc),
        .nextAddress(nextAddress)
    );
    initial begin
       clk = 0;
       Reset = 0;
       #50;
       begin
        clk = 1;
       end
       #50;
       begin
        clk = 0;
        Reset = 1;
       end
       forever #50
        begin
            clk = ~clk;
        end
    end
endmodule
