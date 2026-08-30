# Module 4 — Coding Caveats, Mux Styles and Gate-Level Simulation

## Purpose

This module concentrates on RTL coding choices that can produce surprising results if misunderstood. The visual material includes mux examples, blocking-assignment caveats and a gate-level simulation waveform.

## 1. Mux Coding Styles

A multiplexer can be described in more than one synthesizable style. The supplied material includes a ternary-based mux example and a related code view.

For a simple two-input mux, the conceptual behavior is:

```text
select = 0 → choose input A
select = 1 → choose input B
```

Different RTL syntax can still describe the same hardware.

## 2. Blocking Assignment Caveat

Blocking (`=`) and non-blocking (`<=`) assignments do not represent identical simulation semantics.

A useful rule for beginner RTL work is:

- Use **non-blocking assignments** for clocked sequential logic.
- Use **blocking assignments** carefully for combinational procedural logic.

The supplied blocking-assignment screenshots demonstrate why assignment ordering can matter during simulation.

## 3. RTL Versus Gate-Level Simulation

RTL simulation observes the behavior of the abstract hardware description. Gate-level simulation operates on a synthesized/mapped representation.

The supplied GLS waveform is therefore useful for understanding that the signal path can look different after synthesis while still implementing the intended function.

## 4. Common Review Questions

When checking an RTL block, ask:

- Is the intended logic combinational or sequential?
- Are the assignments appropriate for that logic?
- Can assignment ordering affect simulation?
- Does the synthesized circuit match the intended function?
- Does gate-level behavior agree with the expected RTL behavior?

## Visual References

The `images/` directory contains the supplied:

- mux example
- mux waveform
- blocking-assignment code and waveform
- ternary mux code/diagram
- gate-level simulation waveform

## Module Takeaway

Good RTL is not only syntactically correct. The coding style must also communicate the intended hardware and avoid simulation/synthesis mismatches.
