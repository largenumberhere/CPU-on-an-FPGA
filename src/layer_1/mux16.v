// multiplexor that chooses between two 16-bit busses

module Mux16(
    input  [0:15] a,
    input  [0:15] b,
    input sel,
    output [0:15] out
);
    wire not_sel;
    
    wire a_true_and_selected_00;
    wire a_true_and_selected_01;
    wire a_true_and_selected_02;
    wire a_true_and_selected_03;
    wire a_true_and_selected_04;
    wire a_true_and_selected_05;
    wire a_true_and_selected_06;
    wire a_true_and_selected_07;
    wire a_true_and_selected_08;
    wire a_true_and_selected_09;
    wire a_true_and_selected_10;
    wire a_true_and_selected_11;
    wire a_true_and_selected_12;
    wire a_true_and_selected_13;
    wire a_true_and_selected_14;
    wire a_true_and_selected_15;
    

    wire b_true_and_selected_00;
    wire b_true_and_selected_01;
    wire b_true_and_selected_02;
    wire b_true_and_selected_03;
    wire b_true_and_selected_04;
    wire b_true_and_selected_05;
    wire b_true_and_selected_06;
    wire b_true_and_selected_07;
    wire b_true_and_selected_08;
    wire b_true_and_selected_09;
    wire b_true_and_selected_10;
    wire b_true_and_selected_11;
    wire b_true_and_selected_12;
    wire b_true_and_selected_13;
    wire b_true_and_selected_14;
    wire b_true_and_selected_15;

    Not(sel, not_sel);

    // out[00]
    And(a[00], not_sel, a_true_and_selected_00);
    And(b[00], sel,     b_true_and_selected_00);
    Or(b_true_and_selected_00, a_true_and_selected_00, out[00]);    

    // out[01]
    And(a[01], not_sel,  a_true_and_selected_01);
    And(b[01], sel,      b_true_and_selected_01);
    Or(b_true_and_selected_01, a_true_and_selected_01, out[01]);    

    // out[02]
    And(a[02], not_sel,  a_true_and_selected_02);
    And(b[02], sel,      b_true_and_selected_02);
    Or(b_true_and_selected_02, a_true_and_selected_02, out[02]);    

    // out[03]
    And(a[03], not_sel,  a_true_and_selected_03);
    And(b[03], sel,      b_true_and_selected_03);
    Or(b_true_and_selected_03, a_true_and_selected_03, out[03]);    

    // out[04]
    And(a[04], not_sel,  a_true_and_selected_04);
    And(b[04], sel,      b_true_and_selected_04);
    Or(b_true_and_selected_04, a_true_and_selected_04, out[04]);    

    // out[05]
    And(a[05], not_sel,  a_true_and_selected_05);
    And(b[05], sel,      b_true_and_selected_05);
    Or(b_true_and_selected_05, a_true_and_selected_05, out[05]);    

    // out[06]
    And(a[06], not_sel,  a_true_and_selected_06);
    And(b[06], sel,      b_true_and_selected_06);
    Or(b_true_and_selected_06, a_true_and_selected_06, out[06]);    

    // out[07]
    And(a[07], not_sel,  a_true_and_selected_07);
    And(b[07], sel,      b_true_and_selected_07);
    Or(b_true_and_selected_07, a_true_and_selected_07, out[07]);    

    // out[08]
    And(a[08], not_sel,  a_true_and_selected_08);
    And(b[08], sel,      b_true_and_selected_08);
    Or(b_true_and_selected_08, a_true_and_selected_08, out[08]);    

    // out[09]
    And(a[09], not_sel,  a_true_and_selected_09);
    And(b[09], sel,      b_true_and_selected_09);
    Or(b_true_and_selected_09, a_true_and_selected_09, out[09]);    

    // out[10]
    And(a[10], not_sel,  a_true_and_selected_10);
    And(b[10], sel,      b_true_and_selected_10);
    Or(b_true_and_selected_10, a_true_and_selected_10, out[10]);    

    // out[11]
    And(a[11], not_sel,  a_true_and_selected_11);
    And(b[11], sel,      b_true_and_selected_11);
    Or(b_true_and_selected_11, a_true_and_selected_11, out[11]);    

    // out[12]
    And(a[12], not_sel,  a_true_and_selected_12);
    And(b[12], sel,      b_true_and_selected_12);
    Or(b_true_and_selected_12, a_true_and_selected_12, out[12]);    

    // out[13]
    And(a[13], not_sel,  a_true_and_selected_13);
    And(b[13], sel,      b_true_and_selected_13);
    Or(b_true_and_selected_13, a_true_and_selected_13, out[13]);    

    // out[14]
    And(a[14], not_sel,  a_true_and_selected_14);
    And(b[14], sel,      b_true_and_selected_14);
    Or(b_true_and_selected_14, a_true_and_selected_14, out[14]);    

    // out[15]
    And(a[15], not_sel,  a_true_and_selected_15);
    And(b[15], sel,      b_true_and_selected_15);
    Or(b_true_and_selected_15, a_true_and_selected_15, out[15]);    



endmodule