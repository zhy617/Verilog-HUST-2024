`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/03 19:04:41
// Design Name: 
// Module Name: lab3_3
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


module lab3_3(clk, LED);
    input clk;
    wire clk_N;
    output [2:0] LED;
    divider d1(.clk(clk), .clk_N(clk_N));
    counter c1(.clk(clk_N), .out(LED[2:0]));
endmodule
