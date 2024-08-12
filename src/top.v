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

    //Or8WayTest(led2,led3,led4,led5);
    
//    Bit(button1, button2, led3, Clock);
    // Bit(button2, button3, led4, Clock);
//    And(button2, button3, led4);

    // wire [0:15] r_out;
    // wire [0:15] r_in;
    
    // assign r_in[0] = button2;
    // assign r_in[15] = button3;
    // assign led3 = r_out[0]; //= led3;
    // assign led4 = r_out[15];// = led4;
     

    // Register(r_in, button4, r_out, Clock);

    // wire[0:2] addr;
    // assign addr = 'b010;
    // wire[0:15] in;
    // assign in = 'b110000000000001;
    // wire[0:15] out;
    


    // Ram8(in, button1, addr, out, Clock);

    // assign led1 = 'b0;
    // assign led2 = 'b0;
    // assign led3 = out[0];
    // assign led4 = out[15];
    // assign led5 = 'b0;
    
    // Ram64();

    wire clock2;
    SlowClock
(Clock, clock2);

    wire[0:15] r_in;// = 0;
    wire[0:15] r_out;// = 0;

    Register(r_in,1'b1,r_out, clock2);
    //Inc16(r_out,r_in);
    Add16(r_out, 16'b1000000000000000, r_in);


    assign led2 = r_in[00];
    assign led3 = r_in[01];
    assign led4 = r_in[02];
    assign led5 = r_in[03];
    

endmodule
