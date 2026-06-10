`timescale 1ns/1ps

module top_tb;

reg clk;
reg rst;

wire [7:0] fifo_data;

top dut(
    .clk(clk),
    .rst(rst),
    .fifo_data(fifo_data)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;

    #10;
    rst = 0;

    #200;
    $finish;
end

endmodule
