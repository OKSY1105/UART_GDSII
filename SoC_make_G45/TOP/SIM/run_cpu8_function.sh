#!/usr/bin/env bash
set -euo pipefail

sim_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
top_dir=$(cd -- "$sim_dir/.." && pwd)
cpu_dir="$top_dir/RTL/cpu8"
tb_dir="$sim_dir/TESTBENCH"
required=(
  "$tb_dir/tb_cpu8_top.sv" "$tb_dir/cpu8_smoke.hex"
  "$cpu_dir/cpu8_top.v" "$cpu_dir/cpu8_decoder.v"
  "$cpu_dir/cpu8_regfile.v" "$cpu_dir/cpu8_alu.v" "$cpu_dir/cpu8_isa.vh"
)
for file in "${required[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "CPU8_RTL_SIM_PREFLIGHT=FAIL missing $file" >&2
    exit 2
  fi
done
if ! command -v xrun >/dev/null 2>&1; then
  echo "CPU8_RTL_SIM_PREFLIGHT=FAIL missing xrun" >&2
  exit 2
fi
echo "CPU8_RTL_SIM_PREFLIGHT=PASS"

run_id=$(date +%Y%m%d_%H%M%S)_$$
run_dir="$sim_dir/cpu8_runs/$run_id"
mkdir -p "$run_dir"
cp -- "$tb_dir/cpu8_smoke.hex" "$run_dir/"
echo "CPU8_RTL_SIM_RUN_DIR=$run_dir"
if ! (
  cd "$run_dir"
  xrun -64bit -sv -top tb_cpu8_top -incdir "$cpu_dir" \
    "$tb_dir/tb_cpu8_top.sv" \
    "$cpu_dir/cpu8_top.v" "$cpu_dir/cpu8_decoder.v" \
    "$cpu_dir/cpu8_regfile.v" "$cpu_dir/cpu8_alu.v" \
    -l xrun.log > console.log 2>&1
); then
  echo "CPU8_RTL_SIM=FAIL see $run_dir/console.log" >&2
  exit 1
fi
if ! grep -q 'CPU8_RTL_SIM=PASS' "$run_dir/xrun.log"; then
  echo "CPU8_RTL_SIM=FAIL missing PASS marker in $run_dir/xrun.log" >&2
  exit 1
fi
grep 'CPU8_RTL_SIM=PASS' "$run_dir/xrun.log"
