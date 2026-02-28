#!/usr/bin/env bash
# Quick cryptocurrency price lookup using CoinGecko API
# Usage: bash price.sh <coin_id> [currencies]
# Example: bash price.sh bitcoin usd,eur
# Example: bash price.sh bitcoin,ethereum,solana

set -euo pipefail

COINS="${1:-bitcoin}"
CURRENCIES="${2:-usd}"

if [ -f ~/.openclaw/.env ]; then
  export $(grep -v '^#' ~/.openclaw/.env | xargs)
fi

API_KEY="${COINGECKO_API_KEY:-}"

BASE_URL="https://api.coingecko.com/api/v3"

# Add API key header if available
if [ -n "$API_KEY" ]; then
  HEADERS=(-H "x-cg-demo-api-key: $API_KEY")
else
  HEADERS=()
fi

# Fetch simple price
RESPONSE=$(curl -s "${HEADERS[@]}" \
  "$BASE_URL/simple/price?ids=$COINS&vs_currencies=$CURRENCIES&include_24hr_change=true")

# Check for errors
if echo "$RESPONSE" | jq -e '.status.error_message' >/dev/null 2>&1; then
  echo "Error: $(echo "$RESPONSE" | jq -r '.status.error_message')" >&2
  exit 1
fi

# Parse and format output
echo "$RESPONSE" | jq -r '
  to_entries[] |
  . as $coin |
  $coin.value |
  to_entries[] |
  select(.key | endswith("_24h_change") | not) |
  .key as $currency |
  .value as $price |
  ($coin.value[($currency + "_24h_change")] // null) as $change |
  "\($coin.key): \($currency | ascii_upcase) \($price)\(if $change then " (24h: \(if $change > 0 then "+" else "" end)\($change | tostring | .[0:5])%)" else "" end)"
'
