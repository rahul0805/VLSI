
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep 26 2019 17:58:32 IST (Sep 26 2019 12:28:32 UTC)

// Verification Directory fv/four_lac 

module four_lac(a, b, ci, s, c1);
  input [3:0] a, b;
  input ci;
  output [3:0] s;
  output c1;
  wire [3:0] a, b;
  wire ci;
  wire [3:0] s;
  wire c1;
  wire n_0, n_1, n_2, n_5, n_6, n_8, n_9;
  MXI2XL g353(.A (n_1), .B (n_8), .S0 (n_9), .Y (s[3]));
  OAI21XL g352(.A0 (n_9), .A1 (n_8), .B0 (n_0), .Y (c1));
  AOI22XL g354(.A0 (n_5), .A1 (n_6), .B0 (a[2]), .B1 (b[2]), .Y (n_9));
  CLKXOR2X1 g355(.A (n_6), .B (n_5), .Y (s[2]));
  ADDFX1 g356(.A (b[1]), .B (a[1]), .CI (n_2), .CO (n_5), .S (s[1]));
  ADDFX1 g357(.A (b[0]), .B (a[0]), .CI (ci), .CO (n_2), .S (s[0]));
  INVXL g358(.A (n_1), .Y (n_8));
  CLKXOR2X1 g360(.A (b[2]), .B (a[2]), .Y (n_6));
  CLKXOR2X1 g359(.A (b[3]), .B (a[3]), .Y (n_1));
  NAND2XL g361(.A (b[3]), .B (a[3]), .Y (n_0));
endmodule

