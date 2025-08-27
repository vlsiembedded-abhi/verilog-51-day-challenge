# 📝 4-Bit Comparator (Verilog)

### 📌 Overview  
- **Design Name**: `BIT4COMPARATOR`  
- **Function**: Compares two 4-bit inputs (`A`, `B`) and outputs whether:  
  - `A_gt_B` → A greater than B  
  - `A_eq_B` → A equal to B  
  - `A_ls_B` → A less than B  

---

### ⚙️ Working Principle  
- If `A > B` → `A_gt_B = 1`  
- If `A == B` → `A_eq_B = 1`  
- If `A < B` → `A_ls_B = 1`  

---

### 🧪 Testbench (`TB_BIT4COMPARATOR`)  
- Applies different 4-bit values to A & B.  
- Monitors outputs using `$monitor`.  
- Example simulation results:  

| A       | B       | A_gt_B | A_eq_B | A_ls_B |
|---------|---------|--------|--------|--------|
| 0000    | 0000    | 0      | 1      | 0      |
| 0001    | 0000    | 1      | 0      | 0      |
| 1111    | 1111    | 0      | 1      | 0      |
| 1010    | 0101    | 1      | 0      | 0      |
| 0010    | 0100    | 0      | 0      | 1      |
| 1001    | 1001    | 0      | 1      | 0      |

---

### ✅ Key Points  
- Fully combinational design using `always @(*)`.  
- Simple & efficient for digital comparison tasks.  
- Useful for **ALU**, **sorting units**, and **decision logic**.
