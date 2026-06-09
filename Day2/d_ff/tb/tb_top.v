`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 14:12:50
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb;
    reg d,clk;
    wire q,qbar;
    d_ff df(q,qbar,d,clk);
    initial
    begin
    clk=1'b0;
    forever #5 clk=~clk;
    end
    initial
    begin
    d=1'b0; #10;
    d=1'b1; #10;
    d=1'b0; #10;
    d=1'b1; #10;
    d=1'b0; #10;
    $stop;
    end
endmodule

