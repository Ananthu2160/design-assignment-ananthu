# FIFO Transaction Modeling Using SystemVerilog Classes

## Overview

This project demonstrates object-oriented transaction modeling for a FIFO interface using SystemVerilog. It implements a base transaction class and an extended FIFO transaction class to model write, read, reset, and randomized FIFO operations.

The project highlights key verification concepts such as inheritance, constructor chaining, constraint randomization, method overriding, and transaction-based modeling.

## Features

* Base and derived transaction classes
* Randomized transaction generation
* Read, write, and reset operations
* Constraint-based control signal validation
* Formatted console output for transaction monitoring

## Class Hierarchy

```text
fifo_base_transaction
          │
          └── fifo_transaction
```

### `fifo_base_transaction`

Contains common FIFO transaction signals:

* `data_in`
* `wrenb`
* `rdenb`

### `fifo_transaction`

Extends the base class with FIFO-specific signals:

* `rst`
* `data_out`
* `full`
* `empty`

## Constraints

The following constraints are implemented:

* Simultaneous read and write operations are prevented.
* Read and write operations are disabled during reset.

## Supported Operations

* `set_write()` – Configures a write transaction
* `set_read()` – Configures a read transaction
* `set_reset()` – Configures a reset transaction
* `randomize()` – Generates randomized transactions

## Simulation Flow

1. Create a transaction object.
2. Configure the desired FIFO operation.
3. Display transaction information in the console.
4. Generate randomized transactions.
5. Terminate the simulation.

## Console Output

The following screenshot shows the simulation console output for write, read, reset, and randomized FIFO transactions.

<p align="center">
  <img width="452" height="726" alt="Screenshot 2026-06-15 225134" src="https://github.com/user-attachments/assets/fb75d338-1f8f-4249-a1bf-e5097f0c45bd" />

</p>

> **Note:** Place your console output screenshot in a folder named `screenshots` and name the image file `fifo_transaction_console.png`. Update the image path if you use a different folder or file name.

## Concepts Demonstrated

* SystemVerilog classes
* Inheritance
* Constructor chaining using `super.new()`
* Constraint randomization
* Method overriding
* Transaction-based verification

