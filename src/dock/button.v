// When the button is being pressed, the value output is high
module Button(
    output pressed,
    input button_pin
);
    assign pressed =~ button_pin;
    
endmodule