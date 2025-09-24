module tb_SimpleWire;

  // Testbench siqnalları
  reg tb_in;      // giriş, dəyişdiriləcək
  wire tb_out;    // çıxış, DUT-dan gələcək

  // DUT instantiation
  SimpleWire dut (
    .in(tb_in),    // testbench girişini DUT girişinə qoşuruq
    .out(tb_out)   // DUT çıxışını testbench çıxışına qoşuruq
  );

  // Test pattern
  initial begin
    tb_in = 0;     // başlanğıc dəyər
    #10 tb_in = 1; // 10 zaman vahdi sonra 1
    #10 tb_in = 0; // 10 zaman vahdi sonra 0
    #10;           // simulyasiyanın sonu
  end

  // Monitor siqnalları
  initial begin
    $monitor("Time=%0t | tb_in=%b | tb_out=%b", $time, tb_in, tb_out);
  end

endmodule
