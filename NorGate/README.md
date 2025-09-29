# FPGA-Designs: NOR Gate
In this project, a simple FPGA module is designed to perform the NOR Gate logic operation, taking two inputs and producing one output.

## 📌Description
- **Module name:**  NOR Gate
- **Function:**     The module has two inputs (a and b) and one output (out).
                    The output is logic 1 only when both inputs are 0.
                    Otherwise, the output is logic 0.

## 📂Files
- `Nor-Gate.v`        - Verilog   implementation
- `Nor-Gate.vhd`      - VHDL      implementation
- `tb_Nor-Gate.v`     - Verilog   testbench
- `tb_Nor-Gate.vhd`   - VHDL      testbench
- `waveform.png`      - Simulation result (identical for both Verilog and VHDL)
- `module.png`        - Block diagram of the Nor-Gate module

## 📝Notes
- Tools:    Vivado Simulator.
- Both Verilog and VHDL implementations produce the same result.
