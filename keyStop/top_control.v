`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:39:20 12/04/2014 
// Design Name: 
// Module Name:    top_control 
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
module top_control(
    input kbClk,
    input kbData,
    input clk,
    input clr,
    output [7:0] seg,
    output [3:0] anode,
    output dec
    );

wire [7:0] key,key2;
reg [7:0] last;
wire keyClk;
reg [3:0] d3, d2, d1, d0;
reg incFlag;


clkdiv U1 (.clk(clk),
		.clr(clr),
		.clk25(keyClk)
		);

key_ctrl U2 (.clk25(keyClk),
		.clr(clr),
		.kbClk(kbClk),
		.kbData(kbData),
		.val1(key),
		.val2(key2)
	 );
	 
sev_seg U3 (.clock(clk),
		.reset(key),
		.digit0(d0),
		.digit1(d1),
		.digit2(d2),
		.digit3(d3),
		.s(seg),
		.dp(dec),
		.an(anode)
		);
		
	reg [3:0] count0, count1, count2, count3; //registers for individual counts
	reg [1:0] sel, selNext;
	//states
	localparam [1:0] idle = 2'b00;			
	localparam [1:0] incrementing = 2'b01;	
   localparam [1:0] timeStart = 2'b10;		
   localparam [1:0] done = 2'b11;	
       
	reg [1:0] current, next;
	reg [28:0] currentCount, nextCount;
 
	always @ (posedge clk)
	begin
		
		if(key == 8'h1D)	//on reset enter idle state and reset count
		begin
			current <= idle;
			currentCount <= 0;
			sel <=0;
		end		
		else	//update to next state and next count
		begin
			current <= next;
			currentCount <= nextCount;
			sel <= selNext;
		end
		
	end
 
	reg startTimer;
	
	always @ (*)
	begin
		next = current; 
		nextCount = currentCount;
		selNext = sel;
	case(current)
		idle:
		begin
		selNext = 2'b00;		//start in default state
			if(key == 8'h1C)	//if start button pressed
			begin
				next = timeStart; //start timer
			end
			if(key == 8'h23 && key2 == 8'hF0)	//if inc button pressed
			begin
				selNext = 2'b11;
				next = incrementing; //increment by 1
			end
		end

		incrementing:			//increment stopwatch by 1 ms
		begin
				selNext = 2'b11; 
				next = done;
		end
		
		timeStart:
		begin
			selNext = 2'b01; //start the timer
			next = done;    
		end
     
		done:		//stop button has been clicked
		begin
			if(key == 8'h1B)
			begin
				selNext = 2'b10; 
			end
			else if (key == 8'h1C)
			begin
				selNext = 2'b01;
			end
		end
    
	endcase
    end
	
	reg [18:0] ticker; //000MHz
	wire click;
 
	always @ (posedge clk)
	begin
		if(key == 8'h1D)
			ticker <= 0;
 		else if(ticker == 100000)
			ticker <= 0;
		else if(startTimer)
			ticker <= ticker + 1;
	end
 
	assign click = ((ticker == 100000) ? 1'b1 : 1'b0); //clicks every millisecond
	//4 bit decimal counter
	always @ (posedge clk)
	begin
		if (key == 8'h1D)
		begin
			count0 <= 0;
			count1 <= 0;
			count2 <= 0;
			count3 <= 0;
		end
		
		else if (key == 8'h23 && key2 == 8'hF0) //increment at every click
		begin
			if(count0 == 9)
			begin //carry over to count1
				count0 <= 0;
			  
				if (count1 == 9)
				begin //carry over to count2
					count1 <= 0;
					if (count2 == 9)
					begin //carry over to count3
						count2 <= 0;
						
						if(count3 == 9 && count2 == 9 && d1 == 9 && d0 == 9)
						begin
							count3 <= 0;
						end
						else	//count3++
							count3 <= count3 + 1;
					end
					else //count2++
						count2 <= count2 + 1;
				end
     
				else //count1++
					count1 <= count1 + 1;
			end
    
			else //count00++
				count0 <= count0 + 1;
		end
   
		else if (click) //increment at every click
		begin
			if(count0 == 9)
			begin //carry over to count1
				count0 <= 0;
			  
				if (count1 == 9)
				begin //carry over to count2
					count1 <= 0;
					if (count2 == 9)
					begin //carry over to count3
						count2 <= 0;
						
						if(count3 == 9 && count2 == 9 && d1 == 9 && d0 == 9)
						begin
							count3 <= 0;
						end
						else	//count3++
							count3 <= count3 + 1;
					end
					else //count2++
						count2 <= count2 + 1;
				end
     
				else //count1++
					count1 <= count1 + 1;
			end
    
			else //count0++
				count0 <= count0 + 1;
		end
	end
	
	always@ (*)
	begin
	//determine digit data
	case(selNext) 
		2'b00:
		begin
			startTimer = 0; //initialize
			d0 = 4'd0;	
			d1 = 4'd0;
			d2 = 4'd0;
			d3 = 4'd0;
		end
   
		2'b01: //timer
		begin
    
			startTimer = 1'b1; //start timer with start signal
			d0 = count0;
			d1 = count1;
			d2 = count2;
			d3 = count3;
		end
   
		2'b10: //stop timer
		begin
			startTimer = 1'b0;
			d0 = count0;
			d1 = count1;
			d2 = count2;
			d3 = count3;
		end
   
		2'b11: 	//state for increment
		begin
			startTimer = 1'b0;
			d0 = count0;
			d1 = count1;
			d2 = count2;
			d3 = count3;
		end
   
		default:
		begin
			d0 = 4'd0;
			d1 = 4'd0;
			d2 = 4'd0;
			d3 = 4'd0;
			startTimer = 1'b0;
		end
	endcase  
	last <= key;
	end
endmodule
