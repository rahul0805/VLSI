
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep  5 2019 04:28:57 IST (Sep  4 2019 22:58:57 UTC)

// Verification Directory fv/XNOR 

module XNOR(a, b, c);
  input a, b;
  output c;
  wire a, b;
  wire c;
  wire n_0;
  OAI21XL g18(.A0 (a), .A1 (b), .B0 (n_0), .Y (c));
  NAND2XL g19(.A (b), .B (a), .Y (n_0));
endmodule


