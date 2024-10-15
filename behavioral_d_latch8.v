module behavioral_d_latch8(
    input Enable,
    input [7:0] Data,
    output [7:0] reg Q,
);

    always @(Enable, Data) begin
        if (Enable) 
            Q <= Data;

     end 


endmodule