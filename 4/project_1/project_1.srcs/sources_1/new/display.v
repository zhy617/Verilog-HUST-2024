`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/19 23:21:20
// Design Name: 
// Module Name: display
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


module display(SW, LED, AN, SEG, clk);
    input clk;              // 系统时钟
    output [7:0] SEG;  		// 分别对应CA、CB、CC、CD、CE、CF、CG和DP
    output [7:0] AN;        // 8位数码管片选信号
    input [15:0] SW;
    output [15:0] LED;
    wire clk_N, clk_D;
    wire [31:0] sum_out;
    wire [31:0] bcd_out;
    
    divider d1(.clk(clk), .clk_N(clk_N));
    divider #(10000) d2(.clk(clk), .clk_N(clk_D));
    top t1(.clk(clk_N), .start(SW[0]), .rst(SW[15]), .done(LED[0]), .sum_out(sum_out));
    
    decoderb2d de1(.bin_in(sum_out), .bcd_out(bcd_out));
    
    wire [2:0] seg_out;
    wire [3:0] now_bcd;
    counter c1(.clk(clk_D), .out(seg_out), .bcd_out(bcd_out), .now_out(now_bcd));
    
    pattern p1(.code(now_bcd), .patt(SEG));
    
    decoder3_8 dec1(.num(seg_out), .sel(AN));
    
    
    
endmodule
