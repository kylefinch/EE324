
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:19:18 10/13/2014 
// Design Name: 
// Module Name:    PWMcontroller 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pwmSignal(
    input wire clk,
	 input wire [7:0] sw,
	 output reg pwmOut
    );
	 
	 parameter duty = 20;//390;	//duty cycle multplier
	 reg [15:0] count = 0;
	 
	 always @ (posedge clk)
	 begin
		if (count >= 1000) 	
			count = 0;
		else
			count = count +1;
			if (count <= duty*sw) //pulse high if count is less than the product of the duty cycle and the value of the switches,
				pwmOut = 1;
			else
	          	pwmOut = 0;	//after count is greater than product value from above, stay low until count == 100000
	 end
endmodule
