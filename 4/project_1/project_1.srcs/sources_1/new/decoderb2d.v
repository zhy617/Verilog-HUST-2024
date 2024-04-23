`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/19 23:38:01
// Design Name: 
// Module Name: decoderb2d
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


module decoderb2d(bin_in, bcd_out);
    parameter WIDTH = 32;
    input [WIDTH-1:0] bin_in;
    output [31:0] bcd_out;
    reg [3:0] digit[7:0];
    integer i, j;
    always @(bin_in) begin
        for(i = 7; i >= 0; i = i - 1)begin
            digit[i] = 4'd0;
        end
        
        for(i = WIDTH - 1; i >= 0; i = i - 1) begin
            for(j = 7; j >= 0; j = j - 1)begin
                if (digit[j] >= 4'd5) digit[j] = digit[j] + 4'd3;
            end
            
            for(j = 7; j > 0; j = j - 1)begin
                digit[j] = {digit[j][2:0], digit[j-1][3]};
            end
            
            digit[0] = {digit[0][2:0], bin_in[i]};
                
        end
    end
    assign bcd_out = {digit[7], digit[6], digit[5], digit[4], digit[3], digit[2], digit[1], digit[0]};
    
endmodule
