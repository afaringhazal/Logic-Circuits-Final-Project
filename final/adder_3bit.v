`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:52:02 07/22/2021 
// Design Name: 
// Module Name:    adder_3bit 
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
module adder_3bit(
A , B , C_in ,Sum ,C_out);
	input [2:0] A,B;
	input C_in;
	output [2:0] Sum;
	output C_out;	
	
	wire C1,C2;
	//C3;
	
	full_adder bit1 (Sum[0], C1, A[0], B[0],C_in);
	full_adder bit2 (Sum[1], C2, A[1], B[1],C1 );
	//fulladder bit3 (Sum[2], C3, A[2], B[2],C2 );
	full_adder bit4 (Sum[2], C_out, A[2], B[2],C2 );


endmodule

