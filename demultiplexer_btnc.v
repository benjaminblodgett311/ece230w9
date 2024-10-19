module demultiplexer_btnc (
    input data,
    input [1:0] sel,
    output reg EnableA, 
    output reg EnableB,
    output reg EnableC,
    output reg EnableD
);

    always @(*) begin
        case(sel)
            // Again, check your widths.
            // You are trying to pack a four bit signal
            // (four one bit signals) with a 25 bit signal
            // here (three 8 bit signals, one 1 bit signal)
            2'b00: {EnableD, EnableC, EnableB, EnableA} <= {8'b0, 8'b0, 8'b0, data};
            2'b01: {EnableD, EnableC, EnableB, EnableA} <= {8'b0, 8'b0, data, 8'b0};
            2'b10: {EnableD, EnableC, EnableB, EnableA} <= {8'b0, data, 8'b0, 8'b0};
            2'b11: {EnableD, EnableC, EnableB, EnableA} <= {data, 8'b0, 8'b0, 8'b0};
        endcase
    end

endmodule
