#!/usr/bin/env bash
# Detailed cryptocurrency information using CoinGecko API
# Usage: bash coin.sh <coin_id>
# Example: bash coin.sh bitcoin

set -euo pipefail

COIN="${1:-bitcoin}"

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

# Fetch detailed coin info
RESPONSE=$(curl -s "${HEADERS[@]}" \
  "$BASE_URL/coins/$COIN?localization=false&tickers=false&community_data=false&developer_data=false")

# Check for errors
if echo "$RESPONSE" | jq -e '.error' >/dev/null 2>&1; then
  echo "Error: $(echo "$RESPONSE" | jq -r '.error')" >&2
  exit 1
fi

# Parse and output key information
echo "$RESPONSE" | jq '{
  id: .id,
  symbol: .symbol,
  name: .name,
  current_price: .market_data.current_price.usd,
  market_cap: .market_data.market_cap.usd,
  market_cap_rank: .market_cap_rank,
  total_volume: .market_data.total_volume.usd,
  high_24h: .market_data.high_24h.usd,
  low_24h: .market_data.low_24h.usd,
  price_change_24h: .market_data.price_change_24h,
  price_change_percentage_24h: .market_data.price_change_percentage_24h,
  price_change_percentage_7d: .market_data.price_change_percentage_7d,
  price_change_percentage_30d: .market_data.price_change_percentage_30d,
  ath: .market_data.ath.usd,
  ath_date: .market_data.ath_date.usd,
  atl: .market_data.atl.usd,
  atl_date: .market_data.atl_date.usd,
  circulating_supply: .market_data.circulating_supply,
  total_supply: .market_data.total_supply,
  max_supply: .market_data.max_supply
}'
