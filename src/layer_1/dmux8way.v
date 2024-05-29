module Dmux8Way(
    input in,
    input [0:2] sel,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output h

);
    wire not_sel0;
    wire not_sel1;
    wire not_sel2;

    wire int_and_not_sel0;
    wire not_sel1_and_not_sel2;
    wire in_and_sel0;
    wire sel1_and_not_sel2;
    wire set2_and_not_sel1;
    wire sel1_and_sel2;



    // simple negated inputs
    Not(sel[0],             not_sel0);
    Not(sel[1],             not_sel1);
    Not(sel[2],             not_sel2);

    // in=0 sel=000
    // a = int_and_not_sel0 and not_sel1_and_not_sel2
    And(in,                 not_sel0,               int_and_not_sel0        );
    And(not_sel2,           not_sel1,               not_sel1_and_not_sel2   );
    And(int_and_not_sel0,   not_sel1_and_not_sel2,  a                       );

    // in=0 sel=001
    // b = in_and_sel0 and not_sel1_and_not_sel2
    And(in,                 sel[0],                 in_and_sel0             );
    And(in_and_sel0,        not_sel1_and_not_sel2,  b                       );

    // in=1 sel=010
    // c = int_and_not_sel0 and sel1_and_not_sel2
    And(sel[1],             not_sel2,               sel1_and_not_sel2       );
    And(sel1_and_not_sel2,  int_and_not_sel0,       c                       );

    // in=1 sel=011
    // d = in_and_sel0 and sel1_and_not_sel2
    And(in_and_sel0,        sel1_and_not_sel2,      d                       );

    // in=1 sel=100
    // e = int_and_not_sel0 and set2_and_not_sel1
    And(sel[2],             not_sel1,               set2_and_not_sel1       );
    And(set2_and_not_sel1,  int_and_not_sel0,       e                       );
    
    // in=1 sel=101
    // f = in_and_sel0 and set2_and_not_sel1
    And(set2_and_not_sel1,  in_and_sel0,            f                       );

    // in=1 sel=110
    // g = int_and_not_sel0 and sel1_and_sel2
    And(sel[2],             sel[1],                 sel1_and_sel2           );
    And(int_and_not_sel0,   sel1_and_sel2,          g                       );

    // in=1 sel=111
    // h = in_and_sel0 and sel1_and_sel2
    And(in_and_sel0,        sel1_and_sel2,          h                       );
endmodule