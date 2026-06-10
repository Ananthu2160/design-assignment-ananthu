`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 21:29:05
// Design Name: 
// Module Name: top
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


module top(
input clk,
input rst,
output [7:0] fifo_data
);

wire [7:0] face_data;
wire rdenb;

face_module U1(
    clk,
    rst,
    face_data
);

output_fsm U2(
    clk,
    rst,
    rdenb
);

fifo U3(
    .clk(clk),
    .rst(rst),
    .wrenb(1'b1),
    .rdenb(rdenb),
    .data_in(face_data),
    .data_out(fifo_data),
    .full(),
    .empty()
);

endmodule

