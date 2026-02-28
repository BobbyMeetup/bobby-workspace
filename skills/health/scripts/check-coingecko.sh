#!/usr/bin/env bash
# Health check: CoinGecko public API
COINGECKO_URL="https://api.coingecko.com/api/v3/ping"

response=$(curl -sf --max-time 8 "$COINGECKO_URL" 2>/dev/null)
exit_code=$?

if [ $exit_code -ne 0 ]; then
  echo "FAIL  coingecko — not reachable (curl exit $exit_code)"
  exit 1
fi

# Response should contain gecko_says
if echo "$response" | grep -q "gecko_says"; then
  echo "OK    coingecko — API reachable and responding"
else
  echo "FAIL  coingecko — unexpected response: $response"
  exit 1
fi
