`timescale 1ns / 1ps

module NOR_Gate(c,a,b);
       input a,b;
       output c;
       
       nor n1(c,a,b);      
endmodule
