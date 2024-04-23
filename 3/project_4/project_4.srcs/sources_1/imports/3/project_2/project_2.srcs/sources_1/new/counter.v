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


module counter(clk, out, flag);
    input clk, flag;                    // 计数时钟
    output [2:0] out;   
    reg [2:0] tmp;          
    initial begin
        tmp = 0;
    end
    assign out = tmp[2:0];
    always @(posedge clk)  begin  // 在时钟上升沿计数器加1
        if(flag == 0)begin
            tmp = tmp + 1;
        end
        else begin
            tmp = tmp - 1;
        end
    end                           
endmodule
