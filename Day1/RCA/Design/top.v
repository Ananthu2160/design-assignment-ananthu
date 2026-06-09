`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 19:14:07
// Design Name: 
// Module Name: RCA
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


module RCA(
input [3:0]a,b,
input cin,
output [3:0]sum,
output cout
    );
   wire c1,c2,c3;
 fulladder_beh FA0(a[0],b[0],cin,sum[0],c1);
 fulladder_beh FA1(a[1],b[1],c1,sum[1],c2);
 fulladder_beh FA2(a[2],b[2],c2,sum[2],c3);
 fulladder_beh FA3(a[3],b[3],c3,sum[3],cout);
endmodule

