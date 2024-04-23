`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 18:41:02
// Design Name: 
// Module Name: register
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


module register(clk, rst_n, load, d, q);
    parameter WIDTH = 8;
    input clk, rst_n, load;
    input [WIDTH-1:0] d;
    output reg [WIDTH-1:0] q;
    always @(posedge clk) begin
        if (rst_n) q <= 0;
        else if (load) q <= d;
    end
endmodule
