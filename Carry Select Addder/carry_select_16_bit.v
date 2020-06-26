module carry_select_adder_16bit(a, b, c_in, s, c_out);

input [15:0] a,b;
input c_in;
output [15:0] s;
output c_out;
 
wire [2:0] c;
 
ripple_carry_4_bit rca1(
.a(a[3:0]),
.b(b[3:0]),
.c_in(c_in),
.s(s[3:0]),
.c(c[0]));
 
carry_select_adder_4bit_slice csa_slice1(
.a(a[7:4]),
.b(b[7:4]),
.c_in(c[0]),
.s(s[7:4]),
.c(c[1]));
 
carry_select_adder_4bit_slice csa_slice2(
.a(a[11:8]),
.b(b[11:8]),
.c_in(c[1]),
.s(s[11:8]), 
.c(c[2]));
 
carry_select_adder_4bit_slice csa_slice3(
.a(a[15:12]),
.b(b[15:12]),
.c_in(c[2]),
.s(s[15:12]),
.c(c_out));

endmodule
