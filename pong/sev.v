`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: WSU EECS EE324
// Engineer:
// 
// Create Date:    
// Design Name: 
// Module Name:    sevSegDisplay 
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
module sev_seg(
    input clock,
    input reset,
    input [3:0] digit1,
    input [3:0] digit0,
    output [7:0] s,
    output [3:0] an
    );
 
 wire select;
 assign select = clock;
 
reg [3:0]seg; //temp data for number to be outputted
reg [3:0]tempAnode; //temp anode value

always @ (*)
 begin
  case(select)
    
   1'b0 :	//digit 0 and anode 0 and no decimal
    begin
     seg = digit0;
     tempAnode = 4'b1110;
    end
    
   1'b1:	//digit 1 and anode 1 and no decimal
    begin
     seg = digit1;
     tempAnode = 4'b0111;
    end
  endcase
 end
 
assign an = tempAnode;	//output selected anode
 
 //decode the selected data number into a decimal for display
reg [6:0] temp;
always @ (*)
 begin
  case(seg)
   4'd0 : temp = 7'b1000000; //display 0
   4'd1 : temp = 7'b1111001; //display 1
   4'd2 : temp = 7'b0100100; //display 2
   4'd3 : temp = 7'b0110000; //display 3
   4'd4 : temp = 7'b0011001; //display 4
   4'd5 : temp = 7'b0010010; //display 5
   4'd6 : temp = 7'b0000010; //display 6
   4'd7 : temp = 7'b1111000; //display 7
   4'd8 : temp = 7'b0000000; //display 8
   4'd9 : temp = 7'b0010000; //display 9
   default : temp = 7'b0111111; 
  endcase
 end
 
//output display values
assign s = temp;
 
endmodule

