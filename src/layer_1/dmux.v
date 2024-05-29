// De-multiplexer / de-selector
module DMux (
    input in,
    input sel,
    output a,
    output b
);
    wire not_sel;
    
    Not(sel, not_sel);
    
    And(in, not_sel, a);
    And(in, sel, b);
    
endmodule