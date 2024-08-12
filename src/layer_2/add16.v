module Add16(
    input[0:15] a,
    input[0:15] b,
    output[0:15] out
);

    wire[0:15] carry;

    // add the digits and carry remandier
    FullAdder(a[00], b[00], 16'b0,          out[00], carry[00]);
    FullAdder(a[01], b[01], carry[00],  out[01], carry[01]);
    FullAdder(a[02], b[02], carry[01],  out[02], carry[02]);
    FullAdder(a[03], b[03], carry[02],  out[03], carry[03]);
    FullAdder(a[04], b[04], carry[03],  out[04], carry[04]);
    FullAdder(a[05], b[05], carry[04],  out[05], carry[05]);
    FullAdder(a[06], b[06], carry[05],  out[06], carry[06]);
    FullAdder(a[07], b[07], carry[06],  out[07], carry[07]);
    FullAdder(a[08], b[08], carry[07],  out[08], carry[08]);
    FullAdder(a[09], b[09], carry[08],  out[09], carry[09]);
    FullAdder(a[10], b[10], carry[09],  out[10], carry[10]);
    FullAdder(a[11], b[11], carry[10],  out[11], carry[11]);
    FullAdder(a[12], b[12], carry[11],  out[12], carry[12]);
    FullAdder(a[13], b[13], carry[12],  out[13], carry[13]);
    FullAdder(a[14], b[14], carry[13],  out[14], carry[14]);
    FullAdder(a[15], b[15], carry[14],  out[15], carry[15]);
    

endmodule