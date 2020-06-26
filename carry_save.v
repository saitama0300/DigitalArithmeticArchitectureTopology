module full_adder(sum, c_out, a, b, c_in);

output sum, c_out;
input a, b, c_in;
wire w0, w1, w2;

xor xor_1(w0, a, b);
xor xor_2(sum, w0, c_in);
or or_1(c_out, w2, w1);

and and_1(w1, a, b);
and and_2(w2, w0, c_in);

endmodule

module carry_save_adder(sum_final,c_out_16, a, b, c);

output [16:0] sum_final;
output c_out_16;
input [15:0] a, b, c;
wire [15:0] c_out, sum, c_out_II;

full_adder f_adder0(sum[0],c_out[0],a[0], b[0], c[0]);
full_adder f_adder1(sum[1],c_out[1],a[1], b[1], c[1]);
full_adder f_adder2(sum[2],c_out[2],a[2], b[2], c[2]);
full_adder f_adder3(sum[3],c_out[3],a[3], b[3], c[3]);
full_adder f_adder4(sum[4],c_out[4],a[4], b[4], c[4]);
full_adder f_adder5(sum[5],c_out[5],a[5], b[5], c[5]);
full_adder f_adder6(sum[6],c_out[6],a[6], b[6], c[6]);
full_adder f_adder7(sum[7],c_out[7],a[7], b[7], c[7]);
full_adder f_adder8(sum[8],c_out[8],a[8], b[8], c[8]);
full_adder f_adder9(sum[9],c_out[9],a[9], b[9], c[9]);
full_adder f_adder10(sum[10],c_out[10],a[10], b[10], c[10]);
full_adder f_adder11(sum[11],c_out[11],a[11], b[11], c[11]);
full_adder f_adder12(sum[12],c_out[12],a[12], b[12], c[12]);
full_adder f_adder13(sum[13],c_out[13],a[13], b[13], c[13]);
full_adder f_adder14(sum[14],c_out[14],a[14], b[14], c[14]);
full_adder f_adder15(sum[15],c_out[15],a[15], b[15], c[15]);

assign sum_final[0]=sum[0];
full_adder save_adder1(sum_final[1],c_out_II[1],sum[1], c_out[0], 0);
full_adder save_adder2(sum_final[2],c_out_II[2],sum[2], c_out[1], c_out_II[1]);
full_adder save_adder3(sum_final[3],c_out_II[3],sum[3], c_out[2], c_out_II[2]);
full_adder save_adder4(sum_final[4],c_out_II[4],sum[4], c_out[3], c_out_II[3]);
full_adder save_adder5(sum_final[5],c_out_II[5],sum[5], c_out[4], c_out_II[4]);
full_adder save_adder6(sum_final[6],c_out_II[6],sum[6], c_out[5], c_out_II[5]);
full_adder save_adder7(sum_final[7],c_out_II[7],sum[7], c_out[6], c_out_II[6]);
full_adder save_adder8(sum_final[8],c_out_II[8],sum[8], c_out[7], c_out_II[7]);
full_adder save_adder9(sum_final[9],c_out_II[9],sum[9], c_out[8], c_out_II[8]);
full_adder save_adder10(sum_final[10],c_out_II[10],sum[10], c_out[9], c_out_II[9]);
full_adder save_adder11(sum_final[11],c_out_II[11],sum[11], c_out[10], c_out_II[10]);
full_adder save_adder12(sum_final[12],c_out_II[12],sum[12], c_out[11], c_out_II[11]);
full_adder save_adder13(sum_final[13],c_out_II[13],sum[13], c_out[12], c_out_II[12]);
full_adder save_adder14(sum_final[14],c_out_II[14],sum[14], c_out[13], c_out_II[13]);
full_adder save_adder15(sum_final[15],c_out_II[15],sum[15], c_out[14], c_out_II[14]);
full_adder save_adder16(sum_final[16],c_out_16, 0, c_out[15], c_out_II[15]);

endmodule

