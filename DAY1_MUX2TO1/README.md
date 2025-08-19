# 2:1 Multiplexer in Verilog (Behavioral Modeling)

This project implements a 2-to-1 multiplexer using behavioral modeling in Verilog. A multiplexer (MUX) is a fundamental digital component used to select one of several input signals and forward the selected input to a single output line.

## 📁 Files Included
- `mux2to1.v` — Verilog module for the 2:1 MUX
- `tb_mux2to1.v` — Testbench to verify the MUX functionality

## 🧠 Concept Overview
- **Behavioral Modeling**: Uses `if-else` or `case` statements to describe logic behavior.
- **MUX Logic**: Output depends on the select line (`sel`). If `sel = 0`, output is `in0`; if `sel = 1`, output is `in1`.

## 🔧 How to Simulate
Use any Verilog simulator (ModelSim, Vivado, Icarus Verilog, or EDA Playground):
1. Compile both `mux2to1.v` and `tb_mux2to1.v`
2. Run the simulation
3. Observe output transitions based on select line changes

## ✅ Expected Behavior
| sel | in0 | in1 | out |
|-----|-----|-----|-----|
|  0  |  1  |  0  |  1  |
|  1  |  1  |  0  |  0  |

## 📌 Learning Highlights
- Understanding of basic multiplexing logic
- Practice with behavioral modeling syntax
- Testbench writing and simulation workflow

