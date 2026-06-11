<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/882d3133-196d-4ba4-93a1-71105f9056d3" />
# Sequence Detector Simulation

## Objective

To verify the operation of a sequence detector using behavioral simulation in Vivado.

## Inputs and Outputs

### Inputs
- clk : Clock signal
- rst : Reset signal
- din : Serial input data

### Outputs
- detected : Indicates whether the target sequence has been detected
- ns[1:0] : FSM state

## Observations

- The FSM starts in the initial state after reset.
- The state transitions occur according to the input sequence applied on `din`.
- The state values progress through the detection states (0 → 1 → 2 → 3).
- When the target sequence is recognized, the `detected` signal becomes high.
- After detection, the FSM returns to the initial state and waits for the next valid sequence.

## Conclusion

The simulation confirms that the sequence detector correctly transitions between states and asserts the detection signal when the required input sequence is received.
