`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 20:53:35
// Design Name: 
// Module Name: face_mod
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


module face_mod(
    input clk,
    input rst,
    input [7:0] s_in,
    output reg [7:0] s_out
);

always @(posedge clk or posedge rst)
begin
    if (rst)
        s_out <= 0;
    else
        s_out <= s_in;   // you can replace with real logic
end

endmodule
