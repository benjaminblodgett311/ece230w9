module behavioral_sr_latch(
    input Set,
    input Reset,
    output reg Q,
    output NotQ
);

    always @(Set, Reset) begin
        if (Set)
            Q &lt;= 1;
        else if (Reset)
            Q &lt;= 0;
    end

    assign NotQ = ~Q;

endmodule
