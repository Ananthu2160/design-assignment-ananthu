<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/44e9d5d0-4ce8-4938-beec-8e640934345c" />
# D Flip-Flop Simulation

## Objective

To verify the operation of a D (Data) Flip-Flop using behavioral simulation in Vivado.

## Simulation Results

| Time (ns) | D | Q | Q̅ |
|-----------|---|---|----|
| 0 | 0 | X | X |
| 10 | 1 | 1 | 0 |
| 20 | 0 | 0 | 1 |
| 30 | 1 | 1 | 0 |
| 40 | 0 | 0 | 1 |

## Observations

- Initially, the outputs are undefined.
- When D = 1, the output Q becomes 1 and Q̅ becomes 0.
- When D = 0, the output Q becomes 0 and Q̅ becomes 1.
- The output follows the input D on the active clock edge.
- Q̅ remains the complement of Q.

## Conclusion

The simulation confirms that the D Flip-Flop correctly stores and transfers the input data to the output on the clock edge.

