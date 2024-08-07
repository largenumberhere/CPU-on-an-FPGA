module Register(
    input[0:15] in,
    input load,
    output[0:15] out,
    input clock
);

    Bit(in[00], load, out[00], clock);
    Bit(in[01], load, out[01], clock);
    Bit(in[02], load, out[02], clock);
    Bit(in[03], load, out[03], clock);
    Bit(in[04], load, out[04], clock);
    Bit(in[05], load, out[05], clock);
    Bit(in[06], load, out[06], clock);
    Bit(in[07], load, out[07], clock);
    Bit(in[08], load, out[08], clock);
    Bit(in[09], load, out[09], clock);
    Bit(in[10], load, out[10], clock);
    Bit(in[11], load, out[11], clock);
    Bit(in[12], load, out[12], clock);
    Bit(in[13], load, out[13], clock);
    Bit(in[14], load, out[14], clock);
    Bit(in[15], load, out[15], clock);

    
endmodule