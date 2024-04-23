`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/03 19:52:37
// Design Name: 
// Module Name: decoder3_8
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


module decoder3_8(num, sel);
    input [2: 0] num;       // 数码管编号：0~7
    output [7:0] sel;       // 7段数码管片选信号，低电平有效
    reg [7:0] tmp;
    integer i;
    always @(num)begin
        for(i = 0;i <= 7; i = i + 1)begin
            if(i == num)begin
                tmp[i] = 0;
            end    
            else begin
                tmp[i] = 1;
            end
        end
    end
    assign sel = tmp;
endmodule

