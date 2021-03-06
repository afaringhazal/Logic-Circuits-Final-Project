`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:11:57 07/22/2021 
// Design Name: 
// Module Name:    Heading 
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
module Heading(
   input        request ,
	input        clk ,
	input        confirm ,
	input  [7:0] inputData ,
	input  [2:0]din,
	output [6:0] dataP ,
	output [6:0] dataQ,
	output [2:0]state
    );
	 wire [6:0]  dout;
  ContolUnit a(request, clk, confirm, din,inputData, en_left, en_right, dout,state);
	register c(request, clk, en_left, dout, dataP);
	register f(request, clk, en_right, dout, dataQ);

endmodule
