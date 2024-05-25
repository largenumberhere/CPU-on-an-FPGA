// Manually verify that 
//  led1=0
//  led2=1
//  led3=1
//  ked4=0
module XorTest(
    output led1,
    output led2,
    output led3,
    output led4
);  
    Xor(0,0,led1);    // should be 0
    Xor(0,1, led2);   //should be 1
    Xor(1,0,led3);    //should be 1
    Xor(1,1,led4);    //should be 0

endmodule