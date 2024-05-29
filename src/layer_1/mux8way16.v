module Mux8Way16(
    input [0:15] a,
    input [0:15] b,
    input [0:15] c,
    input [0:15] d,
    input [0:15] e,
    input [0:15] f,
    input [0:15] g,
    input [0:15] h,
    input [0:2] sel,
    
    output [0:15] out
);
    wire [0:1] sel_lower;
    assign sel_lower[0] = sel[0];
    assign sel_lower[1] = sel[1];

        Mux4Way16(a, b, c, d, sel_lower, t00);
        Mux4Way16(e, f, g, h, sel_lower, t01);
        Mux16(t00, t01, sel[2], out);

endmodule