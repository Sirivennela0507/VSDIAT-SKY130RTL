# Module 3: Combinational and Sequential Optimization

This module focuses on understanding how synthesis tools optimize **combinational logic and sequential logic** while preserving the intended functionality.

The experiments use Verilog RTL, simulation waveforms and synthesized logic diagrams to observe how redundant logic, constant-driven flip-flops, unused logic and counter logic can be simplified during synthesis.

---

## Table of Contents

- [1. Introduction to Logic Optimization](#1-introduction-to-logic-optimization)
- [2. Combinational Logic Optimization](#2-combinational-logic-optimization)
  - [Optimization Check 1](#21-optimization-check-1)
  - [Optimization Check 2](#22-optimization-check-2)
  - [Optimization Check 3](#23-optimization-check-3)
  - [Optimization Check 4](#24-optimization-check-4)
- [3. Sequential Logic Optimization](#3-sequential-logic-optimization)
  - [DFF Constant Optimization 1](#31-dff-constant-optimization-1)
  - [DFF Constant Optimization 2](#32-dff-constant-optimization-2)
  - [DFF Constant Optimization 3](#33-dff-constant-optimization-3)
  - [DFF Constant Optimization 4](#34-dff-constant-optimization-4)
  - [DFF Constant Optimization 5](#35-dff-constant-optimization-5)
- [4. Counter Optimization](#4-counter-optimization)
  - [Counter Optimization 1](#41-counter-optimization-1)
  - [Counter Optimization 2](#42-counter-optimization-2)
- [5. Verification](#5-verification)
- [6. Key Takeaways](#6-key-takeaways)

---

# 1. Introduction to Logic Optimization

Logic optimization is an important part of digital design and synthesis. The objective is to obtain a simpler and more efficient hardware implementation without changing the required behavior.

During synthesis, the tool can identify logic that is:

- Redundant
- Driven by constants
- Unused
- Unnecessary for the required output
- Simplifiable through Boolean or sequential analysis

Typical benefits include:

- Reduced gate count
- Reduced area
- Lower switching activity
- Potential power reduction
- A simpler synthesized netlist
- More efficient hardware implementation

This module demonstrates these concepts through practical RTL examples.

---

# 2. Combinational Logic Optimization

Combinational logic depends only on the current input values. Synthesis tools can simplify Boolean expressions and conditional logic when equivalent functionality can be implemented with fewer gates.

## 2.1 Optimization Check 1

### RTL

The first experiment implements a simple conditional expression:

```verilog
module opt_check (input a, input b, output y);
assign y = a ? b : 0;
endmodule
```

The synthesis tool analyzes the conditional expression and produces an optimized combinational implementation.

### RTL Code

![Optimization Check 1 RTL](opt_check_code.png)

### Optimized Logic

![Optimization Check 1 Optimized Logic](opt_check.png)

---

## 2.2 Optimization Check 2

### RTL

```verilog
module opt_check2 (input a, input b, output y);
assign y = a ? 1 : b;
endmodule
```

The expression contains a constant branch. Synthesis can simplify the resulting logic based on the Boolean relationship between `a`, `b` and `y`.

### RTL Code

![Optimization Check 2 RTL](opt_check2_code.png)

### Optimized Logic

![Optimization Check 2 Optimized Logic](opt_check2.png)

---

## 2.3 Optimization Check 3

### RTL

```verilog
module opt_check3 (input a, input b, input c, output y);
assign y = a ? (c ? b : 0) : 0;
endmodule
```

This example contains nested conditional logic. The synthesis tool can analyze the conditions and simplify the implementation.

### RTL Code

![Optimization Check 3 RTL](opt_check3_code.png)

### Optimized Logic

![Optimization Check 3 Optimized Logic](opt_check_3.png)

---

## 2.4 Optimization Check 4

### RTL

The fourth experiment uses a more complex conditional expression:

```verilog
module opt_check4 (input a, input b, input c, output y);
assign y = a ? (b ? (a & c) : c) : (!c);
endmodule
```

The experiment demonstrates how synthesis analyzes nested conditions and produces an optimized gate-level representation.

### RTL Code

![Optimization Check 4 RTL](opt_check4_code.png)

### Optimized Logic

![Optimization Check 4 Optimized Logic](opt_check_4.png)

---

# 3. Sequential Logic Optimization

Sequential logic contains storage elements such as flip-flops. Synthesis can optimize sequential logic when the stored values are constant, redundant or do not contribute to required outputs.

The DFF experiments in this module demonstrate constant propagation and simplification of sequential hardware.

## 3.1 DFF Constant Optimization 1

The first experiment drives the DFF output to a constant value in both reset and normal operation.

### RTL Code

![DFF Constant 1 and 2 RTL](dff_const_1&2_code.png)

### Optimized Logic

![DFF Constant 1 Optimized Logic](dff_const.png)

### Waveform

![DFF Constant 1 Waveform](dff_const1_waveform.png)

The experiment demonstrates that a flip-flop whose output is always constant does not need to remain as a functional storage element in the optimized implementation.

---

## 3.2 DFF Constant Optimization 2

The second experiment also demonstrates constant-driven sequential behavior.

### RTL Code

![DFF Constant 1 and 2 RTL](dff_const_1&2_code.png)

### Optimized Logic

![DFF Constant 2 Optimized Logic](dff_const2.png)

### Waveform

![DFF Constant 2 Waveform](dff_const2_waveform.png)

The waveform is used to verify the reset and clock behavior before considering the synthesized result.

---

## 3.3 DFF Constant Optimization 3

This experiment introduces an internal register `q1`. The register is assigned a constant value and is used to drive the output register.

### RTL Code

![DFF Constant 3 and 4 RTL](dff_const3&4_code.png)

### Optimized Logic

![DFF Constant 3 Optimized Logic](dff_const3.png)

### Waveform

![DFF Constant 3 Waveform](dff_const3_waveform.png)

The synthesis result demonstrates how constant propagation can simplify the sequential structure.

---

## 3.4 DFF Constant Optimization 4

This experiment is similar to the previous constant-propagation example but uses a different reset/output relationship.

### RTL Code

![DFF Constant 3 and 4 RTL](dff_const3&4_code.png)

### Optimized Logic

![DFF Constant 4 Optimized Logic](dff_const4.png)

### Waveform

![DFF Constant 4 Waveform](dff_const4_waveform.png)

The synthesized circuit is compared with the RTL behavior to understand which sequential elements are actually required.

---

## 3.5 DFF Constant Optimization 5

The fifth experiment contains an internal register and demonstrates another case where constant behavior allows synthesis to simplify sequential logic.

### RTL Code

![DFF Constant 5 RTL](dff_const5_code.png)

### Optimized Logic

![DFF Constant 5 Optimized Logic](dff_const5.png)

### Waveform

![DFF Constant 5 Waveform](dff_const5_waveform.png)

The waveform provides simulation evidence for the clock/reset and output behavior.

---

# 4. Counter Optimization

Counters are sequential circuits whose stored value changes on clock events. These experiments show how synthesis can optimize a counter according to the portion of its state that is actually required by the output logic.

## 4.1 Counter Optimization 1

### RTL Code

```verilog
module counter_opt (input clk, input reset, output q);
reg [2:0] count;

assign q = count[0];

always @(posedge clk, posedge reset)
begin
    if (reset)
        count <= 3'b000;
    else
        count <= count + 1;
end
endmodule
```

Only one bit of the counter is connected to the output. This allows the synthesis tool to analyze whether the complete three-bit counter is necessary for the required functionality.

### RTL Code

![Counter Optimization 1 RTL](counter_opt_code.png)

### Optimized Logic

![Counter Optimization 1 Optimized Logic](counter_opt.png)

### Waveform

![Counter Optimization 1 Waveform](counter_opt_waveform.png)

---

## 4.2 Counter Optimization 2

### RTL Code

```verilog
module counter_opt (input clk, input reset, output q);
reg [2:0] count;

assign q = (count[2:0] == 3'b100);

always @(posedge clk, posedge reset)
begin
    if (reset)
        count <= 3'b000;
    else
        count <= count + 1;
end
endmodule
```

Here the counter output is generated by comparing the counter value with a constant. The synthesis tool can optimize the counter and comparison logic according to the actual output requirement.

### RTL Code

![Counter Optimization 2 RTL](counter_opt2_code.png)

### Optimized Logic

![Counter Optimization 2 Optimized Logic](counter_opt2.png)

---

# 5. Verification

The experiments are verified by comparing the RTL behavior with simulation waveforms and synthesized logic diagrams.

The overall flow used in this module is:

```text
RTL Description
      |
      v
RTL Simulation
      |
      v
Waveform Observation
      |
      v
Synthesis
      |
      v
Optimization
      |
      v
Optimized Logic / Netlist Inspection
```

The screenshots in this folder provide the corresponding RTL, waveform and synthesized-logic evidence for the experiments.

---

# 6. Key Takeaways

This module provides practical understanding of:

- Combinational logic optimization
- Sequential logic optimization
- Constant propagation
- DFF constant optimization
- Removal/simplification of unnecessary sequential logic
- Counter optimization
- Synthesis-based Boolean simplification
- RTL simulation and waveform verification
- Inspection of synthesized logic

The main idea is that the RTL description does not always translate one-to-one into the final hardware. Synthesis analyzes the required functionality and can produce a simpler implementation when the RTL contains redundant or unnecessary hardware.
