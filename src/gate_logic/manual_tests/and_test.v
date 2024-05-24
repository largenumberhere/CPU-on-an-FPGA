// passed
module AndTest(
    output led2,
    output led3
);

    wire t0;
    wire t1;
    wire t2;
    wire t3;

    And(0,0, t0);
    And(0,1, t1);
    And(1,0, t2);
    And(1,1, t3);

    Led(led2, t0 | t1 | t2);    // AND(0,0), AND(0,1), AND(1,0) == 0, led2 is off
    Led(led3, t3);              // NAND(1,1) == 1, led3 is on

    /*
        manually upload and verify that
        led_2 is off
        led_3 is on
    */

endmodule