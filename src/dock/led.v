// drive a builtin LED in the Tang primer 20k full dock
// input=1, turns on the LED

module Led(
    output led,
    input on
);
    assign led = ~on;

endmodule