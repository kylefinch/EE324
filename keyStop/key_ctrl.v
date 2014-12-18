`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:27 10/08/2014 
// Design Name: 
// Module Name:    key_ctrl 
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
module key_ctrl(
    input wire clk25,
    input wire clr,
    input wire kbClk,
    input wire kbData,
    output reg [7:0] val1,
    output reg [7:0] val2
		);
	 
	 reg kbClkF, kbDataF;
	 reg [3:0] kbClk_filter, kbData_filter;
	 reg [10:0] sh1, sh2, sh3;
	 reg [3:0] bCount;
	 reg [4:0] state;
	 reg [7:0]  val3;
	 
	 parameter 	start = 	4'b0000,		//states 
					clk1Lo = 4'b0001,
					clk1Hi = 4'b0010,
					clk2Lo = 4'b0100,
					clk2Hi = 4'b0101,
					clk3Lo = 4'b1000,
					clk3Hi = 4'b1001,
					getK1  = 4'b0011,
					getK2  = 4'b0110,
					getK3  = 4'b1010,
					upKey  = 4'b0111,
					bitMax = 4'b1011;
	 //filter clk and data
	 always @(posedge clk25 or posedge clr)
		begin 
			if(clr == 1)
				begin
					kbClk_filter <= 1;
					kbData_filter <= 1;
					kbClkF <= 1;
					kbDataF <= 1;
				end
			else
				begin
					kbClk_filter[3] <= kbClk;	//shifts in clk data
					kbClk_filter[2:0] <= kbClk_filter[3:1];
					kbData_filter[3] <= kbData;// shifts in data data
					kbData_filter[2:0] <= kbData_filter[3:1];
					if(kbClk_filter == 4'b1111)	//if clk has been a 1 for 8 clk counts then filtered clk val = 1
						kbClkF <= 1;
					else
						if(kbClk_filter == 4'b0000)
							kbClkF <= 0;
					if(kbData_filter == 4'b1111) //if data has been a 1 for 8 clk counts then filtered data val = 1
						kbDataF <= 1;
					else
						if(kbData_filter == 4'b0000)
							kbDataF <= 0;
		end
	end
//reading the key board
always @(posedge clk25 or posedge clr)
	begin
		if(clr == 1)	//reset 
			begin
				state <= start;
				bCount <= 0;
				sh1 <= 0;
				sh2 <= 0;
				sh3 <= 0;
				val1 <= 0;
				val2 <= 0;
				val3 <= 0;
			end
		else
			case(state)
				start:
					if (kbDataF == 1)//(kbData == 1)
						state <= start;
					else
						state <= clk1Lo;
				clk1Lo: 
					if (bCount < bitMax)
						if (kbClkF == 1)	//stay until clock goes low
							state <= clk1Lo;
						else
							begin
								state <= clk1Hi;
								sh1 <= {kbDataF, sh1[10:1]};	//shift filtered data right onto shift1 string
							end
					else
						state <= getK1;
				clk1Hi:
					if (kbClkF == 0)	//wait for clk low
						state <= clk1Hi;
					else
						begin
							state <= clk1Lo;
							bCount <= bCount + 1;
						end
				getK1:
					begin
						val1 <= sh1[8:1];	//we have shifted in 8 bits and this is our key
						state <= clk2Lo;	//go to next code 
						bCount <= 0;
					end
				clk2Lo:
					if (bCount < bitMax)
						if (kbClkF == 1)	//stay until clk goes low
							state <= clk2Lo;
						else
							begin
								state <= clk2Hi;
								sh2 <= {kbDataF, sh2[10:1]};	//shift filtered data right onto shift2 string
							end
					else
						state <= getK2;
				clk2Hi:
					if (kbClkF == 0)	//wait for clk to go low
						state <= clk2Hi;
					else
						begin
							state <= clk2Lo;
							bCount <= bCount + 1;
						end
				getK2:
					begin
						val2 <= sh2[8:1];	//we have shifted in 8 bits and this is our key2
						state <= upKey;	//check for upkey
						bCount <= 0;
					end
				upKey:
					if (val2 == 8'hF0)	//key released
						state <= clk3Lo;	//go to keyup code
					else
						if(val1 == 8'hE0)
							state <= clk1Lo;
						else
							state <= clk2Lo;
				clk3Lo:
					if (bCount < bitMax)
						if (kbClkF == 1)	//wait for clk to go low
							state <= clk3Lo;
						else
							begin
								state <= clk3Hi;
								sh3 <= {kbDataF, sh3[10:1]};	//shift filtered data right onto shift3 string
							end 
					else
						state <= getK3;
				clk3Hi:
					if ( kbClkF == 0)	 //wait for clk low
						state <= clk3Hi;
					else
						begin 
							state <= clk3Lo;
							bCount <= bCount + 1;
						end
				getK3:
					begin
						val3 <= sh3[8:1];	//we have shifted 8 bits this is our key3
						state <= clk1Lo;	//start over
						bCount <= 0;
					end
				default ;
			endcase
		end
endmodule
