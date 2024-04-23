`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 18:48:35
// Design Name: 
// Module Name: ram
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


module ram(read_addr, clk, q);
    parameter DATA_WIDTH = 32;
    parameter ADDR_WIDTH = 8;
    
    input clk;
    input [ADDR_WIDTH-1:0] read_addr;
    output reg [DATA_WIDTH-1:0] q;
    
    reg [DATA_WIDTH-1:0] ram[17:0];
    
    initial $readmemh("D:/CS_Learning/class/Verilog/4/data_8.txt", ram);
    
    always@(read_addr) begin
        q <= ram[read_addr];
    end
endmodule
