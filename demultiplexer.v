module demultiplexer(
    input [7:0] data,
    input [1:0] sel,
    output reg [7:0] A,
    output reg [7:0] B,
    output reg [7:0] C,
    output reg [7:0] D
);

    always @(*) begin
        case(sel)
            2'b00: {D, C, B, A} <= {4'b0, 4'b0, 4'b0, data};
            2'b01: {D, C, B, A} <= {4'b0, 4'b0, data, 4'b0};
            2'b10: {D, C, B, A} <= {4'b0, data, 4'b0, 4'b0};
            2'b11: {D, C, B, A} <= {data, 4'b0, 4'b0, 4'b0};
        endcase
    end

endmodule


module internet_demux(
    input [3:0] muxOutput,
    input Enable,
    input [1:0] Sel,
    output [3:0] Lib, FD, School, Ribs
);



assign Lib =  (Enable && (Sel == 2'b00)) ? muxOutput : 4'b0000;
assign FD = (Enable && (Sel == 2'b01)) ? muxOutput : 4'b0000;
assign School = (Enable && (Sel == 2'b10)) ? muxOutput : 4'b0000;
assign Ribs = (Enable && (Sel == 2'b11)) ? muxOutput : 4'b0000 ;


    

endmodule 