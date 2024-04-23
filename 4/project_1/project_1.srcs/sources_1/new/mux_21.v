`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 18:37:06
// Design Name: 
// Module Name: mux_21
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


module mux_21(a, b, sel, out);
    parameter WIDTH = 32;
    input [WIDTH-1:0] a, b;
    input sel;
    output [WIDTH-1:0] out;
    assign out = sel==1 ? a:b;
endmodule
