`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2025 06:58:27 AM
// Design Name: 
// Module Name: Multiseg_Driver_tb
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


module Multiseg_Driver_tb;
    reg clk;
    reg [15:0] bcd_in;
    
    wire a,b,c,d,e,f,g;
    wire [3:0] seg_anode;
    
    MultiSeg_Driver uut(
        .clk(clk),
        .bcd_in(bcd_in),
        .a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),
        .seg_anode(seg_anode)
    );
    
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        
        //Ex 1: 67?
        //bcd_in = 16'h0067;
        //#300000;
        
        //Ex 2: 420
        //bcd_in = 16'h0420;
        //#300000;
       
        //Ex 3: 9350
        bcd_in = 16'h9350;
        #300000;
        
        
        $finish;
    end
endmodule
