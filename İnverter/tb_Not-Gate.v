`timescale 1ns/1ps

module tb_notgate;
    reg     tb_in;
    wire    tb_out;

    notgate dut (
        .in(tb_in),
        .out(tb_out)
    );

    initial begin
        tb_in = 0;
        
        repeat (13) begin
            #10 tb_in = ~ tb_in;
        end
        $finish;
    end

    initial begin
        $monitor("Time=%0t | tb_in=%b | tb_out=%b", $time, tb_in, tb_out);
    end

endmodule