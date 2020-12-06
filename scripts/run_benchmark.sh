#!/bin/bash

set -eu -o pipefail

ROOT="$( cd "$(dirname "$0")" ; pwd -P)/.."

cd "$ROOT"

make

printf '=%.0s' {1..180}
echo
echo "MicroPyTorch"
taskset -c 0 build/upytorch benchmark/simple_add.py
echo

printf '=%.0s' {1..180}
echo
echo "PyTorch"
taskset -c 0 python3 benchmark/simple_add.py
echo