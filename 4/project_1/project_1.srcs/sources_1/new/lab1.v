`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 19:09:50
// Design Name: 
// Module Name: lab1
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


module lab1(clk, rst, LD_SUM, LD_NEXT, NEXT_ZERO, SUM_SEL, A_SEL, NEXT_SEL, SUM_OUT);
    input clk, rst;
    input LD_SUM, LD_NEXT, SUM_SEL, A_SEL, NEXT_SEL;
    output NEXT_ZERO;
    parameter WIDTH = 32;
    parameter ADDR_WIDTH = 32;
    output [WIDTH-1:0] SUM_OUT;
    wire [WIDTH-1:0] D;
    wire [ADDR_WIDTH-1:0] A;
    wire [WIDTH-1:0] selnext_out, selsum_out, next_out, sum_out, addsum_out, addnext_out;
    reg [WIDTH-1:0] const_1 = 1, const_0 = 0;
    
    ram #(.DATA_WIDTH(WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) r1 (.q(D), .read_addr(A), .clk(clk));
    mux_21 #(.WIDTH(WIDTH)) next_sel (.a(D), .b(0), .sel(NEXT_SEL), .out(selnext_out));
    mux_21 #(.WIDTH(WIDTH)) a_sel (.a(addnext_out), .b(next_out), .sel(A_SEL), .out(A));
    mux_21 #(.WIDTH(WIDTH)) sum_sel (.a(addsum_out), .b(const_0), .sel(SUM_SEL), .out(selsum_out));
    register #(.WIDTH(WIDTH)) NEXT (.clk(clk), .rst_n(rst), .load(LD_NEXT), .d(selnext_out), .q(next_out));
//    register #(.WIDTH(WIDTH))   
    register #(.WIDTH(WIDTH)) sum (.clk(clk), .rst_n(rst), .load(LD_SUM), .d(addsum_out), .q(sum_out));
    full_adder #(.WIDTH(WIDTH)) NEXT_ADD(.a(next_out), .b(const_1), .sum(addnext_out));
    full_adder #(.WIDTH(WIDTH)) sum_add(.a(D), .b(sum_out), .sum(addsum_out));
    comparator #(.WIDTH(WIDTH)) pd (.a(selnext_out), .b(0), .is_equal(NEXT_ZERO));
    assign SUM_OUT = sum_out;
endmodule
