`timescale 1ns / 1ps

module usr_tb;

reg clk_tb;
reg rst_tb;
reg sin_tb;
reg load_tb;
reg [1:0] mode_tb;
reg [3:0] pin_tb;

wire sout_tb;
wire [3:0] pout_tb;

usr uut(clk_tb,rst_tb,sin_tb,pin_tb,load_tb,mode_tb,sout_tb,pout_tb);

initial
begin
    clk_tb = 0;
    forever #5 clk_tb = ~clk_tb;
end

initial
begin
    rst_tb = 1;
    sin_tb = 0;
    load_tb = 0;
    mode_tb = 2'b00;
    pin_tb = 4'b0000;
    #10;

    rst_tb = 0;

    // SISO
    mode_tb = 2'b00;
    sin_tb = 1; #10;
    sin_tb = 0; #10;
    sin_tb = 1; #10;
    sin_tb = 1; #10;

    // SIPO
    mode_tb = 2'b01;
    sin_tb = 1; #10;
    sin_tb = 0; #10;
    sin_tb = 1; #10;
    sin_tb = 0; #10;

    // PISO
    mode_tb = 2'b10;
    pin_tb = 4'b1101;
    load_tb = 1; #10;
    load_tb = 0; #40;

    // PIPO
    mode_tb = 2'b11;
    pin_tb = 4'b1010;
    load_tb = 1; #10;
    load_tb = 0; #20;

    $stop;
end

endmodule
