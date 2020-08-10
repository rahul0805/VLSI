
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Nov  2 2019 01:38:40 IST (Nov  1 2019 20:08:40 UTC)

// Verification Directory fv/radix2fft 

module butterfly(a, b, c, d);
  input [1:0] a, b;
  output [3:0] c, d;
  wire [1:0] a, b;
  wire [3:0] c, d;
  wire n_1, n_2, n_3, n_4, n_5, n_6, n_7, n_9;
  wire n_11, n_13;
  OAI22XL g154(.A0 (n_6), .A1 (n_3), .B0 (n_1), .B1 (b[1]), .Y (d[3]));
  OAI21XL g155(.A0 (n_9), .A1 (n_6), .B0 (n_13), .Y (d[1]));
  NAND2XL g156(.A (n_6), .B (n_9), .Y (n_13));
  OAI21XL g157(.A0 (n_9), .A1 (n_4), .B0 (n_11), .Y (c[1]));
  NAND2XL g158(.A (n_4), .B (n_9), .Y (n_11));
  OAI2BB1XL g159(.A0N (n_4), .A1N (n_5), .B0 (n_7), .Y (c[3]));
  AND2X1 g160(.A (n_7), .B (n_5), .Y (n_9));
  OAI21XL g161(.A0 (n_2), .A1 (b[0]), .B0 (n_6), .Y (c[0]));
  NAND2XL g162(.A (b[1]), .B (a[1]), .Y (n_7));
  NAND2XL g163(.A (b[0]), .B (n_2), .Y (n_6));
  NOR2BXL g164(.AN (b[1]), .B (a[1]), .Y (n_3));
  OR2X1 g165(.A (b[1]), .B (a[1]), .Y (n_5));
  NAND2XL g166(.A (b[0]), .B (a[0]), .Y (n_4));
  CLKINVX1 g167(.A (a[0]), .Y (n_2));
  CLKINVX1 g168(.A (a[1]), .Y (n_1));
endmodule

module butterfly_1(a, b, c, d);
  input [1:0] a, b;
  output [3:0] c, d;
  wire [1:0] a, b;
  wire [3:0] c, d;
  wire n_1, n_2, n_3, n_4, n_5, n_6, n_7, n_9;
  wire n_11, n_13;
  OAI22XL g154(.A0 (n_6), .A1 (n_3), .B0 (n_1), .B1 (b[1]), .Y (d[3]));
  OAI21XL g155(.A0 (n_9), .A1 (n_6), .B0 (n_13), .Y (d[1]));
  NAND2XL g156(.A (n_6), .B (n_9), .Y (n_13));
  OAI21XL g157(.A0 (n_9), .A1 (n_4), .B0 (n_11), .Y (c[1]));
  NAND2XL g158(.A (n_4), .B (n_9), .Y (n_11));
  OAI2BB1XL g159(.A0N (n_4), .A1N (n_5), .B0 (n_7), .Y (c[3]));
  AND2X1 g160(.A (n_7), .B (n_5), .Y (n_9));
  OAI21XL g161(.A0 (n_2), .A1 (b[0]), .B0 (n_6), .Y (c[0]));
  NAND2XL g162(.A (b[1]), .B (a[1]), .Y (n_7));
  NAND2XL g163(.A (b[0]), .B (n_2), .Y (n_6));
  NOR2BXL g164(.AN (b[1]), .B (a[1]), .Y (n_3));
  OR2X1 g165(.A (b[1]), .B (a[1]), .Y (n_5));
  NAND2XL g166(.A (b[0]), .B (a[0]), .Y (n_4));
  CLKINVX1 g167(.A (a[0]), .Y (n_2));
  CLKINVX1 g168(.A (a[1]), .Y (n_1));
endmodule

module radix2fft(i0, i1, i2, i3, e, ei, f, fi, g, gi, h, hi);
  input [1:0] i0, i1, i2, i3;
  output [3:0] e, ei, f, fi, g, gi, h, hi;
  wire [1:0] i0, i1, i2, i3;
  wire [3:0] e, ei, f, fi, g, gi, h, hi;
  wire [3:0] A;
  wire [3:0] C;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2,
       UNCONNECTED3, UNCONNECTED4, n_0, n_1;
  wire n_2, n_3, n_4, n_5, n_6, n_7, n_8, n_9;
  wire n_10, n_11, n_12, n_13, n_14, n_15, n_16, n_17;
  wire n_18;
  assign hi[0] = fi[0];
  assign hi[2] = hi[3];
  assign h[0] = f[0];
  assign h[1] = f[1];
  assign h[2] = f[3];
  assign h[3] = f[3];
  assign gi[0] = 1'b0;
  assign gi[1] = 1'b0;
  assign gi[2] = 1'b0;
  assign gi[3] = 1'b0;
  assign g[0] = e[0];
  assign f[2] = f[3];
  assign ei[0] = 1'b0;
  assign ei[1] = 1'b0;
  assign ei[2] = 1'b0;
  assign ei[3] = 1'b0;
  butterfly f1(i0, i2, {A[3], UNCONNECTED, A[1], f[0]}, {f[3],
       UNCONNECTED1, f[1], UNCONNECTED0});
  butterfly_1 f2(i1, i3, {C[3], UNCONNECTED2, C[1], fi[0]}, {hi[3],
       UNCONNECTED4, hi[1], UNCONNECTED3});
  OR2X1 g415(.A (n_11), .B (n_17), .Y (g[3]));
  INVXL g416(.A (n_18), .Y (g[2]));
  ADDHXL g417(.A (n_13), .B (n_16), .CO (n_17), .S (n_18));
  AO21X1 g418(.A0 (C[3]), .A1 (A[3]), .B0 (n_15), .Y (e[3]));
  AO21X1 g419(.A0 (n_13), .A1 (n_10), .B0 (n_15), .Y (e[2]));
  AO21X1 g420(.A0 (hi[3]), .A1 (n_4), .B0 (fi[3]), .Y (fi[2]));
  OAI21XL g421(.A0 (n_9), .A1 (n_2), .B0 (n_14), .Y (g[1]));
  AOI21XL g422(.A0 (n_12), .A1 (n_7), .B0 (n_3), .Y (n_16));
  NOR2XL g423(.A (n_13), .B (n_10), .Y (n_15));
  NOR2XL g424(.A (hi[3]), .B (n_4), .Y (fi[3]));
  NAND2XL g425(.A (n_2), .B (n_9), .Y (n_14));
  XOR2X1 g426(.A (n_9), .B (n_5), .Y (e[1]));
  INVXL g427(.A (n_2), .Y (n_12));
  ADDHXL g428(.A (A[3]), .B (n_1), .CO (n_11), .S (n_13));
  OAI2BB1XL g429(.A0N (C[1]), .A1N (A[1]), .B0 (n_8), .Y (n_10));
  OAI21XL g430(.A0 (C[1]), .A1 (A[1]), .B0 (n_6), .Y (n_8));
  NOR2BXL g431(.AN (n_7), .B (n_3), .Y (n_9));
  AO21X1 g432(.A0 (f[0]), .A1 (n_0), .B0 (n_2), .Y (e[0]));
  MXI2XL g433(.A (n_0), .B (fi[0]), .S0 (hi[1]), .Y (fi[1]));
  CLKINVX1 g434(.A (n_5), .Y (n_6));
  NAND2BXL g435(.AN (A[1]), .B (C[1]), .Y (n_7));
  NAND2XL g436(.A (f[0]), .B (fi[0]), .Y (n_5));
  NOR2XL g437(.A (fi[0]), .B (hi[1]), .Y (n_4));
  NOR2BXL g438(.AN (A[1]), .B (C[1]), .Y (n_3));
  NOR2XL g439(.A (f[0]), .B (n_0), .Y (n_2));
  CLKINVX1 g440(.A (C[3]), .Y (n_1));
  CLKINVX1 g441(.A (fi[0]), .Y (n_0));
endmodule

