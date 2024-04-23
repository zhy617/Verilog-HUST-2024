`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/27 19:13:48
// Design Name: 
// Module Name: _7Seg_display
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


module _7Seg_display(
SW, SEG, AN, LED
    );
    input[15:0] SW;
    output[7:0] SEG;
    output[7:0] AN;
    output[15:0] LED;
    wire[3:0] Dec;
    _7Seg_decode_an A1(.SW(SW), .AN(AN));
    _7Seg_decode_bin B1(.SW(SW), .Dec(Dec));
    _7Seg_decode_dec D1(.SW(Dec), .SEG(SEG));
    assign LED = SW;
    
endmodule
