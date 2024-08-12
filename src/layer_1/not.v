module Not(
    input in,
    output out
);
    Nand(in, 1'b1, out);
endmodule