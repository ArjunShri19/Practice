`timescale 1ns / 1ps


module NAND_tb;
        wire w1, w2, w3;
        NAND_Gate o1(w3, w2, w1);
        Test3 t3(w3, w2, w1);
endmodule

module Test3(z, y, x);
        input z;
        output reg y;
        output reg x;
        initial
            begin
                $monitor( $time," : x = %b, y = %b, z = %b", x,y,z);
                x = 0; y = 0;
                #10 x = 0; y = 1;
                #10 x = 1; y = 0;
                #10 x = 1; y = 1;
                #10 $finish;
            end
endmodule