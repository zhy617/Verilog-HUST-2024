`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/03 19:06:12
// Design Name: 
// Module Name: counter
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


module counter(clk, out);
    input clk;                    // 计数时钟
    output [2:0] out;             // 计数值
    reg [2:0] tmp = 0;
    assign out = tmp[2:0];
    always @(posedge clk)  begin  // 在时钟上升沿计数器加1
        tmp = tmp + 1;
    end                           
endmodule
