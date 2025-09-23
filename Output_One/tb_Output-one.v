`timescale 1ns/1ps

module tb_top_module;

    wire one;

    top_module dut (
        .one(one)
    );

    initial begin
        $monitor("Time=%0t | one=%b", $time, one);
        #10; 
        $finish;
    end

endmodule
