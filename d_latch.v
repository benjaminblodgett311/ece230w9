module behavioral_d_latch(
    input Enable,
    input Data,
    output reg Q,
    output NotQ
);

    always @(Enable, Data) begin
        if (Enable) 
            Q <= Data;

     end 


    assign NotQ = ~Q;

endmodule
