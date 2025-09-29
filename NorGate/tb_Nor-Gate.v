module tb_norgate;

    reg tb_a;
    reg tb_b;
    wire tb_out;

    norgate DUT (
        .a (tb_a), .b (tb_b), .out (tb_out)
    );

    initial begin
        tb_a = 0;
        forever begin
            #20 tb_a = ~ tb_a;
        end
    end

    initial begin
        tb_b = 0;
        forever begin
            #10 tb_b = ~ tb_b;
        end
    end

initial begin
    #600
    $finish;
end

initial begin
    $monitor ("Time=%0t | a = %b | b = %b | out = %b", $time, tb_a, tb_b, tb_out);
end

endmodule