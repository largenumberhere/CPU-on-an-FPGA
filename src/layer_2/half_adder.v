module HalfAdder(
    input a,
    input b,
    output sum,
    output carry
);
    Xor(a,b,sum);
    And(a,b,carry);

endmodule