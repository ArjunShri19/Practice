`timescale 1ns / 1ps


module NOR_tb;
        wire w1, w2, w3;
        NOR_Gate o1(w3, w2, w1);
        Test4 t4(w3, w2, w1);
endmodule

module Test4(z, y, x);
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