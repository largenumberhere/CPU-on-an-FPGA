module Ram8(
    input[0:15] in,
    input load,
    input[0:2] address,
    output[0:15] out,
    input clock
);

    wire[0:7] register_load;
    wire[0:7] [0:15] register_out ;

    DMux8Way(
        .in(load), 
        .sel(address),
        .a(register_load[00]),
        .b(register_load[01]),
        .c(register_load[02]),
        .d(register_load[03]),
        .e(register_load[04]),
        .f(register_load[05]),
        .g(register_load[06]),
        .h(register_load[07])
    );

    Mux8Way16(
        register_out[00],
        register_out[01],
        register_out[02],
        register_out[03],
        register_out[04],
        register_out[05],
        register_out[06],
        register_out[07],
        address,
        out
    );


    Register(in, register_load[00], register_out[00], clock);
    Register(in, register_load[01], register_out[01], clock);
    Register(in, register_load[02], register_out[02], clock);
    Register(in, register_load[03], register_out[03], clock);
    Register(in, register_load[04], register_out[04], clock);
    Register(in, register_load[05], register_out[05], clock);
    Register(in, register_load[06], register_out[06], clock);
    Register(in, register_load[07], register_out[07], clock);
    

endmodule