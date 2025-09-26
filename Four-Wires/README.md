# FPGA-Designs
This project demonstrates a simple FPGA design that creates a module with **three inputs and four outputs** that behave like connected wires.

## 📌Description
- **Module name:**  Four-Wires
- **Function:**     The module has three inputs (`a, b, c`) and four outputs (`w, x, y, z`).  
                    The outputs are connected as follows:  
                    - `a → w`  
                    - `b → x`  
                    - `b → y`  
                    - `c → z`  
- **Purpose:**       To illustrate the concept of **continuous assignments** in Verilog/VHDL.  
                     To demonstrate that multiple outputs can be driven from the same input (fan-out).  
                     To help beginners understand that `assign` statements create **connections**, not sequential operations.  

## 📂Files
- `Four-Wires.v`        - Verilog   implementation
- `Four-Wires.vhd`      - VHDL      implementation
- `tb_Four-Wires.v`     - Verilog   implementation
- `tb_Four-Wires.vhd`   - VHDL      implementation
- `waveform.png`        - Simulation result (identical for both Verilog and VHDL)
- `module.png`          - Block diagram of the Four-Wires module

## 📝Notes
- Tools:    Vivado Simulator.
- Both Verilog and VHDL implementations produce the same result.
