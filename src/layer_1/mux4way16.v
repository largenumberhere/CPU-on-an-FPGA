module Mux4Way16(
    input [0:15] a,
    input [0:15] b,
    input [0:15] c,
    input [0:15] d,
    input [0:1] sel,

    output [0:15] out
);
    Mux16(a, b, sel[0], t0);
    Mux16(c, d, sel[0], t1);
    Mux16(t0, t1, sel[1], out);

endmodule