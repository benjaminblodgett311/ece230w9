module block_nonblock(
    input Sig,
    output reg A, B, C, D, E, F
);

    // Blocking assignment
    always @(Sig) begin
        A = Sig; // A immediately gets sig
        B = A; // B immediately gets sig
        C = B; // C immediately gets sig
    end
    // In blocking assignment, Verilog will generate
    // circuits that require full propogation of signals
    // until continuing

    // Non-Blocking assignment
    always @(Sig) begin
        D &lt;= Sig; // D immediately gets sig
        E &lt;= D; // E gets D next time
        F &lt;= E; // F gets E next time
    end
    // In non-blocking assignment, Verilog will generate
    // synchronous logic that ends immediately, and does
    // not block until all circuits propogate
    // USE THIS UNLESS YOU KNOW WHAT YOU ARE DOING

endmodule
