`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 00:07:15
// Design Name: 
// Module Name: bcd_adder
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


module bcdadder(
    input  [3:0] A,
    input  [3:0] B,
    input  Cin,
    output [3:0] Sum,
    output Cout
);

wire [3:0] temp_sum;
wire c1;

wire k;

wire [3:0] correction;
wire c2;

RCA RCA1(
    A,
    B,
    Cin,
    temp_sum,
    c1
);

assign k = c1 |
           (temp_sum[3] & temp_sum[2]) |
           (temp_sum[3] & temp_sum[1]);

assign correction = {1'b0,k,k,1'b0};   // 0110 when k=1

RCA RCA2(
    temp_sum,
    correction,
    1'b0,
    Sum,
    c2
);

assign Cout = k;

endmodule
