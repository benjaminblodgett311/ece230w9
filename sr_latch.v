module behavioral_sr_latch(
    input Set,
    input Reset,
    output reg Q,
    output NotQ
);

    always @(Set, Reset) begin <i class="conum" data-value="2"></i><b>(2)</b>
        if (Set)
            Q &lt;= 1; <i class="conum" data-value="3"></i><b>(3)</b>
        else if (Reset)
            Q &lt;= 0;
    end

    assign NotQ = ~Q; <i class="conum" data-value="1"></i><b>(1)</b>

endmodule
