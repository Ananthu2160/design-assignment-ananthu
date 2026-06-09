module decoder_2x4_tb;

reg [1:0] a;
reg en;
wire [3:0] y;

decoder_2x4 uut(
    .a(a),
    .en(en),
    .y(y)
);

initial
begin
    $monitor("Time=%0t en=%b a=%b y=%b",
              $time,en,a,y);

    en = 0; a = 2'b00;
    #10;

    en = 1; a = 2'b00;
    #10;

    a = 2'b01;
    #10;

    a = 2'b10;
    #10;

    a = 2'b11;
    #10;

    en = 0;
    #10;

    $finish;
end

endmodule
