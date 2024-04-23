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
    input [2:0] addr;           // ��ַ
    output [3:0] data;          // ��ַaddr���洢������ 

    reg [3: 0] mem [7: 0];      //  8��4λ�Ĵ洢��
    integer i;
    initial   begin             // ��ʼ���洢��
        for(i = 0;i <= 7; i = i + 1)begin
            mem[i] = 2 * i;
        end
    end     
    assign data = mem[addr];                     // ��ȡaddr��Ԫ��ֵ���                      
endmodule