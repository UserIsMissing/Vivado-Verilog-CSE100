`timescale 1ns/1ps
// Verilog code to test UTC and DTC of your 15 bit counter
// Fall 2023



module MYtestTC();
  reg clkin, btnU, btnD, LD;
//  reg Inc;
  reg [3:0] Din;
  
  
  wire [3:0] Q;
  wire UTC, DTC;
  
  countUD4L // replace with your top level module's name
   UUT (
      .clkin(clkin),
      .btnU(btnU),
      .btnD(btnD),
      .LD(LD),
//      .Inc(Inc),
      .Din(Din),
      
      .Q(Q),
      .UTC(UTC),
      .DTC(DTC)
      );   

    
// create an oscillating signal to impersonate the clock provided on the BASYS 3 board
    parameter PERIOD = 10;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 2;

    initial    // Clock process for clkin
    begin
        #OFFSET
		  clkin = 1'b1;
        forever
        begin
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clkin = ~clkin;
        end
    end

    initial    // Clock process for clkin
    begin
        #OFFSET
		  clkin = 1'b1;
        forever
        begin
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clkin = ~clkin;
        end
    end
	
// here is where the values for the registers are provided
// time must be advanced so that the change will have an effect
   initial
   begin

    LD = 1'b0;
    btnU = 1'b1;
    btnD = 1'b0;
    Din = 4'b0000;
    
    #1000;
    LD = 1'b0;
    btnU = 1'b0;
    btnD = 1'b1;
    Din = 4'b1111;
    
    #1000;
   
	 // add your test vectors here
	 // to set signal foo to value 0 use
	 // foo = 1'b0;
	 // to set signal foo to value 1 use
	 // foo = 1'b1;
	 //always advance time by multiples of 500ns
	 
//	 btnR=1'b0;
//	 btnU=1'b0;
//	 sw = 16'h0017;
	 
	 // to advance time by 500ns use the following line
	 #500;
//	 btnU=1'b1;
	 
     #500;
//     btnU=1'b0;
//	 sw = 16'h00A0;
	 
	 #500;
//	 btnU=1'b1;
	 
     #500;

// you will need to add more .... perhaps the values from Q4 in the prelab?
          
    end

endmodule