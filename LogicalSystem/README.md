# FPGA-Designs: Logical System
This project implements a simple logic circuit using **verilog** and **VHDL**. This circuit uses **AND**, **OR** and **NOT** gates. 

The circuit introduces the concept of **intermediate wires** (`w1`, `w2`, `w3`), which connect outputs of some gates to inputs of others. This approach keeps the design modular, readable, and easier to simulate.  

## 📂Files
- `Logic-System.v`        - Verilog   implementation
- `Logic-System.vhd`      - VHDL      implementation
- `tb_Logic-System.v`     - Verilog   testbench
- `tb_Logic-System.vhd`   - VHDL      testbench
- `waveform.png`          - Simulation result (identical for both Verilog and VHDL)
- `module.png`            - Block diagram of the Logic module

## 📝Notes
- Tools:    Vivado Simulator.
- Both Verilog and VHDL implementations produce the same result.
