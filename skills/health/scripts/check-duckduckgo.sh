#!/usr/bin/env bash
# Health check: DuckDuckGo reachability
DDG_URL="https://html.duckduckgo.com/html/?q=healthcheck"

http_code=$(curl -sf --max-time 8 -o /dev/null -w "%{http_code}" "$DDG_URL" 2>/dev/null)
exit_code=$?

if [ $exit_code -ne 0 ] || [ -z "$http_code" ]; then
  echo "FAIL  duckduckgo — not reachable (curl exit $exit_code)"
  exit 1
fi

# DuckDuckGo returns 2xx or 3xx for healthy responses
if [[ "$http_code" =~ ^[23] ]]; then
  echo "OK    duckduckgo — reachable (HTTP $http_code)"
else
  echo "FAIL  duckduckgo — unexpected HTTP $http_code"
  exit 1
fi
