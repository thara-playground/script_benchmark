#!/bin/bash

echo "========================================"
echo "  Performance Benchmark: Ruby / Python / Bun"
echo "========================================"
echo ""

extract_time() {
  grep -oP '(?<=Time: )\S+' | tr -d 's'
}

printf "%-12s %-10s %-10s %-10s\n" "Benchmark" "Ruby" "Python" "Bun"
printf "%-12s %-10s %-10s %-10s\n" "-----------" "--------" "--------" "--------"

# Fibonacci
ruby_fib=$(ruby fib/fib.rb 2>&1 | grep 'Time:' | awk '{print $2}')
python_fib=$(python3 fib/fib.py 2>&1 | grep 'Time:' | awk '{print $2}')
bun_fib=$(bun run fib/fib.ts 2>&1 | grep 'Time:' | awk '{print $2}')
printf "%-12s %-10s %-10s %-10s\n" "Fibonacci" "$ruby_fib" "$python_fib" "$bun_fib"

# File I/O
ruby_fio=$(ruby file_io/file_io.rb 2>&1 | grep 'Time:' | awk '{print $2}')
python_fio=$(python3 file_io/file_io.py 2>&1 | grep 'Time:' | awk '{print $2}')
bun_fio=$(bun run file_io/file_io.ts 2>&1 | grep 'Time:' | awk '{print $2}')
printf "%-12s %-10s %-10s %-10s\n" "File I/O" "$ruby_fio" "$python_fio" "$bun_fio"

# JSON
ruby_json=$(ruby json/json_bench.rb 2>&1 | grep 'Time:' | awk '{print $2}')
python_json=$(python3 json/json_bench.py 2>&1 | grep 'Time:' | awk '{print $2}')
bun_json=$(bun run json/json_bench.ts 2>&1 | grep 'Time:' | awk '{print $2}')
printf "%-12s %-10s %-10s %-10s\n" "JSON" "$ruby_json" "$python_json" "$bun_json"

echo ""
echo "Done."
