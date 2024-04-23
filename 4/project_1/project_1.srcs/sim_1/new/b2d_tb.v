`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/19 23:51:02
// Design Name: 
// Module Name: b2d_tb
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


module b2d_tb();
    reg [31:0] bin_in;
    wire [27:0] bcd_out;
    
    decoderb2d d1(bin_in, bcd_out);
    
    initial begin
        bin_in = 0;
        #10 bin_in = 5;
        #10 bin_in = 30;
        #10 bin_in = 165;
    end
endmodule
