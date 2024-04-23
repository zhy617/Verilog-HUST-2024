`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/19 22:15:08
// Design Name: 
// Module Name: lab1_tb
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
//module lab1(clk, rst, LD_SUM, LD_NEXT, NEXT_ZERO, SUM_SEL, A_SEL, NEXT_SEL, SUM_OUT);
//    input clk, rst;
//    input LD_SUM, LD_NEXT, SUM_SEL, A_SEL, NEXT_SEL;
//output NEXT_ZERO, SUM_OUT;

module lab1_tb();
    reg clk, rst, start;
    wire done;
    
    reg LD_SUM, LD_NEXT, SUM_SEL, A_SEL, NEXT_SEL;
    wire NEXT_ZERO;
    wire [32-1:0] SUM_OUT;
//    top t1(.clk(clk), .rst(rst), .start(start), .done(done), .sum_out(sum_out));
    lab1 l1(clk, rst, LD_SUM, LD_NEXT, NEXT_ZERO, SUM_SEL, A_SEL, NEXT_SEL, SUM_OUT);   
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        rst = 0;
        LD_SUM <= 0;
        LD_NEXT <= 0;
        SUM_SEL <= 0;
        NEXT_SEL <= 0;
        A_SEL <= 0;
        
        #5 rst = 1;
        #15 rst = 0;
        
        //start = 1
        #5 LD_SUM <= 0;
        LD_NEXT <= 0;
        SUM_SEL <= 0;
        NEXT_SEL <= 0;
        A_SEL <= 0;
        
        #10 LD_SUM <= 1;
        LD_NEXT <= 0;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 1;
        
        #10 LD_SUM <= 0;
        LD_NEXT <= 1;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 0;
        
        #10 LD_SUM <= 1;
        LD_NEXT <= 0;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 1;
        
        #10 LD_SUM <= 0;
        LD_NEXT <= 1;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 0;
        
        #10 LD_SUM <= 1;
        LD_NEXT <= 0;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 1;
        
        #10 LD_SUM <= 0;
        LD_NEXT <= 1;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 0;
        
        #10 LD_SUM <= 1;
        LD_NEXT <= 0;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 1;
        
        #10 LD_SUM <= 0;
        LD_NEXT <= 1;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 0;
        
        #10 LD_SUM <= 1;
        LD_NEXT <= 0;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 1;
        
        #10 LD_SUM <= 0;
        LD_NEXT <= 1;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 0;
        
        #10 LD_SUM <= 1;
        LD_NEXT <= 0;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 1;
        
        #10 LD_SUM <= 0;
        LD_NEXT <= 1;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 0;
        
        #10 LD_SUM <= 1;
        LD_NEXT <= 0;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 1;
        
        #10 LD_SUM <= 0;
        LD_NEXT <= 1;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 0;
        
        #10 LD_SUM <= 1;
        LD_NEXT <= 0;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 1;
        
        #10 LD_SUM <= 0;
        LD_NEXT <= 1;
        SUM_SEL <= 1;
        NEXT_SEL <= 1;
        A_SEL <= 0;
        
    end
endmodule

