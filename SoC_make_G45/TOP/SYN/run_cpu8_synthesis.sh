#!/usr/bin/env bash
set -euo pipefail

# CPU-only GPDK045 synthesis. No ROM, RAM, UART, or SoC top is read.
syn_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
top_dir=$(cd -- "$syn_dir/.." && pwd)
cpu_dir="$top_dir/RTL/cpu8"
script="$syn_dir/script/cpu8_45nm.tcl"
sdc="$syn_dir/cons/cpu8_top.sdc"
dont_use="$syn_dir/cons/dont_use_45nm.tcl"
pdk=/GPDK045/digital
required=(
  "$script" "$sdc" "$dont_use"
  "$cpu_dir/cpu8_top.v" "$cpu_dir/cpu8_alu.v"
  "$cpu_dir/cpu8_decoder.v" "$cpu_dir/cpu8_regfile.v"
  "$cpu_dir/cpu8_isa.vh"
  "$pdk/gsclib045_all_v4.4/gsclib045/timing/fast_vdd1v0_basicCells.lib"
  "$pdk/gsclib045_all_v4.4/gsclib045/timing/slow_vdd1v0_basicCells.lib"
  "$pdk/gsclib045_all_v4.4/gsclib045_tech/lef/gsclib045_tech.lef"
  "$pdk/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef"
  "$pdk/gsclib045_all_v4.4/gsclib045/qrc/qx/gpdk045.tch"
)
bad=0
for file in "${required[@]}"; do
  if [[ ! -f "$file" ]]; then echo "MISSING: $file"; bad=1; fi
done
if ! command -v genus >/dev/null 2>&1; then echo 'MISSING: genus'; bad=1; fi
if (( bad )); then echo 'CPU8_SYN_PREFLIGHT=FAIL'; exit 2; fi
echo 'CPU8_SYN_PREFLIGHT=PASS'
if [[ "${1:-}" == '--dry-run' ]]; then exit 0; fi
if [[ $# -ne 0 ]]; then echo "Usage: $0 [--dry-run]" >&2; exit 2; fi

run_dir="$syn_dir"
log_dir="$syn_dir/cpu8_log"
mapped_dir="$syn_dir/cpu8_mapped"
unmapped_dir="$syn_dir/cpu8_unmapped"
mkdir -p "$log_dir" "$syn_dir/cpu8_report" "$mapped_dir" "$unmapped_dir"
export CPU8_TOP_DIR="$top_dir" CPU8_SYN_RUN_DIR="$run_dir"
touch "$log_dir/run_started"
echo "CPU8_MAPPED_DIR=$mapped_dir"
echo "CPU8_UNMAPPED_DIR=$unmapped_dir"
if ! (cd "$syn_dir" && genus -f "$script" -log "$log_dir/genus.log" >"$log_dir/console.log" 2>&1); then
  echo "CPU8_SYN=FAIL see $log_dir/console.log"; exit 1
fi
for file in cpu8_top_syn_final.v cpu8_top_syn_final.sdc cpu8_top_delays.sdf; do
  if [[ ! -s "$mapped_dir/$file" || ! "$mapped_dir/$file" -nt "$log_dir/run_started" ]]; then
    echo "CPU8_SYN=FAIL missing or stale output: $mapped_dir/$file"; exit 1
  fi
done
if [[ ! -s "$unmapped_dir/cpu8_top_generic.db" ||
      ! "$unmapped_dir/cpu8_top_generic.db" -nt "$log_dir/run_started" ]]; then
  echo "CPU8_SYN=FAIL missing or stale output: $unmapped_dir/cpu8_top_generic.db"; exit 1
fi
if grep -Eq '\*\*ERROR|^ERROR:' "$log_dir/console.log"; then
  echo "CPU8_SYN=FAIL errors in $log_dir/console.log"; exit 1
fi
echo 'CPU8_SYN=PASS'
