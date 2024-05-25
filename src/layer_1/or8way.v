module Or8Way(
    input[0:7] in,
    output out
);

    wire t0;
    wire t1;
    wire t2;
    wire t3;
    wire t4;
    wire t5;
    wire t6;
    
    Or(in[0], in[1], t0);
    Or(in[2], t0, t1);
    Or(in[3], t1, t2);
    Or(in[4], t2, t3);
    Or(in[5], t3, t4);
    Or(in[6], t4, t5);
    Or(in[7], t5, t6);
    
    assign out = t6;

endmodule