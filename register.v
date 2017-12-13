module register(Q,D,clock,reset);

input reset,clock;
input [3:0] D;
output [3:0] Q;

reg [3:0] Q;

always @(negedge clock)
  begin
    if(!reset)
      Q <= 4'b0;
    else
      Q <= D;
  end
endmodule