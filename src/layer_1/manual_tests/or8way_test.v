/*
    Instantiate the module and manually check that the LEDs are in the states 1,1,1,0
*/

module Or8WayTest(
    output led0,
    output led1,
    output led2,
    output led3
);

    // check that last pin is included
    wire [7:0] in0;
    assign in0[0] = 0;
    assign in0[1] = 0;
    assign in0[2] = 0;
    assign in0[3] = 0;
    assign in0[4] = 0;
    assign in0[5] = 0;
    assign in0[6] = 0;
    assign in0[7] = 1;
    
    wire out0;

    Or8Way(in0, out0);
    assign led0=out0;

    // check that first pin is included
    wire [7:0] in1;
    assign in1[0] = 1;
    assign in1[1] = 0;
    assign in1[2] = 0;
    assign in1[3] = 0;
    assign in1[4] = 0;
    assign in1[5] = 0;
    assign in1[6] = 0;
    assign in1[7] = 0;

    wire out1;

    Or8Way(in1, out1);
    assign led1=out1;

    // check all 1
    wire [7:0] in2;
    assign in2[0] = 1;
    assign in2[1] = 1;
    assign in2[2] = 1;
    assign in2[3] = 1;
    assign in2[4] = 1;
    assign in2[5] = 1;
    assign in2[6] = 1;
    assign in2[7] = 1;

    wire out2;

    Or8Way(in2, out2);
    assign led2=out2;

    // check all 0
    wire [7:0] in3;
    assign in3[0] = 0;
    assign in3[1] = 0;
    assign in3[2] = 0;
    assign in3[3] = 0;
    assign in3[4] = 0;
    assign in3[5] = 0;
    assign in3[6] = 0;
    assign in3[7] = 0;

    wire out3;

    Or8Way(in3, out3);
    assign led3=out3;


endmodule