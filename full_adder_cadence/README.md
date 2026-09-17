# 4-bit Full Adder — Cadence RTL-to-GDSII Practice

This repository contains a small 4-bit full-adder design implemented in Verilog and the corresponding Cadence design-flow results.

## Design

The RTL implements:

- 4-bit inputs `a` and `b`
- 1-bit carry input `cin`
- 4-bit sum output `sum`
- 1-bit carry output `carry`

### Logic equations

```text
sum   = a ^ b ^ cin
carry = (a & b) | (b & cin) | (cin & a)
```

## Repository Structure

```text
full_adder_cadence/
├── rtl/
│   └── full_adder.v
├── tb/
│   └── full_adder_tb.v
├── netlist/
│   └── full_adder_netlist.v
├── results/
│   ├── waveform.png
│   ├── schematic.png
│   ├── layout.png
│   └── netlist_view.png
├── README.md
└── .gitignore
```

## Simulation Test Cases

The testbench applies these input combinations:

| Test | a | b | cin |
|---|---|---|---|
| 1 | 1000 | 1010 | 0 |
| 2 | 1010 | 0001 | 0 |
| 3 | 1111 | 0010 | 0 |
| 4 | 1110 | 1011 | 0 |
| 5 | 1110 | 0101 | 0 |

Each test case is held for 10 time units.

## Tools / Flow

This project can be used to practice:

1. Verilog RTL coding
2. Functional simulation
3. Synthesis
4. Gate-level netlist inspection
5. Schematic generation
6. Physical layout inspection
7. RTL-to-GDSII flow concepts using Cadence tools

## Results

The `results/` directory contains screenshots of the simulation waveform, synthesized schematic, physical layout, and generated netlist view.

> Note: The netlist included here is transcribed from the provided Cadence screenshot for documentation/practice. Regenerated netlists can differ depending on the technology library, synthesis settings, and tool version.

## Author

Venna Gopal Reddy

VLSI / RTL Design | Verilog | FPGA | Cadence RTL-to-GDSII
