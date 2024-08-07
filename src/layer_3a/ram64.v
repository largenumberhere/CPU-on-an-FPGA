module Ram64(
    input[0:15] in,
    input load,
    input[0:5] address,
    output[0:15] out,
    input clock
);

    wire[0:7] register_load;
    wire[0:7][0:15] register_out ;
    
    wire[0:2] load_address;
    assign load_address = address[3:5];

    DMux8Way(
        .in(load),
        .sel(load_address),
        .a(register_load[00]),
        .b(register_load[01]),
        .c(register_load[02]),
        .d(register_load[03]),
        .e(register_load[04]),
        .f(register_load[05]),
        .g(register_load[06]),
        .h(register_load[07])
    );

    wire[0:2] out_address;
    assign out_address = address[3:5];

    Mux8Way16(
        .a(register_out[00]),
        .b(register_out[01]),
        .c(register_out[02]),
        .d(register_out[03]),
        .e(register_out[04]),
        .f(register_out[05]),
        .g(register_out[06]),
        .h(register_out[07]),
        .sel(out_address),
        .out(out)
    );

    wire[0:2] bank_selected;
    assign bank_selected = address[0:2];

    Ram8(.in(in), .load(register_load[00]), .address(bank_selected), .out(register_out[00]), .clock(clock));
    Ram8(.in(in), .load(register_load[01]), .address(bank_selected), .out(register_out[01]), .clock(clock));
    Ram8(.in(in), .load(register_load[02]), .address(bank_selected), .out(register_out[02]), .clock(clock));
    Ram8(.in(in), .load(register_load[03]), .address(bank_selected), .out(register_out[03]), .clock(clock));
    Ram8(.in(in), .load(register_load[04]), .address(bank_selected), .out(register_out[04]), .clock(clock));
    Ram8(.in(in), .load(register_load[05]), .address(bank_selected), .out(register_out[05]), .clock(clock));
    Ram8(.in(in), .load(register_load[06]), .address(bank_selected), .out(register_out[06]), .clock(clock));
    Ram8(.in(in), .load(register_load[07]), .address(bank_selected), .out(register_out[07]), .clock(clock));
    



endmodule