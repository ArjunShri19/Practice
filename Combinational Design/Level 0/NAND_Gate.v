`timescale 1ns / 1ps

module NAND_Gate(c,a,b);
       input a,b;
       output c;
       
       nand nd1(c,a,b);      
endmodule
