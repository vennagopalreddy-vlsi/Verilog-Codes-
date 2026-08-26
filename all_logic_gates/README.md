# All Gates - Verilog RTL

This project contains the Verilog RTL implementation and testbench for basic logic gates.

## Gates

- AND
- OR
- NOT
- NAND
- NOR
- XOR
- XNOR

## Files

- `all_gates.v` - RTL design extracted from the provided image.
- `all_gates_tb.v` - Testbench for all input combinations.

## Simulation

The testbench applies:

- `a=0, b=0`
- `a=0, b=1`
- `a=1, b=0`
- `a=1, b=1`

and displays the outputs using `$monitor`.

> The testbench was reconstructed from the visible RTL/module interface because its source code was not visible in the uploaded image.
