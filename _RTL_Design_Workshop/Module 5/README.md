# Module 5 — Conditional Constructs, Mux/Demux and Generate Logic

## Purpose

This module explores conditional RTL constructs and common coding patterns used to describe selection and routing logic.

## 1. `case` Statements

`case` is useful when one expression selects among several alternatives. The supplied examples include:

- normal case-based logic
- incomplete case behavior
- comparison-oriented case examples
- testbench waveforms

When writing a `case`, think about whether every required input condition has a defined output.

## 2. Incomplete Assignments

The `incomp_*` images highlight an important RTL issue: if a combinational process does not assign an output for every possible path, the synthesizer may infer storage behavior such as a latch.

A safe design habit is:

1. Give sensible defaults.
2. Override them inside conditions.
3. Ensure every output receives a value on every combinational path.

## 3. `if`-Based Logic

The module contains examples of incomplete `if` structures and their corresponding waveforms/code views. These are useful for learning how missing branches can affect synthesized hardware.

## 4. Mux and Demux Using `generate`

The `mux_generate*` and `demux_generate*` material demonstrates how `generate` constructs can be used to create repeated hardware structures.

Conceptually:

```text
generate
   ├── repeated logic instance 0
   ├── repeated logic instance 1
   ├── ...
   └── repeated logic instance N
```

Generate constructs are evaluated during elaboration, allowing scalable RTL structures to be described cleanly.

## 5. Testbench Verification

The supplied `tb_*` images show waveform/code views associated with the conditional examples. These should be used to connect three levels:

```text
RTL coding style → synthesized behavior → simulated waveform
```

## 6. What to Watch For

While studying the screenshots, pay special attention to:

- missing `case` alternatives
- missing `if/else` assignments
- default values
- mux selection
- demux routing
- generated repeated logic
- whether the waveform matches the intended truth table

## Visual References

All supplied Module 5 images are retained under `images/`, including case, incomplete-if/case, mux/demux generate examples and testbench waveforms.

## Module Takeaway

Conditional constructs are powerful, but incomplete combinational assignments can unintentionally create storage. Always verify that the RTL covers the behavior you actually want.
