module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);

 behavioral_d_latch partOne(
     .Enable(btnC),
     .Data(sw[0]),
     .Q(led[0]),
     .NotQ(led[1])
 );

 wire [7:0] Adata;
 wire [7:0] Bdata;
 wire [7:0] Cdata;
 wire [7:0] Ddata;

 demultiplexer data(
     .data(sw[15:8]),
     .sel(sw[7:6]),
     .A(Adata),
     .B(Bdata),
     .C(Cdata),
     .D(Ddata)
 );

 wire Abtnc;
 wire Bbtnc;
 wire Cbtnc;
 wire Dbtnc;

 demultiplexer_btnc btnc(
     .data(btnC),
     .sel(sw[7:6]),
     .EnableA(Abtnc),
     .EnableB(Bbtnc),
     .EnableC(Cbtnc),
     .EnableD(Dbtnc)
 );

 wire [7:0] OutputA;
 wire [7:0] OutputB;
 wire [7:0] OutputC;
 wire [7:0] OutputD;


 behavioral_d_latch A(
     .Enable(Abtnc),
     .Data(Adata),
     .Q(OutputA)
     
 );

 behavioral_d_latch B(
     .Enable(Bbtnc),
     .Data(Bdata),
     .Q(OutputB)
     
 );

 behavioral_d_latch C(
     .Enable(Cbtnc),
     .Data(Cdata),
     .Q(OutputC)
     
 );

 behavioral_d_latch D(
     .Enable(Dbtnc),
     .Data(Ddata),
     .Q(OutputD)
 );

 mux m(
     .A(OutputA),
     .B(OutputB),
     .C(OutputC),
     .D(OutputD),
     .Sel(sw[7:6]),
     .Y(led[15:8])
 );


endmodule
