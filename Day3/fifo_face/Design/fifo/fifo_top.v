`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 20:54:02
// Design Name: 
// Module Name: fifo
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


module fifo(
    input clk,rst,wrenb,rdenb,
    input [7:0]data_in,
    output reg [7:0]data_out,
    output full,empty
);

reg [7:0] mem[7:0];
reg [2:0] wr_ptr=0;
reg [2:0] rd_ptr=0;
integer i;

always @(posedge clk)
begin
    if(rst) begin
        wr_ptr <= 0;
        rd_ptr <= 0;
        data_out <= 0;
        for(i=0;i<8;i=i+1)   // ? FIX (was 0)
            mem[i]<=0; 
    end

    else begin
        if (wrenb==1) begin
            mem[wr_ptr]<=data_in;
            wr_ptr<=wr_ptr+1;
        end

        if(rdenb==1 && empty==0) begin
            data_out<=mem[rd_ptr];
            rd_ptr<=rd_ptr+1;
        end
    end
end

// ? moved ???? (only change needed)
assign full  = ((wr_ptr+1)==rd_ptr);
assign empty = (wr_ptr==rd_ptr);

endmodule
