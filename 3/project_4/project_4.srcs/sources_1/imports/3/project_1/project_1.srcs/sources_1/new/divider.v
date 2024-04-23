`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/03 18:39:41
// Design Name: 
// Module Name: divider
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


module divider(SW, clk, clk_N);
    input clk;                      // 系统时钟
    output clk_N;                   // 分频后的时钟
    input [7:0] SW;      // 1Hz的时钟,N=fclk/fclk_N
    reg [31:0] counter;             /* 计数器变量，通过计数实现分频。
                                   当计数器从0计数到(N/2-1)时，
                                   输出时钟翻转，计数器清零 */
                                   
    assign clk_N = tmp_clk;
//    integer N = 100000000;
    integer init_N = 1000000, N = 100000000, i;
    
    reg tmp_clk = 0;
    always @(posedge clk)  begin    // 时钟上升沿
        N = init_N * (SW + 1);
        counter <= counter + 1;
        if ( counter >= N/2 -1 )begin
            tmp_clk <= tmp_clk ^ 1;
            counter <= 0;
        end
    end                       
endmodule
