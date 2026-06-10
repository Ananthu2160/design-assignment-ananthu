module face_module(
input clk,
input rst,
output reg [7:0] data_out
);

always @(posedge clk)
begin
    if(rst)
        data_out <= 8'd1;
    else
        data_out <= data_out + 1;
end

endmodule
