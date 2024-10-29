module behavioral_d_latch8(
    input Enable,
    input [7:0] Data,
    output reg [7:0] Q
);

    always @(Enable, Data) begin
        if (Enable) 
            Q <= Data;

     end 


endmodule