module tb_fourwires;
    //Signal of testbench
    reg tb_in1 ;
    reg tb_in2 ;
    reg tb_in3 ;
    
    wire tb_out1 ;
    wire tb_out2 ;
    wire tb_out3 ;
    wire tb_out4 ;

    //DUT instantion
    fourwires DUT (
        .a (tb_in1), .b (tb_in2), .c (tb_in3),

        .w (tb_out1), .x (tb_out2), .y (tb_out3), .z (tb_out4)
    );

    //Test pattern
    initial begin
        tb_in1 = 0; tb_in2 = 0; tb_in3 = 0; #10;
        tb_in1 = 1; tb_in2 = 0; tb_in3 = 0; #10;
        tb_in1 = 0; tb_in2 = 1; tb_in3 = 0; #10;
        tb_in1 = 1; tb_in2 = 1; tb_in3 = 0; #10;
        tb_in1 = 0; tb_in2 = 0; tb_in3 = 1; #10;
        tb_in1 = 1; tb_in2 = 0; tb_in3 = 1; #10;
        tb_in1 = 0; tb_in2 = 1; tb_in3 = 1; #10;
        tb_in1 = 1; tb_in2 = 1; tb_in3 = 1; #10;
        $finish;
    end

//signal of monitor
initial begin
        $monitor("T=%0t | a=%b b=%b c=%b | w=%b x=%b y=%b z=%b",
            $time, tb_in1, tb_in2, tb_in3, tb_out1, tb_out2, tb_out3, tb_out4);
end


endmodule