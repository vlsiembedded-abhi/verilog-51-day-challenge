# 4-Bit Counter (Verilog)

## 📖 Overview
This project implements a **4-bit synchronous counter** in Verilog HDL.  
The counter increments its value on each rising edge of the clock (`clk`).  
It counts from `0000 (0)` to `1111 (15)` in binary (or `0` to `F` in hexadecimal) and then rolls over back to `0000`.

---

## ⚡ Features
- 4-bit synchronous up-counter  
- Asynchronous reset (active high/low depending on design)  
- Counts from **0 → 15**, then wraps to 0  
- Can be simulated in tools like **ModelSim, Vivado, or QuestaSim**

---

## 🖥️ Simulation Results
- **Clock (`clk`)**: Provides timing pulses  
- **Reset (`reset`)**: When asserted, counter resets to `0000`  
- **Count (`count[3:0]`)**: Output of the counter  

### Waveform Output
- The counter starts at `0000` after reset  
- On every rising clock edge, the count increases:  
