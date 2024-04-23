`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/21 23:42:19
// Design Name: 
// Module Name: _7Seg_Driver_Display
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


module _7Seg_Driver_Display(SW, SEG, AN, LED);
    input [15:0] SW;       // 16位拨动开关
	output [7:0] SEG;      // 7段数码管驱动，低电平有效
	output [7:0] AN;       // 7段数码管片选信号，低电平有效
	output [15:0] LED;     // 16位LED显示
	_7Seg_Driver_Choice Ch1(.SW(SW), .SEG(SEG), .AN(AN), .LED(LED));
	assign AN = ~SW[15:8];
	assign LED = SW;
endmodule
