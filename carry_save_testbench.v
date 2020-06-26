`timescale 1 ns/10 ps

module carry_save_adder_tb();

reg [15:0] a,b,c;
wire [16:0] sum_final;
wire [15:0] c_out, sum, c_out_II;
wire c_out_16;

localparam period=20;

carry_save_adder UUT (.sum_final(sum_final),.c_out_16(c_out_16),.a(a),.b(b),.c(c));

initial
begin

a= 16'b0000000000000000;
b= 16'b0000000000000000;
c= 16'b0000000000000000;

#period;
if(sum_final== 17'b00000000000000000 || c_out_16== 1'b0)
//	$display("Test failed for all zero inputs");
//else
	$display("Test successful for all zero inputs");

a= 16'b1111111111111111;
b= 16'b1111111111111111;
c= 16'b1111111111111111;

#period;
if(sum_final== 17'b01111111111111101 || c_out_16== 1'b1)
//	$display("Test failed for all unity inputs");
//else
	$display("Test successful for all unity inputs");

a= 16'b1011001111001011;
b= 16'b0101010101010101;
c= 16'b1110111100001100;

#period;
if(sum_final== 17'b11111100000101100 || c_out_16== 1'b0)
//	$display("Test failed for third set of inputs");
//else
	$display("Test successful for third set of inputs");

end
endmodule

