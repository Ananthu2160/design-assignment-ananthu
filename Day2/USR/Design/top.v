module usr(
    input clk,
    input rst,
    input sin,
    input [3:0] pin,
    input load,
    input [1:0] mode,

    output reg sout,
    output reg [3:0] pout
);

reg [3:0] temp;

always @(posedge clk)
begin
    if(rst)
    begin
        temp <= 4'b0000;
        pout <= 4'b0000;
        sout <= 1'b0;
    end

    else
    begin

        case(mode)

        // SISO
        2'b00:
        begin
            temp <= {sin,temp[3:1]};
            sout <= temp[0];
        end

        // SIPO
        2'b01:
        begin
            temp <= {sin,temp[3:1]};
            pout <= temp;
        end

        // PISO
        2'b10:
        begin
            if(load)
                temp <= pin;
            else
            begin
                sout <= temp[0];
                temp <= temp >> 1;
            end
        end

        // PIPO
        2'b11:
        begin
            if(load)
            begin
                temp <= pin;
                pout <= pin;
            end
        end

        endcase
    end
end

endmodule
