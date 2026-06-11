# Block Memory Generator

## Description

This project implements a Block Memory Generator (BRAM) in Vivado. The design supports write and read operations using separate addresses. Data written into memory can be successfully retrieved from the corresponding read address.

## Features

- 8-bit data width
- Separate read and write addresses
- Synchronous write operation
- Block RAM implementation
- Testbench verification

## Simulation Result

The waveform confirms successful memory operation.

- Data `88` is written to address `7`.
- Read address is set to `7`.
- Output data correctly reads back `88`.

### Waveform

<img width="1920" height="1080" alt="Screenshot (91)" src="https://github.com/user-attachments/assets/98e9765b-23ee-4809-bac7-1b290a4a185c" />


### Observation

```text
Write Data  : 88
Write Address : 7
Read Address  : 7
Read Data     : 88
```

## Resource Utilization

| Resource | Used | Utilization |
|----------|------|-------------|
| Slice LUTs | 26 | 0.04% |
| Slice Registers | 72 | 0.06% |
| F7 Muxes | 8 | 0.03% |
| F8 Muxes | 0 | 0.00% |

### Utilization Report

<img width="578" height="322" alt="Screenshot 2026-06-11 230514" src="https://github.com/user-attachments/assets/65f1891a-678a-4e19-b3b0-41c8c6533a8a" />


## Conclusion

The Block Memory Generator was successfully implemented and verified. The memory correctly stores and retrieves data while utilizing very few FPGA resources.
