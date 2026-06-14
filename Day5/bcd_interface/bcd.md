# BCD Adder

## Overview
A BCD (Binary Coded Decimal) Adder is a digital circuit used to add two decimal digits represented in BCD format. Since a valid BCD digit can only range from 0000 (0) to 1001 (9), the result of a binary addition may become invalid when the sum exceeds 9. To correct this, the circuit detects invalid BCD results and adds 0110 (decimal 6) to obtain a valid BCD output.

This design accepts two 4-bit BCD inputs (`A` and `B`) along with a carry input (`Cin`). The circuit first performs binary addition and then applies BCD correction whenever required. The final output consists of a valid 4-bit BCD sum (`Sum`) and a carry output (`Cout`) indicating an overflow to the next decimal digit.

The simulation results verify the correct operation of the BCD Adder for normal additions as well as cases that require BCD correction and carry generation.

## Inputs
- A[3:0] – First BCD digit
- B[3:0] – Second BCD digit
- Cin – Carry input

## Outputs
- Sum[3:0] – BCD Sum
- Cout – Carry output

## Verification
<img width="381" height="246" alt="Screenshot 2026-06-14 231809" src="https://github.com/user-attachments/assets/adf647cd-7940-47e6-a5eb-70bffebc4fc9" />

## Waveform

The simulation waveform verifies the correct functionality of the BCD Adder. Whenever the binary sum exceeds 9, BCD correction is performed and the carry output is asserted.

<img width="1920" height="1080" alt="Screenshot (94)" src="https://github.com/user-attachments/assets/de8da504-1c6a-4ae0-aceb-187c24c6ca64" />

