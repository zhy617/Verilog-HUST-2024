`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/03 19:52:56
// Design Name: 
// Module Name: pattern
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

module pattern(code, patt);
    input [3: 0] code;       // 16进制数字的4位二进制编码
    output [7:0] patt;       // 7段数码管驱动，低电平有效
    reg [7:0] tmp;
    always @(code) begin
        case(code[3:0])
            4'b0000: tmp = 8'b11000000;
            4'b0001: tmp = 8'b11111001;
            4'b0010: tmp = 8'b10100100;
            4'b0011: tmp = 8'b10110000;
            4'b0100: tmp = 8'b10011001;
            4'b0101: tmp = 8'b10010010;
            4'b0110: tmp = 8'b10000010;
            4'b0111: tmp = 8'b11111000;
            4'b1000: tmp = 8'b10000000;
            4'b1001: tmp = 8'b10011000;
            4'b1010: tmp = 8'b10001000;
            4'b1011: tmp = 8'b10000011;
            4'b1100: tmp = 8'b11000110;
            4'b1101: tmp = 8'b10100001;
            4'b1110: tmp = 8'b10000110;
            4'b1111: tmp = 8'b10001110;
        endcase
    end
    assign patt = tmp;
endmodule

