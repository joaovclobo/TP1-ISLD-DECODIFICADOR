module decodificadorAssign(A, B, C, D, E, F, G, i1, i2, i3, i4, i5 
);
    input i1, i2, i3, i4, i5;
    wire A1, A2, A3, A4, A5;
    wire B1, B2, B3, B4, B5;
    wire C1, C2, C3, C4, C5, C6;
    wire D1, D2, D3, D4, D5;
    wire E1, E2, E3, E4, E5, E6, E7;
    wire F1, F2, F3, F4, F5;
    wire G1, G2, G3, G4, G5;
    output A, B, C, D, E, F, G;

    
    assign A1 = (~i1 & ~i3 & ~i4);
    assign A2 = (~i2 & ~i3 & i5);
    assign A3 = (~i1 & ~i4 & i5);
    assign A4 = (~i2 & ~i3 & i4);
    assign A5 = (~i1 & i4 & ~i5);
    assign A = (A1 | A2 | A3 | A4 | A5);
    
    assign B1 = (~i1 & i3 & ~i4);
    assign B2 = (~i2 & ~i3 & ~i4 & i5);
    assign B3 = (~i1 & ~i2 & i3 & ~i5);
    assign B4 = (~i1 & i2 & ~i3 & i5);
    assign B5 = (i1 & ~i2 & ~i3  & i4);
    assign B = (B1 | B2 | B3 | B4 | B5);

    assign C1 = (~i2 & ~i3 & ~i4);
    assign C2 = (~i2 & ~i3 & ~i5);
    assign C3 = (~i1 & i3 & i5);
    assign C4 = (~i1 & i2 & i4);
    assign C5 = (~i1 & i2 & i3);
    assign C6 = (i1 & ~i2 & ~i3);
    assign C = (C1 | C2 | C3 | C4 | C5 | C6);
    
    assign D1 = (~i1 & ~i2 & ~i4);
    assign D2 = (~i1 & ~i2 & i3);
    assign D3 = (~i1 & i3 & i5);
    assign D4 = (~i2 & ~i3 & i4 & i5);
    assign D5 = (~i1 & i2 & i4 & ~i5);
    assign D = (D1 | D2 | D3 | D4 | D5);

    assign E1 = (~i1 & ~i2 & i4);
    assign E2 = (~i1 & i4 & i5);
    assign E3 = (~i1 & i2 & ~i3 & ~i4);
    assign E4 = (~i1 & ~i2 & i3 & i5);
    assign E5 = (~i1 & i2 & i3 & ~i5);
    assign E6 = (~i2 & ~i3 & i4 & i5);
    assign E7 = (i1 & ~i2 & ~i3 & ~i4 & ~i5);
    assign E = (E1 | E2 | E3 | E4 | E5 | E6 | E7);
    
    assign F1 = (~i1 & ~i4);
    assign F2 = (~i1 & ~i2 & i5);
    assign F3 = (~i1 & ~i3 & i5);
    assign F4 = (~i2 & ~i3 & i5);
    assign F5 = (~i1 & i2 & ~i5);
    assign F = (F1 | F2 | F3 | F4 | F5);

    assign G1 = (~i2 & ~i3 & ~i4);
    assign G2 = (~i1 & ~i4 & i5);
    assign G3 = (~i1 & i2 & ~i3);
    assign G4 = (~i1 & i2 & ~i5);
    assign G5 = (~i1 & ~i2 & i3 & i4);
    assign G = (G1 | G2 | G3 | G4 | G5);
endmodule
