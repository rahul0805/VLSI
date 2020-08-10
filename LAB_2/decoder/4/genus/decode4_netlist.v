
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep 10 2019 12:45:27 IST (Sep 10 2019 07:15:27 UTC)

// Verification Directory fv/four_code 

module two_code(v, s, a, b);
  input v, s;
  output a, b;
  wire v, s;
  wire a, b;
  NOR2BXL g17(.AN (v), .B (s), .Y (a));
  AND2X1 g18(.A (s), .B (v), .Y (b));
endmodule

module two_code_1(v, s, a, b);
  input v, s;
  output a, b;
  wire v, s;
  wire a, b;
  NOR2BXL g17(.AN (v), .B (s), .Y (a));
  AND2XL g18(.A (s), .B (v), .Y (b));
endmodule

module two_code_2(v, s, a, b);
  input v, s;
  output a, b;
  wire v, s;
  wire a, b;
  NOR2BXL g17(.AN (v), .B (s), .Y (a));
  AND2XL g18(.A (s), .B (v), .Y (b));
endmodule

module four_code(v, s1, s2, a, b, c, d);
  input v, s1, s2;
  output a, b, c, d;
  wire v, s1, s2;
  wire a, b, c, d;
  wire a1, a2;
  two_code g1(v, s2, a1, a2);
  two_code_1 g2(a1, s1, a, b);
  two_code_2 g3(a2, s1, c, d);
endmodule

