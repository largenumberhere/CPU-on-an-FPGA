
module And(
    input a,
    input b,
    output out
);
    
    wire ANandB;

    Nand(a,b, ANandB);
    Not(ANandB, out);

endmodule