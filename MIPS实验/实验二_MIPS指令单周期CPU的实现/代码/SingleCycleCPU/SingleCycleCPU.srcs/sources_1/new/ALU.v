`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/13 22:06:34
// Design Name: 
// Module Name: ALU
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

//ALU的Verilog实现
module ALU(
    //各项输入数据引脚
    input [31:0] InputData1,
    input [31:0] InputData2,
    input [2:0] ALUOp,
    input [31:0] signExt,
    input [4:0] sa,
    input wire ALUSrcA,
    input wire ALUSrcB,
    //各项输出数据引脚
    output reg [31:0] result,
    output reg zero
);
    //确定输入ALU的两个数据
    wire [31:0] A = ALUSrcA ? sa : InputData1;
    wire [31:0] B = ALUSrcB ? signExt : InputData2;
    
    always @(ALUOp or A or B)
    begin
       case(ALUOp)
        3'b000:
        begin
            result = A + B;
        end
        3'b001:
        begin
            result = A - B;
        end
        3'b010:
        begin
            result = B << A;
        end
        3'b011:
        begin
            result = A | B;
        end
        3'b100:
        begin
            result = A & B;
        end
        3'b101:
        begin
            result = (A<B)? 1 : 0;
        end
        3'b110:
        begin
            result = (((A<B)&&A[31]==B[31])||(A[31]==1&&B[31]==0))? 1 : 0;
        end
        3'b111:
        begin
            result = A ^ B;
        end
        endcase
        zero = (result==0)? 1 : 0;
    end
endmodule
