module tb_logicsystem;
    reg a, b, c, d;
    wire out, out_n;
    integer i;

    logicsystem DUT (
        .a(a), .b(b), .c(c), .d(d),
        .out(out), .out_n(out_n)
    );

    initial begin
        $monitor("Time=%0t | a=%b | b=%b | c=%b | d=%b | out=%b | out_n=%b", $time, a, b, c, d, out, out_n);

        for (i = 0; i < 16; i = i + 1) begin
            {d, c, b, a} = i;
            #10;
        end

        $finish;
    end

endmodule