`timescale 1ns / 1ps


module NOT_tb;
        wire w1, w3;
        NOT_Gate o1(w3, w1);
        Test7 t7(w3, w1);
endmodule

module Test7(z, x);
        input z;
        output reg x;
        initial
            begin
                $monitor( $time," : x = %b, z = %b", x,z);
                x = 0;
                #10 x = 1;
                #10 $finish;
            end
endmodule