module  opr(a,b,cout,clock);

input [3:0] a,b;
input clock;
output [3:0] cout;

reg [2:0] state;
wire [3:0] cout;
wire [3:0] Q1,Q2,Q3,Q4,Q5,Q6;
wire [3:0] z1,z2,z3,y;
reg [3:0] s;
reg m,reset,option_1,option_2,option_3;



   
     
       
always @(negedge clock) 
  begin   
      
    state <= 3'b000;
    
    case(state)
       3'b000:
          begin
          reset <=1;
          m <= 0;
          s <= 4'b1001;
          state <=3'b001;
          option_1 <= 1;
          option_2 <= 1;
          option_3 <= 1;
          
          end
      3'b001:
        begin
         
          reset <=1;
          m <= 0;
          s <= 4'h9;
          state <=3'b010;
          option_1 <= 1;
          option_2 <= 0;
          option_3 <= 1; 
         
        end
      3'b010:
        begin
          
          reset <=1;
          m <= 0;
          s <= 4'h9;
          state <=3'b011;
          option_1 <= 1;
          option_2 <= 0;
          option_3 <= 0;
         
        end
      3'b011:
        begin
          
          reset <=1;
          m <= 1;
          s <= 4'h6;
          state <=3'b100;
          option_1 <= 0;
          option_2 <= 1;
          option_3 <= 1;
          
        end
      3'b100:
        begin
          reset <=0;
          m <= 1;
          s <= 4'h9;
          state <=3'b000;
          option_1 <= 1;
          option_2 <= 1;
          option_3 <= 1;
          
        end
      default: state <= 3'b000;
      endcase
    end
    register regi_1(.Q(Q1),.D(Q6),.clock(clock),.reset(reset));
    register regi_2(.Q(Q2),.D(a),.clock(clock),.reset(reset));
    register regi_3(.Q(Q3),.D(b),.clock(clock),.reset(reset));
    register regi_4(.Q(Q4),.D(y),.clock(clock),.reset(reset));
    register regi_5(.Q(Q5),.D(4'b0010),.clock(clock),.reset(reset));
    register regi_6(.Q(Q6),.D(y),.clock(clock),.reset(reset)); 
    register regi_7(.Q(cout),.D(y),.clock(clock),.reset(reset));
    
    
    mux mux_1(.a(Q1),.b(Q2),.option(option_1),.z(z1));
    mux mux_2(.a(z3),.b(Q4),.option(option_2),.z(z2));
    mux mux_3(.a(Q3),.b(Q5),.option(option_3),.z(z3));

    
    
    ALU_2 alu(.Ain(z1),.Bin(z2),.Sin(s),.M(m),.NotCi(4'b0001),.Yout(y));
endmodule
        

