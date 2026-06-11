<img width="1920" height="1080" alt="Screenshot (87)" src="https://github.com/user-attachments/assets/b1ed4d8e-f68a-40bb-93d2-224de98bb03c" />

# 2×4 Decoder Simulation

## Objective

To verify the operation of a 2×4 Decoder using behavioral simulation in Vivado.

## Inputs and Outputs

### Inputs
- a[1:0] : 2-bit input
- en : Enable signal

### Output
- y[3:0] : 4-bit decoded output

## Simulation Results

| Time (ns) | EN | A | Y |
|-----------|----|---|----|
| 0 | 0 | 00 | 0000 |
| 10 | 1 | 00 | 0001 |
| 20 | 1 | 01 | 0010 |
| 30 | 1 | 10 | 0100 |
| 40 | 1 | 11 | 1000 |
| 50 | 0 | XX | 0000 |

## Observations

- When the enable signal is low, all outputs remain 0.
- For A = 00, output Y0 becomes high.
- For A = 01, output Y1 becomes high.
- For A = 10, output Y2 becomes high.
- For A = 11, output Y3 becomes high.
- Only one output is active at a time.

## Conclusion

The simulation confirms the correct operation of the 2×4 Decoder. The output line corresponding to the input combination becomes active when the enable signal is high.
