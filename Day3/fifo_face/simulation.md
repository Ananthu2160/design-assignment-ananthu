<img width="1600" height="900" alt="WhatsApp Image 2026-06-10 at 10 27 15 PM" src="https://github.com/user-attachments/assets/fcb9cef1-51a2-43b8-b1d2-cc52a30db18b" />
# FIFO Simulation

## Objective

To verify the operation of a FIFO (First In First Out) memory using behavioral simulation in Vivado.

## Simulation Results

### Write Operation

- Data values from 01 to 15 are written into the FIFO sequentially.
- The write pointer increments after each write operation.
- FIFO count increases as data is stored.

### Read Operation

- Data is read in the same order in which it was written.
- The read pointer increments after each read operation.
- FIFO count decreases as data is removed.

## Observations

- FIFO follows the First In First Out principle.
- Data written first is read first.
- Write and read pointers update correctly.
- FIFO count accurately tracks the number of stored data elements.
- No data corruption is observed during read and write operations.

## Conclusion

The FIFO was successfully simulated in Vivado. The waveform confirms correct write, read, pointer update, and data transfer operations according to FIFO behavior.
