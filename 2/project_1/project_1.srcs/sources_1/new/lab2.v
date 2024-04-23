`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/20 20:48:55
// Design Name: 
// Module Name: _7Seg_Driver_Direct
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


module _7Seg_Driver_Direct(SW, CA, CB, CC, CD, CE, CF, CG, DP, AN, LED);
    input [15:0] SW;                          // 16λ��������
	output CA, CB, CC, CD, CE, CF, CG, DP;  // 7��������������͵�ƽ��Ч
	output [7:0] AN;                          // 7�������Ƭѡ�źţ��͵�ƽ��Ч
	output [15:0] LED;                        // 16λLED��ʾ���ߵ�ƽ��Ч
    assign {AN, CA, CB, CC, CD, CE, CF, CG, DP} = ~SW;
    assign LED = SW;
endmodule
