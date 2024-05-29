// and each bit of a with its corrosponding bit of b
module And16(
    input [0:15] a,
    input [0:15] b,
    output [0:15] out 
);
    And(a[00],b[00], out[00]);
    And(a[01],b[01], out[01]);
    And(a[02],b[02], out[02]);
    And(a[03],b[03], out[03]);
    And(a[04],b[04], out[04]);
    And(a[05],b[05], out[05]);
    And(a[06],b[06], out[06]);
    And(a[07],b[07], out[07]);
    And(a[08],b[08], out[08]);
    And(a[09],b[09], out[09]);
    And(a[10],b[10], out[10]);
    And(a[11],b[11], out[11]);
    And(a[12],b[12], out[12]);
    And(a[13],b[13], out[13]);
    And(a[14],b[14], out[14]);
    And(a[15],b[15], out[15]);
    



endmodule