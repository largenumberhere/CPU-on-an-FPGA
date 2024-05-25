// passed
module NandTest(
    output led2,
    output led3
);

    wire t0;
    wire t1;
    wire t2;
    wire t3;

    Nand(0,0, t0);
    Nand(0,1, t1);
    Nand(1,0, t2);
    Nand(1,1, t3);

    Led(led2, t0 | t1 | t2);    // NAND(0,0), NAND(0,1), NAND(1,0) == 1, led2 is on
    Led(led3, t3);              // NAND(1,1) == 0, led3 is off

    /*
        manually upload and verify that
        led_2 is on
        led_3 is off
    */

endmodule