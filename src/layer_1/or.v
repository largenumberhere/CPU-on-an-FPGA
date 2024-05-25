module Or(
    input a,
    input b,
    output out
);

    wire nota;
    wire notb;

    Not(a, nota);
    Not(b, notb);
    Nand(nota, notb, out);

endmodule