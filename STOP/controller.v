`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kyle Vandelac
// 
// Create Date:    10/22/14
// Design Name: 
// Module Name:     
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
module stopwatch_top(
	input clock, 
   input reset,
   input start,
   input stop,
	input inc,
	output [3:0] ld,
   output [3:0] an,
   output a, b, c, d, e, f, g, dp
   );
  
	reg [3:0] d3, d2, d1, d0;	//output registers for selected digits
   reg [3:0] led;	
	wire startTemp, stopTemp, incTemp;
	reg startTemp2, startTemp3, stopTemp2, stopTemp3, incTemp2, incTemp3;
  
	//debounce start for two clocks
	always @ (posedge clock) startTemp2 <= start;
	always @ (posedge clock) startTemp3 <= startTemp2;
	assign startTemp = ~startTemp2 & startTemp3; 
	//debounce stop for two clocks
	always @ (posedge clock) stopTemp2 <= stop;
	always @ (posedge clock) stopTemp3 <= stopTemp2;
	assign stopTemp = ~stopTemp2 & stopTemp3; 
	//debounce inc for two clocks
	always @ (posedge clock) incTemp2 <= inc;
	always @ (posedge clock) incTemp3 <= incTemp2;
	assign incTemp = ~incTemp2 & incTemp3;
 
 
sev_seg_display sSegDisplay (
    .clock(clock),
    .reset(reset),
    .digit3(d3),
    .digit2(d2),
    .digit1(d1),
    .digit0(d0),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g),
    .dp(dp),
    .an(an)
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
 
	always @ (posedge clock or posedge reset)
	begin
		if(reset)	//on reset enter idle state and reset count
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
			if(startTemp)	//if start button pressed
			begin
				next = timeStart; //start timer
			end
			if(incTemp)	//if start button pressed
			begin
				next = incrementing; //increment by 1
			end
		end

		incrementing:			//increment stopwatch by 1 ms
		begin
			if(incTemp)
			begin
				selNext = 2'b11; 
				next = done;
			end
		end
		
		timeStart:
		begin
			selNext = 2'b01; //start the timer
			next = done;    
		end
     
		done:		//stop button has been clicked
		begin
			if(stopTemp)
			begin
				selNext = 2'b10; 
			end
			else if (startTemp)
			begin
				selNext = 2'b01;
			end
		end
    
	endcase
   
	
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
			d0 = 4'd12;
			d1 = 4'd12;
			d2 = 4'd12;
			d3 = 4'd12;
			startTimer = 1'b0;
		end
	endcase  
	end
 
 
	
	reg [18:0] ticker; //000MHz
	wire click;
 
	always @ (posedge clock or posedge reset)
	begin
		if(reset)
			ticker <= 0;
 		else if(ticker == 100000)
			ticker <= 0;
		else if(startTimer)
			ticker <= ticker + 1;
	end
 
	assign click = ((ticker == 100000) ? 1'b1 : 1'b0); //clicks every millisecond
	//4 bit decimal counter
	always @ (posedge clock or posedge reset)
	begin
		if (reset)
		begin
			count0 <= 0;
			count1 <= 0;
			count2 <= 0;
			count3 <= 0;
		end
		
		else if (incTemp) //increment at every click
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
							led <= led + 1;
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
							led <= led + 1;	//over
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
	
	assign ld = led;	
 
endmodule


