module Main(
    //clock
        input Clock,
    //leds
        // led0 and led1 are used as programmer status lights
        output dock_led2,
        output dock_led3,
        output dock_led4,
        output dock_led5,
    // buttons - In schematic referred to as `Silicon key_1` to `Silicone key_5`, on device referred to as S0 to S4
        // button S0 defaults to an SSPI(some protocall?) instead of regular pin. Unsure if changing it is ill-advised . Can be changed: Project -> Configuration -> Place&Route -> Dual-Purpose pin
        input dock_s1,  //S1    //Silicone key_2
        input dock_s2,  //S2    //Silicone key_3
        input dock_s3,  //S3    //Silicone key_4
        input dock_s4   //S4    //Silicone key_5
);

    wire button1;
    wire button2;
    wire button3;
    wire button4;

    wire led2;
    wire led3;
    wire led4;
    wire led5;

    Buttons(dock_s1, dock_s2, dock_s3, dock_s4, button1, button2, button3, button4);
    
    Leds(dock_led2, dock_led3, dock_led4, dock_led5, led2, led3, led4, led5);

    XorTest(
        led2,
        led3,
        led4,
        led5
    );


endmodule


