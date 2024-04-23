`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 18:28:14
// Design Name: 
// Module Name: full_adder
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


module full_adder(a, b, sum);
    parameter WIDTH = 8;
    input [WIDTH-1:0] a, b;
//    input c_in;
    output [WIDTH-1:0] sum;
//    output c_out;
    assign sum = a + b;
endmodule
