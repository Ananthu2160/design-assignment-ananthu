# FIFO (First In First Out)

## Overview

A FIFO (First In First Out) is a memory buffer used for temporary data storage where the first data written into the buffer is the first data read out. FIFOs are commonly used in digital systems for data buffering, data transfer, and communication between hardware modules. This design implements a synchronous FIFO with write and read control signals along with `full` and `empty` status flags to indicate the current state of the buffer. The simulation verifies correct data storage and retrieval while maintaining the FIFO principle.

## Waveform

The waveform shows the write and read operations performed on the FIFO. Data values are written into the FIFO when `wr_en` is asserted and are read out in the same order when `rd_en` is asserted. The `full` and `empty` flags correctly indicate the status of the FIFO during operation.

<img width="1920" height="1080" alt="Screenshot (97)" src="https://github.com/user-attachments/assets/45cdf22d-81e4-44a3-b770-5c0d9e99b52a" />


## Console Output

The console log displays the sequence of write and read operations along with the corresponding input data, output data, and FIFO status flags. The results confirm that the FIFO stores and retrieves data correctly while maintaining the First In First Out behavior.

<img width="1920" height="1080" alt="Screenshot (98)" src="https://github.com/user-attachments/assets/83f1a633-dabf-40a5-bebd-2d8fcab79e61" />


## Conclusion

The simulation results confirm the correct functionality of the FIFO design. Data is successfully written into and read from the buffer in the same order it was received, validating the First In First Out operation. The `full` and `empty` status flags also behave as expected during all test cases.
