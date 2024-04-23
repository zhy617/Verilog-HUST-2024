`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/03 19:06:12
// Design Name: 
// Module Name: counter
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


module counter(clk, out, bcd_out, now_out);
    input clk;                    // 计数时钟
    input [31:0] bcd_out;
    output reg [3:0] now_out;
    output [2:0] out;   
    reg [2:0] tmp;          
    initial begin
        tmp = 0;
    end
    assign out = tmp[2:0];
    
    integer i;
    always @(posedge clk)  begin  // 在时钟上升沿计数器加1
        tmp = tmp + 1;
    end               
    
    always @(tmp) begin
        case(tmp)
            3'd0:begin
                now_out = bcd_out[3:0];
            end
            3'd1:begin
                now_out = bcd_out[7:4];
            end
            3'd2:begin
                now_out = bcd_out[11:8];
            end
            3'd3:begin
                now_out = bcd_out[15:12];
            end
            3'd4:begin
                now_out = bcd_out[19:16];
            end
            3'd5:begin
                now_out = bcd_out[23:20];
            end
            3'd6:begin
                now_out = bcd_out[27:24];
            end
            3'd7:begin
                now_out = bcd_out[31:28];
            end
        endcase
    end
     
        
endmodule
