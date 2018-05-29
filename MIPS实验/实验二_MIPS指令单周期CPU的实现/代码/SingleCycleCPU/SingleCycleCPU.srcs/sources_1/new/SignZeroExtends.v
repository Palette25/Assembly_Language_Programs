`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/13 22:17:51
// Design Name: 
// Module Name: SignZeroExtends
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

//位拓展模块SignZeroExtends的Verilog实现
module SignZeroExtends(
    //各项输入数据引脚
    input [15:0] immediate,
    input wire ExtSel,
    //各项输出数据引脚
    output [31:0] result
);
    assign result[15:0] = immediate;
    //符号位扩展
    assign result[31:16] = ExtSel ? (immediate[15] ? 16'hffff : 16'h0000) : 16'h0000;
endmodule
