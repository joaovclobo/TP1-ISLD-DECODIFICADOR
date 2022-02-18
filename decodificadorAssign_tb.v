module decodificadorAssign_tb();
    reg i1, i2, i3, i4, i5;
    wire A, B, C, D, E, F, G;
    integer j;

    decodificadorAssign DUT(.i1(i1), .i2(i2), .i3(i3), .i4(i4), .i5(i5), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G));
    initial
    begin
        $dumpfile("decodificadorAssign_tb.vcd");
        $dumpvars(0, decodificadorAssign_tb);
        i5 = 0;
        i4 = 0;
        i3 = 0;
        i2 = 0;
        i1 = 0;
        for (j = 0; j < 32; j = j + 1) begin
            #10 i1 = $floor(j / 16);
            #10 i2 = $floor((j - i1 * 16)/8);
            #10 i3 = $floor((j - i1 * 16 - i2 * 8)/ 4);
            #10 i4 = $floor((j - i1 * 16 - i2 * 8 - i3 * 4)/2);
            #10 i5 = j - i1 * 16 - i2 * 8 - i3 * 4 - i4 * 2;
            #100 $display("Entrada: %b%b%b%b%b - Saida: %b%b%b%b%b%b%b", i1, i2, i3, i4, i5, A, B, C, D , E, F, G);
        end
    end
endmodule