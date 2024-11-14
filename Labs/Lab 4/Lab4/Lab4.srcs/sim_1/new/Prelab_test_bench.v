`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2023 12:46:55 PM
// Design Name: 
// Module Name: Prelab_test_bench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Prelab_test_bench();

  reg clk, s, d;
  wire e;
  wire p;


  // Instantiate the msgchk module
  msgchk UUT (
    .clk(clk),
    .s(s),
    .d(d),
    .e(e),
    .p(p)
  );


   initial    // Clock process for clkin
    begin
        #20
		  clk = 1'b1;
        forever
        begin
        #20 
        clk = ~clk;
    end
end     

initial
begin
//1
 clk = 1'b1;
 s = 1'b0;
 d = 1'b0;
//2
 #40;
 s = 1'b1;
 d = 1'b1;
// 3
 #40;
 s = 1'b0;
 d = 1'b1;
 
// 4
 #40;
 s = 1'b0;
 d = 1'b0;
 // 5
 #40;
 d = 1'b0;
 s = 1'b0;
 // 6
 #40;
 s = 1'b1;
 d = 1'b1;
 // 7
 #40;
 s = 1'b0;
 d = 1'b1;
 // 8
 #40;
 s = 1'b1;
 d = 1'b1;
 // 9
 #40;
 s = 1'b1;
 d = 1'b1;
 // 10
 #40;
 s = 1'b0;
 d = 1'b0;
 // 11
 #40;
 s = 1'b1;
 d = 1'b1;
 // 12
 #40;
 s = 1'b0;
 d = 1'b0;
 // 13
 #40;
 s = 1'b1;
 d = 1'b1;
 // 14
 #40;
 s = 1'b0;
 d = 1'b1;
 // 15
 #40;
 s = 1'b0;
 d = 1'b0;
 // 16
 #40;
 s = 1'b1;
 d = 1'b0;
 // 17
 #40;
 s = 1'b0;
 d = 1'b0;
 // 18
 #40;
 s = 1'b0;
 d = 1'b1;
 // 19
 #40;
 s = 1'b0;
 d = 1'b0;
 // 20
 #40;
 s = 1'b1;
 d = 1'b0;


end
endmodule
