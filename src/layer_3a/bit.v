module Bit(
    input in,
    input load,
    output out,
    input clock
);
    wire current_in;
    wire current_in0;
    wire current_in1;
    wire last_out;
    wire dff_out;
    
    wire discard_0;
    wire discard_1;
    
    // assign zero = 0;


    DMux(in,load,discard_0,current_in0);
    DMux(last_out,load,current_in1, discard_1);
    Or(current_in0, current_in1, current_in);
    DFF(current_in, dff_out, clock);

    assign out=dff_out;
    assign last_out=dff_out;

endmodule