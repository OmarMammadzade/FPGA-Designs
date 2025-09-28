module tb_andgate;

    reg tb_in1;
    reg tb_in2;
    wire tb_out;

    andgate DUT (
        .a (tb_in1), .b (tb_in2), .out (tb_out)
    );
    
    initial begin
        tb_in1 = 0;
        forever begin
            #20 tb_in1 = ~ tb_in1;
        end
    end

    initial begin
        tb_in2 = 0;
        forever begin
            #10 tb_in2 = ~ tb_in2;
        end
    end

initial begin
    #600 
    $finish;
end

initial begin
    $monitor ("Time = %0t | a = %b, b = %b | out = %b", $time, tb_in1, tb_in2, tb_out);
end
endmodule