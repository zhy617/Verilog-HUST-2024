`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 20:28:39
// Design Name: 
// Module Name: top
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


module top(clk, start, rst, done, sum_out);
    input clk, start, rst;
    output done;
    output [31:0] sum_out;
    
//    input clk, rst;
//    input LD_SUM, LD_NEXT, SUM_SEL, A_SEL, NEXT_SEL;
//    output NEXT_ZERO;
    wire LD_SUM, LD_NEXT, SUM_SEL, A_SEL, NEXT_SEL, NEXT_ZERO,clk_n;
//    divider d1(.clk(clk), .clk_N(clk_n));
    assign clk_n = clk;
    lab1 #(.WIDTH(32), .ADDR_WIDTH(8)) l1(.clk(clk_n), .rst(rst), .LD_SUM(LD_SUM), .LD_NEXT(LD_NEXT), .SUM_SEL(SUM_SEL), .A_SEL(A_SEL), .NEXT_SEL(NEXT_SEL), .NEXT_ZERO(NEXT_ZERO), .SUM_OUT(sum_out));
    
//    input clk, rst, start, next_zero;
//    output reg LD_SUM, LD_NEXT, SUM_SEL, NEXT_SEL, A_SEL, done;
    fsm f1 (.clk(clk_n), .rst(rst), .start(start), .next_zero(NEXT_ZERO), .LD_SUM(LD_SUM), .LD_NEXT(LD_NEXT), .SUM_SEL(SUM_SEL), .NEXT_SEL(NEXT_SEL), .A_SEL(A_SEL), .done(done));
endmodule
