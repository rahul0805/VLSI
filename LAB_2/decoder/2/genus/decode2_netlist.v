
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep 10 2019 12:46:30 IST (Sep 10 2019 07:16:30 UTC)

// Verification Directory fv/two_code 

module two_code(v, s, a, b);
  input v, s;
  output a, b;
  wire v, s;
  wire a, b;
  NOR2BXL g17(.AN (v), .B (s), .Y (a));
  AND2XL g18(.A (s), .B (v), .Y (b));
endmodule

