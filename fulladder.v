`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2023 11:17:07
// Design Name: 
// Module Name: fulladder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fulladder(s,c,x,y,z);
output s,c;
input x,y,z;
wire s1,c1,c2;
half_adder h1(s1,c1,x,y);
half_adder h2(s,c2,s1,z);
or o1(c,c2,c1);
endmodule


module half_adder(s,c,x,y);
output s,c;
input x,y;
assign s=x^^y;
assign c=x&&y;
endmodule
