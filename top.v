module top(
    input [15:6] sw,
    input btnC,
    output [15:8] led
);

    behavioral_d_latch(
        .Enable(btnC),
        .Data(sw[0]),
        .Q(led[0]),
        .NotQ(led[1])
    )
    
    memory_system mem(
        .data(sw[15:8]),
        .addr(sw[7:6]),
        .store(btnC),
        .memory(led)
    );

endmodule
