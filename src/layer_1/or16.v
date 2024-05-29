module Or16(
    input  [0:15] a,
    input  [0:15] b,
    output [0:15] out
);
    Or(a[00], b[00], out[00]);
    Or(a[01], b[01], out[01]);
    Or(a[02], b[02], out[02]);
    Or(a[03], b[03], out[03]);
    Or(a[04], b[04], out[04]);
    Or(a[05], b[05], out[05]);
    Or(a[06], b[06], out[06]);
    Or(a[07], b[07], out[07]);
    Or(a[08], b[08], out[08]);
    Or(a[09], b[09], out[09]);
    Or(a[10], b[10], out[10]);
    Or(a[11], b[11], out[11]);
    Or(a[12], b[12], out[12]);
    Or(a[13], b[13], out[13]);
    Or(a[14], b[14], out[14]);
    Or(a[15], b[15], out[15]);
    

endmodule