module mux(
    input [8:0] A, B, C, D, // These are all actually 9 bits wide
    input Enable,
    input [1:0] Sel,
    output [3:0] Y // Check your widths. Can't stick an 8 bit signal in a 4 bit hole
);

assign Y = Enable ? (
        (Sel == 2'b00) ? A :
        (Sel == 2'b01) ? B :
        (Sel == 2'b10) ? C :
        (Sel == 2'b11) ? D :
        4'b0000
) : 4'b0000;

    

endmodule 
