// multiplexer / selector

module Mux(
    input a,
    input b,
    input sel,
    output out
);
    wire not_sel;
    wire b_true_and_selected;
    wire a_true_and_selected;

    Not(sel, not_sel);
    
    And(a, not_sel, b_true_and_selected);   
    And(a, sel, a_true_and_selected);      

    // inputs should never both be high, so can also use xor.
    // If one condition is met, output is high
    Or(a_true_and_selected, b_true_and_selected, out);

endmodule