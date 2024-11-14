`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 04:32:17 PM
// Design Name: 
// Module Name: MoveLEDs_SIM
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


module MoveLEDs_SIM();

    reg Dir, Shift, clk;
    wire [7:0] Q;
    
    MoveLEDs UUT(
        .Dir(Dir),
        .Shift(Shift),
        .clk(clk),
        .Q(Q)
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

clk = 1'b0;
Dir = 1'b0;
Shift = 1'b0;

Dir = 1'b0;
Shift = 1'b0;

#50
Dir = 1'b1;
Shift = 1'b0;

#50
Dir = 1'b0;
Shift = 1'b1;

#50
Dir = 1'b1;
Shift = 1'b1;


end
endmodule
