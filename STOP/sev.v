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
module sev_seg_display(
    input clock,
    input reset,
    input [3:0] digit3,
    input [3:0] digit2,
    input [3:0] digit1,
    input [3:0] digit0,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output dp,
    output [3:0] an
    );
 
 
localparam N = 18;
 
reg [N-1:0]count; //1kHz
 
always @ (posedge clock or posedge reset)	//clock value
 begin
  if (reset)
   count <= 0;
  else
   count <= count + 1;
 end
 
reg [3:0]seg; //temp data for number to be outputted
reg [3:0]tempAnode; //temp anode value
reg dec;	//temp decimal value

always @ (*)
 begin
  case(count[N-1:N-2])
    
   2'b00 :	//digit 0 and anode 0 and no decimal
    begin
     seg = digit0;
     tempAnode = 4'b1110;
     dec = 1'b1;
    end
    
   2'b01:	//digit 1 and anode 1 and no decimal
    begin
     seg = digit1;
     tempAnode = 4'b1101;
     dec = 1'b1;
    end
    
   2'b10:	//digit 2 and anode 2 and no decimal
    begin
     seg = digit2;
     tempAnode = 4'b1011;
     dec = 1'b1;
    end
     
   2'b11:	//digit 3 and anode 3 and decimal
    begin
     seg = digit3;
     tempAnode = 4'b0111;
     dec = 1'b0;
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
assign {g, f, e, d, c, b, a} = temp;
assign dp = dec;
 
endmodule

