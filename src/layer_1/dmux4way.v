module DMux4Way(
    input in,
    input [0:1] sel,
    output a,
    output b,
    output c,
    output d
);
    wire notSel0;
    wire notSel1;

    wire sel0_and_not_sel1;
    wire not_sel0_and_not_sel1;
    wire not_sel0_and_sel1;
    wire sel0_and_sel1;

    Not(sel[0], notSel0);                        
    Not(sel[1], notSel1);                        
    
    And(sel[0], notSel1, sel0_and_not_sel1);       
    And(notSel0, notSel1, not_sel0_and_not_sel1);   
    And(notSel0, sel[1], not_sel0_and_sel1);       
    And(sel[0], sel[1], sel0_and_sel1);           

    And(in, not_sel0_and_not_sel1, a);             
    And(in, not_sel0_and_sel1, c);                
    And(in, sel0_and_not_sel1, b);                
    And(in, sel0_and_sel1, d);                   


endmodule