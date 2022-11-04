#!/usr/bin/env bash


pcs="lock_acq|lock_set_wait|futex_wait|kernel_wait|lock_acq2|unlock_sub|unlock_store|futex_wake|finished"

sed -E 's/(lock_free|lock_w0|lock_ws)/($l2s_s. \1)/g' |
  sed -E "s/($pcs)\(([^)]*)\)/(\$l2s_s T. \\1(T))(\2)/g" |
  sed -E "s/invariant (.*)/invariant l2s_saved -> (\1)/"
