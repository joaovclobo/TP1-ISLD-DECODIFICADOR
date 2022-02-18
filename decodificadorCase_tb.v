module decodificadorCase_tb;
reg [0:4] inp_teste;
wire [0:6] out_saida;

decodificadorCase uut (.entrada(inp_teste), .saida(out_saida));

initial begin
        $dumpfile("decodificadorCase_tb.vcd");
        $dumpvars(0, decodificadorCase_tb);
        $monitor("Entrada: %b - Saida: %b", inp_teste, out_saida);

        #0 inp_teste = 5'b00000;
        #1 inp_teste = 5'b00001;
        #1 inp_teste = 5'b00010;
        #1 inp_teste = 5'b00011;
        #1 inp_teste = 5'b00100;
        #1 inp_teste = 5'b00101;
        #1 inp_teste = 5'b00110;
        #1 inp_teste = 5'b00111;
        #1 inp_teste = 5'b01000;
        #1 inp_teste = 5'b01001;
        #1 inp_teste = 5'b01010;
        #1 inp_teste = 5'b01011;
        #1 inp_teste = 5'b01100;
        #1 inp_teste = 5'b01101;
        #1 inp_teste = 5'b01110;
        #1 inp_teste = 5'b01111;
        #1 inp_teste = 5'b10000;
        #1 inp_teste = 5'b10001;
        #1 inp_teste = 5'b10010;
        #1 inp_teste = 5'b10011;
        #1 inp_teste = 5'b10100;
        #1 inp_teste = 5'b10101;
        #1 inp_teste = 5'b10110;
        #1 inp_teste = 5'b10111;
        #1 inp_teste = 5'b11000;
        #1 inp_teste = 5'b11001;
        #1 inp_teste = 5'b11010;
        #1 inp_teste = 5'b11011;
        #1 inp_teste = 5'b11100;
        #1 inp_teste = 5'b11101;
        #1 inp_teste = 5'b11110;
        #1 inp_teste = 5'b11111;
        #10 $stop;
        $finish;
    end
endmodule