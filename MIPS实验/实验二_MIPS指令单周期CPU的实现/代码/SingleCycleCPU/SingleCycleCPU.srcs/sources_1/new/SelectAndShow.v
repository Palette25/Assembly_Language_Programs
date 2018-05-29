`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/22 14:49:18
// Design Name: 
// Module Name: SelectAndShow
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


module SelectAndShow(
    input [31:0] PCAddress, nextAddress,
    input [4:0] rs, rt,
    input [31:0] Data1, Data2,
    input [31:0] ALUResult, DBData,
    input DBDataSrc,
    input showControl0 ,showControl1, // 00 for PC Address, 01 for Data1, 10 for Data2
    
    output reg [15:0] showResult
);
    wire[1:0] control;
    assign control[0] = showControl0;
    assign control[1] = showControl1;
    always @ (control)
    begin
        case(control)
            2'b00:
            begin
                showResult[3:0] = nextAddress[3:0];
                showResult[7:4] = nextAddress[7:4];
                showResult[11:8] = PCAddress[3:0];
                showResult[15:12] = PCAddress[7:4];
            end
            2'b01:
            begin
                showResult[3:0] = Data1[3:0];
                showResult[7:4] = Data1[7:4];
                showResult[11:8] = rs[3:0];
                showResult[12] = rs[4];
                showResult[15:13] = 0;
            end
            2'b10:
            begin
                showResult[3:0] = Data2[3:0];
                showResult[7:4] = Data2[7:4];
                showResult[11:8] = rt[3:0];
                showResult[12] = rt[4];
                showResult[15:13] = 0;
            end
            2'b11:
            begin
                showResult[3:0] = DBData[3:0];
                showResult[7:4] = DBData[7:4];
                showResult[11:8] = ALUResult[3:0];
                showResult[15:12] = ALUResult[7:4];
            end
        endcase
    end
endmodule

module generSingal(
    input clk,
    input [15:0] showInput,
    
    output AN1, AN2, AN3, AN4,
    output t3, t2, t1, t0
);
    reg [3:0] counter;
    integer i;
    initial begin
        for(i=0;i<4;i=i+1) begin
            counter[i] = 0;
        end
    end
    
    assign AN1 = counter == showInput[3:0]? 0 : 1;
    assign AN2 = counter == showInput[7:4]? 0 : 1;
    assign AN3 = counter == showInput[11:8]? 0 : 1;
    assign AN4 = counter == showInput[15:12]? 0 : 1;
    assign t3 = counter[3];
    assign t2 = counter[2];
    assign t1 = counter[1];
    assign t0 = counter[0];
    
    always @(posedge clk)
    begin
       if(counter == 15)
            counter = 0;
       else counter = counter + 1;
    end
endmodule