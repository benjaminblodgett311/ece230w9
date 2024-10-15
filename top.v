module top(
    input [15:6] sw,
    input btnC,
    output [15:8] led
);

    behavioral_d_latch partOne(
        .Enable(btnC),
        .Data(sw[0]),
        .Q(led[0]),
        .NotQ(led[1])
    )

    wire Adata;
    wire Bdata;
    wire Cdata;
    wire Ddata;

    demultiplexer data(
        .data(sw[15:8]),
        .sel(sw[7:6]),
        .A(Adata),
        .B(Bdata),
        .C(Cdata),
        .D(Ddata),

    )

    wire Abtnc;
    wire Bbtnc;
    wire Cbtnc;
    wire Dbtnc;

    demultiplexer_btnc btnc(
        .data(btnc),
        .sel(sw[7:6]),
        .EnableA(Abtnc),
        .EnableB(Bbtnc),
        .EnableC(Cbtnc),
        .EnableD(Dbtnc),
    )

     behavioral_d_latch A(
        .Enable(Abtnc),
        .Data(Adata),
        .Q(led[15:8]),
        
    )

    behavioral_d_latch B(
        .Enable(BbtnC),
        .Data(Bdata),
        .Q(led[15:8]),
        
    )

    behavioral_d_latch C(
        .Enable(CbtnC),
        .Data(Cdata),
        .Q(led[15:8]),
        
    )

    behavioral_d_latch D(
        .Enable(DbtnC),
        .Data(Ddata),
        .Q(led[15:8]),
        
    )

    multiplexer mux(
        .A(),
        .B(),
        .C(),
        .D(),
        .Sel(),
        .Y()
    )
   

endmodule
