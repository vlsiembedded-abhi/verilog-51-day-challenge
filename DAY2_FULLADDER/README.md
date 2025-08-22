# Full Adder (Verilog)

## 📌 Introduction
A **Full Adder** is a combinational digital circuit that performs the addition of three binary inputs:
- **a** → First bit  
- **b** → Second bit  
- **cin** → Carry-in from the previous stage  

It produces two outputs:
- **sum** → Result of (a + b + cin)  
- **cout** → Carry-out generated after addition  

---

## 🔢 Truth Table

| a | b | cin | sum | cout |
|---|---|-----|-----|------|
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

---

## 🧮 Boolean Expressions
- **sum = a ⊕ b ⊕ cin**  
- **cout = (a · b) + (b · cin) + (a · cin)**  

---

##▶️ Verilog Code

### Full Adder
```verilog
// Full Adder in Verilog
module full_adder (
    input a, b, cin,
    output sum, cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

// Testbench for Full Adder
module full_adder_tb;
    reg a, b, cin;
    wire sum, cout;

    // Instantiate the Full Adder
    full_adder uut (a, b, cin, sum, cout);

    initial begin
        
        
        a=0; b=0; cin=0; #5;
        a=0; b=0; cin=1; #5;
        a=0; b=1; cin=0; #5;
        a=0; b=1; cin=1; #5;
        a=1; b=0; cin=0; #5;
        a=1; b=0; cin=1; #5;
        a=1; b=1; cin=0; #5;
        a=1; b=1; cin=1; #5;

        $finish;
    end
 	initial begin
		$monitor("a=%b b=%b cin=%b | sum=%b cout=%b", a, b, cin, sum, cout);
	end
endmodule

🛠 Tools Used

Xilinx Vivado Design Suite (for coding & simulation).


🚀 Applications

Arithmetic Logic Unit (ALU)

Digital processors

Binary calculators

Data processing circuits
