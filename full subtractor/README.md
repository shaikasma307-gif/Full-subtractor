# Full Subtractor

## Description
A Full Subtractor is a combinational circuit that performs binary subtraction using three inputs: A, B, and Borrow-in.

It produces two outputs: Difference and Borrow-out.

## Inputs
- A - Minuend
- B - Subtrahend
- Bin - Borrow-in

## Outputs
- Difference
- Bout - Borrow-out

## Files
- `full_subtractor.v` - Verilog code
- `full_subtractor_tb.v` - Testbench
- `expected_output.txt` - Expected simulation output

## Truth Table

| A | B | Bin | Difference | Bout |
|---|---|-----|------------|------|
| 0 | 0 |  0  |     0      |  0   |
| 0 | 0 |  1  |     1      |  1   |
| 0 | 1 |  0  |     1      |  1   |
| 0 | 1 |  1  |     0      |  1   |
| 1 | 0 |  0  |     1      |  0   |
| 1 | 0 |  1  |     0      |  0   |
| 1 | 1 |  0  |     0      |  0   |
| 1 | 1 |  1  |     1      |  1   |

## Simulation
The testbench checks all 8 possible input combinations of the Full Subtractor.

## Result
The simulation output matches the expected truth table.