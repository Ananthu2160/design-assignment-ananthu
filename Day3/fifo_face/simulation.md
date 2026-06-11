# Face Detection Data Buffering System

## Description

This project implements a Face Detection Data Buffering System using a FIFO and FSM.

The Face Module generates data every clock cycle, while the Output Module reads data once every three clock cycles. A FIFO buffer is used between them to prevent data loss and maintain the correct data sequence.

## Modules

- Face Module
- FIFO
- Output FSM
- Top Module
- Testbench

## Resource Utilization

| Resource | Used | Utilization |
|-----------|------|------------|
| Slice LUTs | 34 | 0.16% |
| Slice Registers | 99 | 0.24% |
| F7 Muxes | 8 | 0.05% |

## Results

### Utilization Report

<img width="587" height="323" alt="Screenshot 2026-06-11 212654" src="https://github.com/user-attachments/assets/39c683ce-ecf6-4ce8-9757-7fb76e92b3e1" />


### Device Floorplan

<img width="1556" height="775" alt="Screenshot 2026-06-11 212754" src="https://github.com/user-attachments/assets/ed81cfe0-e71b-4829-bbd1-af7bfee3bbc1" />


## Conclusion

The FIFO successfully buffers incoming data and prevents data loss caused by the speed mismatch between the Face Module and the Output Module.
