module ALU_2(
  input wire [3:0] Ain,
  input wire [3:0] Bin,
  input wire [3:0] Sin,
  input M, NotCi,
  
  output wire [3:0] Yout, 
  output P, Q, NotC0, AequalsB
  );
  
  wire  A0, A1, A2, A3;
  wire  B0, B1, B2, B3;
  wire  C0, C1, C2, C3;
  wire  S0, S1, S2, S3;
  wire  Y0, Y1, Y2, Y3;
  
  
  wire x1, x2, x3, x4, x5, x6, x7, x8;
  wire z1, z2, z3, z4, z5, z6, z7;
  
  assign A0 = Ain[0];
  assign A1 = Ain[1];
  assign A2 = Ain[2];
  assign A3 = Ain[3];
  
  assign B0 = Bin[0];
  assign B1 = Bin[1];
  assign B2 = Bin[2];
  assign B3 = Bin[3];
  
  assign S0 = Sin[0];
  assign S1 = Sin[1];
  assign S2 = Sin[2];
  assign S3 = Sin[3];
  
  assign x1 = ~((B3 & S3 & A3) | (~B3 & S2 & A3));
  assign x2 = ~((~B3 & S1) | (S0 & B3) | A3);
  
  assign x3 = ~((B2 & S3 & A2) | (~B2 & S2 & A2));
  assign x4 = ~((~B2 & S1) | (S0 & B2) | A2);
  
  assign x5 = ~((B1 & S3 & A1) | (~B1 & S2 & A1));
  assign x6 = ~((~B1 & S1) | (S0 & B1) | A1);
  
  assign x7 = ~((B0 & S3 & A0) | (~B0 & S2 & A0));
  assign x8 = ~((~B0 & S1) | (S0 & B0) | A0);
  
  assign z1 = ~(x1 & x3 & x5 & x7);
  assign z2 = ~(x2 | (x4 & x1) | (x6 & x1 & x3) | (x8 & x1 & x3 & x5));
  assign z3 = ~(x1 & x3 & x5 & x7);
  assign z4 = ((~x2)& x1)^(~((x3 & x5 & x7 & NotCi &(~M)) | (x4 & (~M)) | (x3 & x6 & (~M)) | (x3 & x5 & x8 & (~M))));
  assign z5 = (x3 & (~x4))^(~((x5 & x7 & NotCi & (~M)) | (x6 & (~M)) | (x5 & x8 & (~M))));
  assign z6 = (x5 & (~x6))^(~((x7 & NotCi & (~M)) | (x8 & (~M))));
  assign z7 = (x7 & (~x8))^(~(NotCi & (~M)));
  
  assign NotC0 = (~z2)|(~z3);
  assign AequalsB = z4 & z5 & z6 & z7;
  
  assign P = z1;
  assign Q = z2;
  assign Y3 = z4;
  assign Y2 = z5;
  assign Y1 = z6;
  assign Y0 = z7;
  assign Yout[0] = Y0;
  assign Yout[1] = Y1;
  assign Yout[2] = Y2;
  assign Yout[3] = Y3;
  
endmodule


