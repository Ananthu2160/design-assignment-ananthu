`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 19:21:52
// Design Name: 
// Module Name: RCA_tb
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


module ripplecarryadder_tb();

reg [3:0] A_tb,B_tb;
reg Cin_tb;

wire [3:0] Sum_tb;
wire Cout_tb;

RCA dut(
    A_tb,
    B_tb,
    Cin_tb,
    Sum_tb,
    Cout_tb
);

initial
begin
    $monitor("A=%b B=%b Cin=%b Sum=%b Cout=%b",
              A_tb,B_tb,Cin_tb,Sum_tb,Cout_tb);

    A_tb=4'b0000;
    B_tb=4'b0000;
    Cin_tb=1'b0;
    #1;

    A_tb=4'b0011;
    B_tb=4'b0101;
    Cin_tb=1'b0;
    #1;

    A_tb=4'b1010;
    B_tb=4'b0101;
    Cin_tb=1'b0;
    #1;

    A_tb=4'b1111;
    B_tb=4'b0001;
    Cin_tb=1'b0;
    #1;

    A_tb=4'b1111;
    B_tb=4'b1111;
    Cin_tb=1'b1;
    #1;

    $finish;
end

endmodule

