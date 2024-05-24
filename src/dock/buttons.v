module Buttons(
    input pin_button1,
    input pin_button2,
    input pin_button3,
    input pin_button4,

    output is_pressed1,
    output is_pressed2,
    output is_pressed3,
    output is_pressed4
);
    Button(is_pressed1, pin_button1);
    Button(is_pressed2, pin_button2);
    Button(is_pressed3, pin_button3);
    Button(is_pressed4, pin_button4);

endmodule