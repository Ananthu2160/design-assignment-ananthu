<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/3d1b0f63-931e-45a1-b28d-7db8223205f3" />
# SR Flip-Flop Simulation

## Objective

To verify the operation of an SR (Set-Reset) Flip-Flop using behavioral simulation in Vivado.

## Simulation Results

| Time (ns) | S | R | Q | Q̅ |
|-----------|---|---|---|----|
| 0 | 0 | 0 | X | X |
| 10 | 1 | 0 | 1 | 0 |
| 20 | 0 | 0 | 1 | 0 |
| 30 | 0 | 1 | 0 | 1 |
| 40 | 0 | 0 | 0 | 1 |

## Observations

- Initially, the outputs are undefined.
- When S = 1 and R = 0, the flip-flop is set and Q becomes 1.
- When S = 0 and R = 0, the previous state is retained.
- When S = 0 and R = 1, the flip-flop is reset and Q becomes 0.
- Q̅ remains the complement of Q.

## Conclusion

The simulation confirms the correct operation of the SR Flip-Flop for Set, Reset, and Hold conditions.
