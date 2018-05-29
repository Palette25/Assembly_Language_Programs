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

//DataMemoey数据寄存器的Verilog实现
module DataMem(
    //各项输入的数据引脚
    input [31:0] DAddr,
    input [31:0] DataIn,
    input wire RD,
    input wire WR,
    input wire clk,
    //各项输出的数据引脚
    output reg [31:0] DataOut
);
    //实验要求：数据存储器存储单元宽度一律使用8位
    reg[7:0] unit[0:127]; //分割成4个一字节单元
    reg [31:0] address; //存储32位地址
    integer i;
    //读操作Read
    always @(RD)
    begin
        if(RD == 0)
        begin
            address = (DAddr << 2); //地址乘4转换为8位地址
            DataOut = ((unit[address] << 24) + (unit[address+1] << 16)
                            + (unit[address+2] << 8) + unit[address+3]);
        end
    end
    
    //写操作Write
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
