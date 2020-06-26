module ripple_carry_4_bit(a, b, c_in, s, c);

 input [3:0] a,b;
 input c_in;
 output [3:0] s;
 output c;
 
 wire c1,c2,c3;
 
 full_adder fa0(.a(a[0]),.b(b[0]),.c_in(c_in),.s(s[0]),.c(c1));
 
 full_adder fa1(.a(a[1]),.b(b[1]),.c_in(c1),.s(s[1]),.c(c2));
 
 full_adder fa2(.a(a[2]),.b(b[2]),.c_in(c2),.s(s[2]),.c(c3));
 
 full_adder fa3(.a(a[3]),.b(b[3]),.c_in(c3),.s(s[3]),.c(c));

endmodule
