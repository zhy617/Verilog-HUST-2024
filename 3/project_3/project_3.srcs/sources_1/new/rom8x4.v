`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/03 19:31:20
// Design Name: 
// Module Name: rom8x4
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


module rom8x4(addr, data);
    input [2:0] addr;           // 地址
    output [3:0] data;          // 地址addr处存储的数据 

    reg [3: 0] mem [7: 0];      //  8个4位的存储器
    integer i;
    initial   begin             // 初始化存储器
        for(i = 0;i <= 7; i = i + 1)begin
            mem[i] = 2 * i;
        end
    end     
    assign data = mem[addr];                     // 读取addr单元的值输出                      
endmodule
