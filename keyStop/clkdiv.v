`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    clkdiv 
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
module clkdiv(
    input wire clk,
    input wire clr,
    output wire clk25
    );
	 
	 reg [24:0] count;
	 
	 always @(posedge clk or posedge clr)
		begin
			if(clr == 1)
				count <= 0;
			else
				count <= count + 1;
		end
		
	//assign clk190 = count[10];
	assign clk25 = count[0];


endmodule
