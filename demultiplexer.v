module demultiplexer(
    input [3:0] data,
    input [1:0] sel,
    output reg [3:0] A,
    output reg [3:0] B,
    output reg [3:0] C,
    output reg [3:0] D
);

    always @(*) begin <i class="conum" data-value="1"></i><b>(1)</b>
        case(sel)
            2'b00: {D, C, B, A} &lt;= {4'b0, 4'b0, 4'b0, data}; <i class="conum" data-value="2"></i><b>(2)</b>
            2'b01: {D, C, B, A} &lt;= {4'b0, 4'b0, data, 4'b0};
            2'b10: {D, C, B, A} &lt;= {4'b0, data, 4'b0, 4'b0};
            2'b11: {D, C, B, A} &lt;= {data, 4'b0, 4'b0, 4'b0};
        endcase
    end

endmodule