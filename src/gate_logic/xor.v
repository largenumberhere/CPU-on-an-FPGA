module Xor(
    input a,
    input b,
    output out
);
    wire notB;
    wire notA;
    wire notAAndB;
    wire notBAndA;
    
    Not(b,notB);
    Not(a,notA);
    And(notA, b, notAAndB);
    And(a,notB, notBAndA);
    Or(notAAndB, notBAndA, out);


endmodule