module demultiplexer_btnc (
    input data,
    input [1:0] sel,
    output reg EnableA, 
    output reg EnableB,
    output reg EnableC,
    output reg EnableD,

);

    always @(*) begin
        case(sel)
            2'b00: {EnableD, EnableC, EnableB, EnableA} <= {8'b0, 8'b0, 8'b0, data};
            2'b01: {EnableD, EnableC, EnableB, EnableA} <= {8'b0, 8'b0, data, 8'b0};
            2'b10: {EnableD, EnableC, EnableB, EnableA} <= {8'b0, data, 8'b0, 8'b0};
            2'b11: {EnableD, EnableC, EnableB, EnableA} <= {data, 8'b0, 8'b0, 8'b0};
        endcase
    end

endmodule
