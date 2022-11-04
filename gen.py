#!/usr/bin/env python3

pcs = [
    "lock_acq",
    "lock_set_wait",
    "futex_wait",
    "kernel_wait",
    "lock_acq2",
    "unlock_sub",
    "unlock_store",
    "futex_wake",
    "finished",
]

print("# init: ")
for i, pc in enumerate(pcs):
    state = "true" if i == 0 else "false"
    print(f"{pc}(T) := {state};")

print()
print("# basic invariants")
some_pc = " | ".join(f"{pc}(T)" for pc in pcs)
print(f"invariant {some_pc}")
for i in range(len(pcs)):
    for j in range(i + 1, len(pcs)):
        print(f"invariant ~{pcs[i]}(T) | ~{pcs[j]}(T)")
