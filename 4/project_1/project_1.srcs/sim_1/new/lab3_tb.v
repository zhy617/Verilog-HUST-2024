`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 21:02:59
// Design Name: 
// Module Name: lab3_tb
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


module lab3_tb();
    reg clk, rst, start;
    wire done;
    wire[31:0] sum_out;
    top t1(.clk(clk), .rst(rst), .start(start), .done(done), .sum_out(sum_out));
    
    initial clk =0;
    always #5 clk = ~clk;
    
    initial begin
        start = 0;
        rst = 0;
        
        #5 rst = 1;
        #12 rst = 0;
        
        //start = 1
        #5 start = 1;
        
    end
endmodule
