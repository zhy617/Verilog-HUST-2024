`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/20 21:32:29
// Design Name: 
// Module Name: lab2_1_tb
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


module lab2_1_tb(

    );
    reg [15:0] switches;
    wire [7:0] Anode;
    wire [8:0] Cathode;
    wire [15:0] Led;
    reg [7:0] expected_Anode;
    reg [8:0] expected_Cathode;
    reg [15:0] expected_Led;
    
    integer i;
    
    _7Seg_Driver_Direct dut(.SW(switches), .CA(Cathode)
    
endmodule
