`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/27 19:39:09
// Design Name: 
// Module Name: _7Seg_decode_an
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


module _7Seg_decode_an(
SW, AN
    );
    input[15:0] SW;
    output[7:0] AN;
    reg[7:0] tmp;
    reg[4:0] i;
    always @(SW) begin
        for(i = 0; i < 4'd8; i = i + 1) begin
            if(SW[14:12] == i[3:0])begin
                tmp[i] = 0;
            end
            else begin
                tmp[i] = 1;
            end
        end
    end
    assign AN = tmp;
endmodule
