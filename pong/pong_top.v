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
module pong_top(
    input wire clk,
    input wire rst,
    input wire p1b,
    input wire p2b,
    input wire start,
    output [3:0] an,
    output [6:0] seg,
    output [7:0] led
    );

wire clk4k, clk5;
reg dir, win, rstBounce, startBounce, p1Bounce, p2Bounce;
reg [3:0] dig0, dig1, state, next, p1score, p2score, rstBuf, startBuf, p1bBuf, p2bBuf;
reg [7:0] lights;
reg [4:0] counter;

localparam [3:0] IDLE = 0,
					PLAY = 1,
					SHIFT = 2,
					SCORE = 3,
					FLASH = 4,
					RESET = 5;

clkdiv U1 (.clk(clk),
	.rst(rstBounce),
	.clk4k(clk4k),
	.clk5(clk5)
);

sev_seg U2 (.clock(clk4k),
	.reset(rstBounce),
	.digit1(p1score),
	.digit0(p2score),
	.s(seg),
	.an(an)
);

always @ (*)
begin
	//debounce reset
	rstBuf[3:1] <= rstBuf[2:0];
	rstBuf[0] <= rst;
	if (rstBuf[3:0] == 4'b1111)
		rstBounce <= 1'b1;
	else
		rstBounce <= 1'b0;
	//reset start
	startBuf[3:1] <= startBuf[2:0];
	startBuf[0] <= start;
	if (startBuf[3:0] == 4'b1111)
		startBounce <= 1'b1;
	else
		startBounce <= 1'b0;
	//reset p1b
	p1bBuf[3:1] <= p1bBuf[2:0];
	p1bBuf[0] <= p1b;
	if (p1bBuf[3:0] == 4'b1111)
		p1Bounce <= 1'b1;
	else
		p1Bounce <= 1'b0;
	//reset p2b
	p2bBuf[3:1] <= p2bBuf[2:0];
	p2bBuf[0] <= p2b;
	if (p2bBuf[3:0] == 4'b1111)
		p2Bounce <= 1'b1;
	else
		p2Bounce <= 1'b0;
end

/****************STATE MACHINE*****************/

always @(*)
begin
	if (rstBounce == 1'b1)
	begin
		state <= RESET;
	end
	else 
		state <= next;
end

always @ (posedge clk5)
begin
	next <= state;
		
	case(state)
	//beginning of case statement
		RESET:
		begin
			p1score <= 4'b0000;
			p2score <= 4'b0000;
			lights[7:0] <= 8'b00000000;
			next <= IDLE;
		end
		IDLE:
		begin
			if (start == 1'b1)	//sit in idle until start pressed
			begin
				next <= PLAY;
				lights[7:0] <= 8'b00001000;
				dir <= clk5;
			end
		end
		PLAY:
		begin
			if(p1Bounce == 1'b1 && lights[6] == 1'b1) //person 1 hit button ab1t the right time
			begin
				next <= SHIFT;
				dir <= 1'b0;	//lights go right
			end
			else if (p2Bounce == 1'b1 && lights[0] == 1'b1)	//person 2 hits button at right time
			begin
				next <= SHIFT;
				dir <= 1'b1;		//lights go left
			end
			else if (p1Bounce == 1'b1 || lights[6] == 1'b1)	//person 1 hits button at wrong time or misses
			begin
				next <= SCORE;
				p2score <= p2score + 1'b1;
			end
			else if (p2Bounce == 1'b1 || lights[0] == 1'b1)	//person 12 hits button at wrong time or misses
			begin
				next <= SCORE;
				p1score <= p1score + 1'b1;
			end
			else				//volley
				next <= SHIFT;
		end
		SHIFT:
		begin
		next <= PLAY;
			if (dir == 1'b1)	//shift left
			begin
				lights[7:1] <= lights[6:0];
				lights[0] <= 1'b0;
			end
			else //dir == 1'b0		shift right
				lights[6:0] <= lights[7:1];
				lights[7] <= 1'b0;
		end
		SCORE:
		begin
			if ((p1score == 3'd5) || (p2score == 3'd5))
			begin
				win <= 1'b1;
				next <= FLASH;
			end
			else
			begin
				win <= 1'b0;
				next <= IDLE;
			end
		end
		FLASH:
		begin
			if (lights[7:0] == 8'b11111111)
			begin
				counter <= counter + 1'b1;
				lights[7:0] <= 8'b00000000;
			end
			else if (lights[7:0] == 8'b00000000)
			begin
				counter <= counter +1'b1;
				lights[7:0] <= 8'b11111111;
			end
			else
			begin
				lights[7:0] <= 8'b11111111;
				counter <= counter + 1'b1;
			end
			
			if(counter == 4'd10)
			begin
				counter <= 4'd0;
				p1score <= 4'b0000;
				p2score <= 4'b0000;
				lights[7:0] <= 8'b00000000;
				next <= IDLE;
			end
		end
	endcase
end

assign led[7:0] = lights[7:0];

endmodule
