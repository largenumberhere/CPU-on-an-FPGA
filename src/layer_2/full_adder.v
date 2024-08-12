module FullAdder(
    input a,
    input b,
    input c,
    output sum,
    output carry
);
    wire half_adder_sum;
    wire half_adder_carry;
    wire carry0;
    wire b_and_c;

    wire discard0;

    HalfAdder(b,c,half_adder_sum, half_adder_carry);
    HalfAdder(a, half_adder_sum, discard0, carry0);
    Xor(a, half_adder_sum, sum);
    
    And(b, c, b_and_c);
    Or(carry0, b_and_c, carry);

endmodule