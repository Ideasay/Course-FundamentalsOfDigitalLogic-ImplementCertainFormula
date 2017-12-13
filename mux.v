module mux(a,b,option,z);

input [3:0] a,b;
input option;
output [3:0] z;

reg [3:0] z;

always @( a or b or option)
  begin
    if(!option)
      z <= a;
    else
      z <= b;
  end

endmodule





