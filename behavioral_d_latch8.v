module behavioral_d_latch8(
    input Enable,
    input [7:0] Data,
    output reg [7:0] Q // Can't have a comma at the end of the port list
                       // and reg must go before the width
);

    always @(Enable, Data) begin
        if (Enable) 
            Q <= Data;

     end 


endmodule