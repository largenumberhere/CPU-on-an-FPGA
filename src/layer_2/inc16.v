module Inc16(
    input[0:15] in,
    output[0:15] out

);
    wire [0:15] carry;

    wire true;
    assign true = 1;

    // add one to least significant bit
    HalfAdder(in[00], true,         out[00], carry[00]);

    // propigate carry to all other bits. any carry from last bit is ignored
    HalfAdder(in[01], carry[00],    out[01], carry[01]);
    HalfAdder(in[02], carry[01],    out[02], carry[02]);
    HalfAdder(in[03], carry[02],    out[03], carry[03]);
    HalfAdder(in[04], carry[03],    out[04], carry[04]);
    HalfAdder(in[05], carry[04],    out[05], carry[05]);
    HalfAdder(in[06], carry[05],    out[06], carry[06]);
    HalfAdder(in[07], carry[06],    out[07], carry[07]);
    HalfAdder(in[08], carry[07],    out[08], carry[08]);
    HalfAdder(in[09], carry[08],    out[09], carry[09]);
    HalfAdder(in[10], carry[09],    out[10], carry[10]);
    HalfAdder(in[11], carry[10],    out[11], carry[11]);
    HalfAdder(in[12], carry[11],    out[12], carry[12]);
    HalfAdder(in[13], carry[12],    out[13], carry[13]);
    HalfAdder(in[14], carry[13],    out[14], carry[14]);
    HalfAdder(in[15], carry[14],    out[15], carry[15]);

    

endmodule