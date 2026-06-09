`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 00:08:52
// Design Name: 
// Module Name: bcdadder_tb
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



module bcdadder_tb();

reg [3:0] A_tb,B_tb;
reg Cin_tb;

wire [3:0] Sum_tb;
wire Cout_tb;

bcdadder dut(
    A_tb,
    B_tb,
    Cin_tb,
    Sum_tb,
    Cout_tb
);

initial
begin
    $monitor("A=%d B=%d Cin=%b Sum=%d Cout=%b",
              A_tb,B_tb,Cin_tb,Sum_tb,Cout_tb);

    // 2 + 3 = 5
    A_tb=4'd2;
    B_tb=4'd3;
    Cin_tb=1'b0;
    #1;

    // 4 + 5 = 9
    A_tb=4'd4;
    B_tb=4'd5;
    Cin_tb=1'b0;
    #1;

    // 8 + 7 = 15
    A_tb=4'd8;
    B_tb=4'd7;
    Cin_tb=1'b0;
    #1;

    // 9 + 9 = 18
    A_tb=4'd9;
    B_tb=4'd9;
    Cin_tb=1'b0;
    #1;

    // 6 + 8 = 14
    A_tb=4'd6;
    B_tb=4'd8;
    Cin_tb=1'b0;
    #1;

    $finish;
end

endmodule
