
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep 26 2019 15:22:37 IST (Sep 26 2019 09:52:37 UTC)

// Verification Directory fv/bit_adder 

module bit_adder(a, b, c, s, c1);
  input a, b, c;
  output s, c1;
  wire a, b, c;
  wire s, c1;
  ADDFX1 g2(.A (c), .B (b), .CI (a), .CO (c1), .S (s));
endmodule

