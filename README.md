# Verifying a mutex using Ivy

Proof of correctness (safety and liveness) for a futex-based mutex, as modeled
in [Ivy](https://kenmcmil.github.io/ivy/). The C code corresponding to this
state machine is at
[mutex.c](https://github.com/tchajed/futex-tutorial/blob/main/mutex.c).

Here's a diagram of the state machine being verified:

![mutex state machine](./img/mutex.png)
