`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/27 19:23:24
// Design Name: 
// Module Name: _7Seg_decode_bin
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


module _7Seg_decode_bin(
SW, Dec
    );
    input[15:0] SW;
    output[3:0] Dec;
    reg[3:0] tmpHigh, tmpLow;
    always @(SW) begin
        if (SW[3:0] < 4'd10) begin
            tmpHigh = 4'd0;
            tmpLow = SW[3:0];
        end
        else begin
            tmpHigh = 4'd1;
            tmpLow = SW[3:0] - 4'd10;
        end
        if (SW[15] == 1) begin
            tmpHigh = tmpHigh;
        end
        else begin
            tmpHigh = tmpLow;
        end
    end 
    assign Dec = tmpHigh;
endmodule
