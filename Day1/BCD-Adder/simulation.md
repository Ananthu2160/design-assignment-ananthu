<img width="1920" height="1080" alt="Screenshot (82)" src="https://github.com/user-attachments/assets/112adee8-ed6f-4cdd-9790-e3f5b9f245f0" />
# BCD Adder Simulation

## Objective

To verify the operation of a BCD Adder using behavioral simulation in Vivado.

## Simulation Results

| Time (ns) | A | B | Cin | Sum | Cout |
|-----------|---|---|-----|-----|------|
| 0 | 2 | 3 | 0 | 5 | 0 |
| 1 | 4 | 5 | 0 | 9 | 0 |
| 2 | 8 | 7 | 0 | 5 | 1 |
| 3 | 9 | 9 | 0 | 8 | 1 |
| 4 | 6 | 8 | 0 | 4 | 1 |

## Observations

- 2 + 3 = 5
- 4 + 5 = 9
- 8 + 7 = 15 → BCD Output = 5, Carry = 1
- 9 + 9 = 18 → BCD Output = 8, Carry = 1
- 6 + 8 = 14 → BCD Output = 4, Carry = 1

## Conclusion

The simulation confirms that the BCD Adder correctly performs decimal addition and generates a carry whenever the sum exceeds 9.
