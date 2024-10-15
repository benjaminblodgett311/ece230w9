module top(
    input [15:6] sw,
    input btnC,
    output [15:8] led
);

    memory_system mem(
        .data(sw[15:8]),
        .addr(sw[7:6]),
        .store(btnC),
        .memory(led)
    );

endmodule
