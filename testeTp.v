module tp1isl (entrada, saida);
    input [0:4] entrada;
    output reg [0:6] saida;

    always @* begin
        case(entrada)
            5'b00000: saida = 7'b1011011;
            5'b00001: saida = 7'b1111011;
            5'b00010: saida = 7'b1010100;
            5'b00011: saida = 7'b1001110;
            5'b00100: saida = 7'b0101010;
            5'b00101: saida = 7'b1111111;
            5'b00110: saida = 7'b1101101;
            5'b00111: saida = 7'b0011111;
            5'b01000: saida = 7'b1000111;
            5'b01001: saida = 7'b1100111;
            5'b01010: saida = 7'b1011011;
            5'b01011: saida = 7'b0110111;
            5'b01100: saida = 7'b0110111;
            5'b01101: saida = 7'b1111011;
            5'b01110: saida = 7'b1011111;
            5'b01111: saida = 7'b0011100;
            5'b10000: saida = 7'b0010101;
            5'b10001: saida = 7'b1110011;
            5'b10010: saida = 7'b1110000;
            5'b10011: saida = 7'b1111110;
            default: saida =  7'b0000000;
        endcase
    end
endmodule