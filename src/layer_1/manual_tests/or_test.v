// passed
module OrTest(
    output led2,
    output led3
);

    wire t0;
    wire t1;
    wire t2;
    wire t3;

    Or(0,0, t0);    //0
    Or(0,1, t1);    //1
    Or(1,0, t2);    //1
    Or(1,1, t3);    //1
    
    wire highs = t1 & t2 & t3;
    wire lows = t0;

    Led(led2, highs);    // OR(0,1) == OR(1,0) == OR(1,1) == 1, led2 should be high if these tests succeed.
    Led(led3, lows);              // OR(0,0) == 0, led3 should be low if this test succeeds

    /*
        manually upload and verify that
        led_2 is on
        led_3 is off
    */

endmodule