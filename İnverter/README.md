# FPGA-Designs
This project demonstrates a simple FPGA design that creates a module with **one input and one output** behaving like an inverter (NOT gate).

## 📌Description
- **Module name:**  Inverter
- **Function:**     The output is the logical NOT of the input
- **Purpose:**      To demonstrate how a simple combinational logic (NOT gate) works.
                    To help beginners understand that assign statements create **connections**, not sequential operations.

## 📂Files
- `Not-Gate.v`        - Verilog   implementation
- `Not-Gate.vhd`      - VHDL      implementation
- `tb_Not-Gate.v`     - Verilog   testbench
- `tb_Not-Gate.vhd`   - VHDL      testbench
- `waveform.png`      - Simulation result (identical for both Verilog and VHDL)
- `module.png`        - Block diagram of the Not-Gate module

## 📝Notes
- Tools:    Vivado Simulator.
- Both Verilog and VHDL implementations produce the same result.
