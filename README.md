# Verifying a mutex using Ivy

Proof of correctness (safety and liveness) for a futex-based mutex, as modeled
in [Ivy](https://kenmcmil.github.io/ivy/). The C code corresponding to this
state machine is at
[mutex.c](https://github.com/tchajed/futex-tutorial/blob/main/mutex.c).

Here's a diagram of the state machine being verified:

![mutex state machine](./img/mutex.png)

The proof uses Ivy's liveness-to-safety reduction feature, described in [this
POPL 2018
paper](https://cs.stanford.edu/~padon/reducing-liveness-to-safety-in-first-order-logic/popl18-reducing-liveness-to-safety-in-first-order-logic.pdf).
Oded Padon helped use Ivy and especially the l2s feature, and figured out most
of the important invariants.
