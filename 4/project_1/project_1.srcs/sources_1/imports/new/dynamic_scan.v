`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/03 19:48:44
// Design Name: 
// Module Name: dynamic_scan
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

module dynamic_scan(SW, clk,  SEG, AN);
    input clk;              // 系统时钟
    output [7:0] SEG;  		// 分别对应CA、CB、CC、CD、CE、CF、CG和DP
    output [7:0] AN;        // 8位数码管片选信号
    input [15:0] SW;
    wire clk_N;
    wire [3:0] code;
    wire [2:0] num;
    
//    divider d1(.SW(SW[8:1]), .clk(clk), .clk_N(clk_N));
//    counter c1(.clk(clk_N), .out(num), .flag(SW[0]));
//    decoder3_8 de1(.num(num), .sel(AN));
//    rom8x4 r1(.addr(num), .data(code));
//    pattern p1(.code(code), .patt(SEG));
    
endmodule

