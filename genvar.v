module sample(
    input X, output Y
);
    assign Y = ~X;
endmodule

module genvar_example
#(
    parameter BIT_COUNT = 16 <i class="conum" data-value="6"></i><b>(6)</b>
)
(
    input [BIT_COUNT - 1:0] sw,
    output [BIT_COUNT - 1:0] led
);

    genvar i; <i class="conum" data-value="1"></i><b>(1)</b>
    generate <i class="conum" data-value="2"></i><b>(2)</b>
        for (i = 0; i &lt; BIT_COUNT; i = i + 1) begin <i class="conum" data-value="3"></i><b>(3)</b>
            sample inst( <i class="conum" data-value="4"></i><b>(4)</b>
                .X(sw[i]), <i class="conum" data-value="5"></i><b>(5)</b>
                .Y(led[i])
            );
        end
    endgenerate
endmodule
