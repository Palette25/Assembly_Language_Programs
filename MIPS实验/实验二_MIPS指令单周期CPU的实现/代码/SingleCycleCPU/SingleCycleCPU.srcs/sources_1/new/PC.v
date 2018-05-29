`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/13 22:11:54
// Design Name: 
// Module Name: PC
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

//指令计数器PC的Verilog实现
module PC(
    //各项输入数据引脚
    input wire clk,
    input wire Reset,
    input wire PCWre,
    input [1:0] PCSrc,
    input [31:0] extendNum,
    input [31:0] inAddress,
    input [25:0] jumpAddress,
    //各项输出数据引脚
    output reg [31:0] outAddress,
    output reg [31:0] nextAddress
);
    reg [31:0] temp;
    integer i;
    
    always @(posedge clk or negedge Reset)
    begin
        if(Reset == 0)
        begin
            outAddress = 0;
        end
        else if(PCWre)
        begin
            case(PCSrc)
            2'b00:
            begin
                outAddress = inAddress + 4;
            end
            2'b01:
            begin
                outAddress = inAddress + 4 + 4*extendNum;
            end
            2'b10:
            begin
                temp = inAddress + 4;
                for(i=0;i<=27;i=i+1)
                    temp[i] = 0;
                outAddress = temp | (jumpAddress << 2);
            end            
            endcase
        end
    end
    //Next address precition
    always @ (inAddress or extendNum or jumpAddress or PCWre or PCSrc)
    begin
        if(PCWre)
            begin
                case(PCSrc)
                2'b00:
                begin
                    nextAddress = inAddress + 4;
                end
                2'b01:
                begin
                    nextAddress = inAddress + 4 + 4*extendNum;
                end
                2'b10:
                begin
                    temp = inAddress + 4;
                    for(i=0;i<=27;i=i+1)
                        temp[i] = 0;
                    nextAddress = temp | (jumpAddress << 2);
                end            
                endcase
            end
            else nextAddress = inAddress;
    end
endmodule
