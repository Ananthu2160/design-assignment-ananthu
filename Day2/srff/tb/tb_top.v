`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 14:08:49
// Design Name: 
// Module Name: sr_flipflop_tb
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


module sr_flipflop_tb;
    reg s_tb,r_tb,clk_tb;
    wire q_tb,qbar_tb;
    sr_flipflop sf(q_tb,qbar_tb,s_tb,r_tb,clk_tb);
        initial
        begin
        clk_tb=0;
        forever #5 clk_tb=~clk_tb;
        end
        initial
        begin 
        s_tb=1'b0;r_tb=1'b0; #10;
        s_tb=1'b1;r_tb=1'b0; #10;
        s_tb=1'b0;r_tb=1'b1; #10;
        s_tb=1'b1;r_tb=1'b1; #10;
        s_tb=1'b0;r_tb=1'b0; #10;
        $stop;
        end
        endmodule

