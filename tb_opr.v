`timescale 1ns/1ps

module tb_opr;

reg [3:0] a,b;
wire [3:0] cout;
reg clock;

opr uut(.a(a),.b(b),.cout(cout),.clock(clock));

initial
  begin 
    clock = 0;
    a <= {$random}%16;
    b <= {$random}%16;
  end

always #10 clock = ~clock;
always #100 a <= {$random}%16;
always #100 b <= {$random}%16;
 
endmodule
