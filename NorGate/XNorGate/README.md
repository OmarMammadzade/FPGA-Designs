# FPGA-Designs: XNOR Gate
This project demonstrates a simple FPGA design that creates a module with **one input and one output** behaving like an XNOR Gate.

## 📌Description
- **Module name:**  XNOR Gate
- **Function:**     The module has two inputs (a and b) and one output (out). The output is 1 when both inputs are equal, otherwise 0.

## 🧮Truth Table
|&nbsp;&nbsp;a&nbsp;&nbsp;|&nbsp;&nbsp;b&nbsp;&nbsp;|&nbsp;&nbsp;out (a ⊙ b)&nbsp;&nbsp;|  
|&nbsp;&nbsp;0&nbsp;&nbsp;|&nbsp;&nbsp;0&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|  
|&nbsp;&nbsp;0&nbsp;&nbsp;|&nbsp;&nbsp;1&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| 
|&nbsp;&nbsp;1&nbsp;&nbsp;|&nbsp;&nbsp;0&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|  
|&nbsp;&nbsp;1&nbsp;&nbsp;|&nbsp;&nbsp;1&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|  

## 📂Files
- `XNor-Gate.v`        - Verilog   implementation
- `XNor-Gate.vhd`      - VHDL      implementation
- `tb_XNor-Gate.v`     - Verilog   testbench
- `tb_XNor-Gate.vhd`   - VHDL      testbench
- `waveform.png`      - Simulation result (identical for both Verilog and VHDL)
- `module.png`        - Block diagram of the XNor-Gate module

## 📝Notes
- Tools:    Vivado Simulator.
- Both Verilog and VHDL implementations produce the same result.
