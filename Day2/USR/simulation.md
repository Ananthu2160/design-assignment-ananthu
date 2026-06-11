<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/be2fce72-3a4a-4934-a9b7-9b0ef12de934" />
# Universal Shift Register Simulation

## Objective

To verify the operation of a Universal Shift Register (USR) using behavioral simulation in Vivado.

## Inputs and Outputs

### Inputs
- clk : Clock signal
- rst : Reset signal
- sin : Serial input
- load : Parallel load control
- mode[1:0] : Mode selection
- pin[3:0] : Parallel input

### Outputs
- sout : Serial output
- pout[3:0] : Parallel output

## Observations

- After reset, the register is cleared.
- In Mode 00, the register holds its current value.
- In Mode 01, data is shifted right.
- In Mode 10, data is shifted left.
- In Mode 11, parallel data is loaded into the register.
- The serial output changes according to the shifted data.
- The parallel output reflects the current contents of the register.

## Conclusion

The Universal Shift Register was successfully simulated in Vivado. The waveform confirms correct Hold, Shift Right, Shift Left, and Parallel Load operations for different mode selections.
