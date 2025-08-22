# 🔢 RCA4BIT – 4-bit Ripple Carry Adder in Verilog

## 📌 Overview
This project implements a **4-bit Ripple Carry Adder (RCA)** using structural Verilog. It connects four 1-bit full adders in series to compute the sum of two 4-bit binary numbers and a carry-in. The design showcases modular hierarchy, bitwise logic, and basic digital arithmetic.

---

## 🧠 Core Concepts
- **Full Adder Logic**: `sum = a ^ b ^ cin`, `cout = (a & b) | (a & cin) | (b & cin)`
- **Ripple Carry**: Carry-out from each stage feeds into the next.
- **Modular Design**: Reusable `fulladder` module instantiated inside `RCA4BIT`.
- **Testbench**: Applies multiple input combinations to verify correctness.

---

## 📁 File Structure
| File           | Description                            |
|----------------|----------------------------------------|
| `fulladder.v`  | 1-bit full adder module                |
| `RCA4BIT.v`    | 4-bit ripple carry adder using fulladders |
| `tb_RCA4BIT.v` | Testbench with sample input cases      |

---

## 🧪 Sample Output

| Time (ns) | A     | B     | Cin | SUM   | Cout | Description                          |
|-----------|-------|-------|-----|-------|------|--------------------------------------|
| 10        | 0000  | 0000  | 0   | 0000  | 0    | All zeros                            |
| 20        | 0101  | 0011  | 0   | 1000  | 0    | Basic addition without carry         |
| 30        | 1111  | 0001  | 0   | 0000  | 1    | Overflow with carry-out              |
| 40        | 1010  | 0101  | 1   | 1110  | 0    | Addition with carry-in               |
| 50        | 1111  | 1111  | 1   | 1111  | 1    | Max values with carry-in and overflow|


---

## 🚀 How to Simulate
1. Open your Verilog simulator (ModelSim, Vivado, etc.).
2. Compile all `.v` files.
3. Run `tb_RCA4BIT`.
4. View results in console or waveform viewer.

---

## 🌱 Future Enhancements
- Parameterize RCA for N-bit addition.
- Add carry-lookahead adder for speed.
- Integrate into ALU or calculator module.

---

## 🧑‍💻 Author
**Abhishek** – BTech ECE, CCS University  
Passionate about embedded systems, digital design, and real-world hardware-software integration.


