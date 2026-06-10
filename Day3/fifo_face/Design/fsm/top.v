`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 21:28:25
// Design Name: 
// Module Name: fsmmod
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


module output_fsm(
input clk,
input rst,
output reg rdenb
);

parameter S0=2'b00;
parameter S1=2'b01;
parameter S2=2'b10;

reg [1:0] ps,ns;

always @(posedge clk)
begin
    if(rst)
        ps <= S0;
    else
        ps <= ns;
end

always @(*)
begin
    rdenb = 0;

    case(ps)

    S0:
    begin
        ns = S1;
    end

    S1:
    begin
        ns = S2;
    end

    S2:
    begin
        rdenb = 1;
        ns = S0;
    end

    default:
        ns = S0;

    endcase
end

endmodule
