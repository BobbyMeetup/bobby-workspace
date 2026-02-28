#!/usr/bin/env bash
# Run all health checks and summarize results
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

checks=(
  check-ollama.sh
  check-chromadb.sh
  check-duckduckgo.sh
  check-coingecko.sh
)

pass=0
fail=0
skip=0
results=()

for check in "${checks[@]}"; do
  script="$SCRIPT_DIR/$check"
  if [ ! -f "$script" ]; then
    results+=("MISSING $check")
    ((fail++))
    continue
  fi
  output=$(bash "$script" 2>&1)
  results+=("$output")
  if echo "$output" | grep -q "^OK"; then
    ((pass++))
  elif echo "$output" | grep -q "^SKIP"; then
    ((skip++))
  else
    ((fail++))
  fi
done

echo "============================================"
echo " Service Health Check — $(date '+%Y-%m-%d %H:%M:%S')"
echo "============================================"
for r in "${results[@]}"; do
  echo "  $r"
done
echo "--------------------------------------------"
echo "  Passed: $pass  |  Failed: $fail  |  Skipped: $skip"
echo "============================================"

[ $fail -eq 0 ] && exit 0 || exit 1
