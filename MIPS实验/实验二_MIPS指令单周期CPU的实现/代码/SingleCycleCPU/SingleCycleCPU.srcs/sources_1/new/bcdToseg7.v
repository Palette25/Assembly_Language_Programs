`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/22 15:00:35
// Design Name: 
// Module Name: bcdToseg7
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


module bcdToseg7(
    input t3, t2, t1, t0,
    output wire a, b, c, d, e, f, g
);
    assign a = ~t3&~t2&~t1&t0
   | ~t3&t2&~t1&~t0
   | t3&t2&~t1&t0
   | t3&~t2&t1&t0;
   assign b = t2&t1&~t0
   | t3&t1&t0
   | ~t3&t2&~t1&t0
   | t3&t2&~t1&~t0;
   assign c = ~t3&~t2&t1&~t0
   | t3&t2&t1
   | t3&t2&~t0;
   assign d = ~t3&~t2&~t1&t0
   | ~t3&t2&~t1&~t0
   | t3&~t2&t1&~t0
   | t2&t1&t0;
   assign e = ~t3&t0
   | ~t3&t2&~t1
   | ~t2&~t1&t0;
   assign f = ~t3&~t2&t0
   | ~t3&~t2&t1
   | ~t3&t1&t0
   | t3&t2&~t1&t0;
   assign g = ~t3&~t2&~t1
   | t3&t2&~t1&~t0
   | ~t3&t2&t1&t0;
    
endmodule
