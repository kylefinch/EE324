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
module PWMcontroller(
    input wire clk,
	 input wire [7:0] sw,
	 output wire pwm_out//led or  JA1-1
    );
	 
pwmSignal U1 ( .clk(clk),
	.sw(sw),
	.pwmOut(pwm_out)
);
	 


endmodule
