<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/ae52f902-2624-4f8c-9ec4-079ca00e2928" />
# 4-Bit Ripple Carry Adder Simulation

## Objective

To verify the operation of a 4-bit Ripple Carry Adder using behavioral simulation in Vivado.

## Simulation Results

| Time (ns) | A (Hex) | B (Hex) | Cin | Sum (Hex) | Cout |
|-----------|----------|----------|-----|-----------|------|
| 0 | 0 | 0 | 0 | 0 | 0 |
| 1 | 3 | 5 | 0 | 8 | 0 |
| 2 | A | 5 | 0 | F | 0 |
| 3 | F | 1 | 0 | 0 | 1 |
| 4 | F | F | 1 | F | 1 |

## Observations

- 3 + 5 = 8, Carry = 0
- A + 5 = F, Carry = 0
- F + 1 = 10, therefore Sum = 0 and Carry = 1
- F + F + 1 = 1F, therefore Sum = F and Carry = 1

## Conclusion

The simulation results confirm that the 4-bit Ripple Carry Adder performs binary addition correctly and generates the appropriate carry output for overflow conditions.
