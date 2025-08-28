# 4-Bit ALU in Verilog

This project implements a **4-bit Arithmetic Logic Unit (ALU)** in Verilog along with a simple **testbench**.  
The ALU supports arithmetic, logical, increment, and decrement operations.

---

## 📂 Files
- `ALU4BIT.v` → ALU design module  
- `tb_ALU4BIT.v` → Testbench module  

---

## ⚙️ ALU Operations

The ALU performs different operations based on the 3-bit control signal `ALU_sel`:

| ALU_sel | Operation            | Description                             |
|---------|----------------------|-----------------------------------------|
| 000     | `a + b`              | Addition with carry                     |
| 001     | `a - b`              | Subtraction                             |
| 010     | `a & b`              | Bitwise AND                             |
| 011     | `a \| b`             | Bitwise OR                              |
| 100     | `a ^ b`              | Bitwise XOR                             |
| 101     | `~a`                 | Bitwise NOT (on `a`)                    |
| 110     | `a + 1`              | Increment                               |
| 111     | `a - 1`              | Decrement                               |

Additional Signals:
- `carryOut` → Indicates carry from addition.  
- `Zero` → High (`1`) if result = `0000`.  
