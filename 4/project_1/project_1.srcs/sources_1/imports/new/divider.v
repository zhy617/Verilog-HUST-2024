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


module divider(clk, clk_N);
    input clk;                      // ϵͳʱ��
    output clk_N;                   // ��Ƶ���ʱ��
    parameter N = 100_000_000;      // 1Hz��ʱ��,N=fclk/fclk_N
    reg [31:0] counter;             /* ������������ͨ������ʵ�ַ�Ƶ��
                                   ����������0������(N/2-1)ʱ��
                                   ���ʱ�ӷ�ת������������ */
    reg tmp_clk = 0;
    assign clk_N = tmp_clk;
    always @(posedge clk)  begin    // ʱ��������
        counter = counter + 1;
        if ( counter == N/2 -1 )begin
            tmp_clk = tmp_clk ^ 1;
            counter = 0;
        end
    end                           
endmodule
