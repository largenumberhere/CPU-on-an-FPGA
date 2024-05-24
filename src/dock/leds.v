// control 4 LEDs where 1=on and 0=off
module Leds(
    output pin_led1,
    output pin_led2,
    output pin_led3,
    output pin_led4,

    input is_on1,
    input is_on2,
    input is_on3,
    input is_on4
);
    Led(pin_led1, is_on1);
    Led(pin_led2, is_on2);
    Led(pin_led3, is_on3);
    Led(pin_led4, is_on4);

endmodule