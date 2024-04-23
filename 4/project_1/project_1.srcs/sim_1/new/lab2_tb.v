`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 21:24:39
// Design Name: 
// Module Name: lab2_tb
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
////////////////////////////////////////////////////////////////////////////////////
//module fsm(clk, rst, start, next_zero, LD_SUM, LD_NEXT, SUM_SEL, NEXT_SEL, A_SEL, done, state);
//    input clk, rst, start, next_zero;
//    output reg LD_SUM, LD_NEXT, SUM_SEL, NEXT_SEL, A_SEL, done;

module lab2_tb(

    );
    reg clk, rst, start, next_zero;
    wire LD_SUM, LD_NEXT, SUM_SEL, NEXT_SEL, A_SEL, done;
    wire [1:0] state;
    
    fsm f1(clk, rst, start, next_zero, LD_SUM, LD_NEXT, SUM_SEL, NEXT_SEL, A_SEL, done, state);
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        start = 0;
        rst = 0;
        next_zero = 0;
        
        #5 rst = 1;
        #12 rst = 0;
        
        #5 start = 1;
        #20 start = 0;
        
        #100 next_zero = 1;
    end
    
endmodule
