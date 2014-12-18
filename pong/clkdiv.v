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
    input wire rst,
    output wire clk4k,
    output wire clk5
    );
    
    reg [24:0] count;
    
    always @ (posedge clk or posedge rst)
    begin
		if (rst == 1'b1)
			count <= 24'b000000000000000000000000;
		else
			count <= count +1'b1;
	end
		
	assign clk4k = count[14];
	assign clk5 = count[23];

endmodule
