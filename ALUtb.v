module Alutb; 
reg [3:0] A;
reg [3:0] B;
reg [1:0] OP; 
wire [3:0]Result;
Alu u1(.A(A),.B(B),.OP(OP),.Result(Result));


initial begin 
     $dumpfile("alu.vcd");
     $dumpvars(0,Alutb);
end

initial begin

 $display("Result equals"); 
 A = 4'b0001; 
 B = 4'b0111; 
 OP = 2'b01;
#1
$display("A=%b B=%b OP=%b Result=%b time=%0t", A, B, OP, Result, $time);
#1;
$finish;
end 

endmodule
