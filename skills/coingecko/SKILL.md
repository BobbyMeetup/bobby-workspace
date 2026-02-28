---
name: coingecko
description: >
  Cryptocurrency price data and market info via CoinGecko API. Use when you need to check crypto prices,
  market caps, 24h volume, price changes, or get coin/token information. Supports both free tier (no API key)
  and authenticated requests (API key from 1Password for higher rate limits).
---

# CoinGecko Price Data

Lightweight crypto price lookups using CoinGecko's API. Zero memory overhead when not in use.

## Quick Start

**Get current price (free tier):**
```bash
bash /home/bobby/.openclaw/workspace/skills/coingecko/scripts/price.sh bitcoin
bash /home/bobby/.openclaw/workspace/skills/coingecko/scripts/price.sh ethereum usd,btc
```

**Get detailed info:**
```bash
bash /home/bobby/.openclaw/workspace/skills/coingecko/scripts/coin.sh bitcoin
```

**Multiple coins at once:**
```bash
bash /root/.openclaw/workspace/skills/coingecko/scripts/price.sh bitcoin,ethereum,solana
```

## API Key

**API key is configured!** The key is stored in `~/.openclaw/.env` as `COINGECKO_API_KEY` and loaded automatically by the scripts.

**Rate limits with API key:** Higher than free tier (50 calls/min).

The scripts load `~/.openclaw/.env` automatically.

## Common Use Cases

### Price Check
```bash
# Single coin
bash scripts/price.sh bitcoin

# Multiple currencies
bash scripts/price.sh ethereum usd,eur,gbp

# Multiple coins
bash scripts/price.sh bitcoin,ethereum,cardano
```

### Market Stats
```bash
# Full details: price, market cap, volume, 24h change, ATH, etc.
bash scripts/coin.sh solana
```

### Trending Coins
```bash
# Top trending coins (requires API key for best results)
curl -s "https://api.coingecko.com/api/v3/search/trending" | jq '.coins[].item | {name, symbol, price_btc, market_cap_rank}'
```

## Output Format

**Simple price:**
```
bitcoin: $43,250.00 (24h: +2.5%)
```

**Detailed coin info (JSON):**
```json
{
  "id": "bitcoin",
  "symbol": "btc",
  "name": "Bitcoin",
  "current_price": 43250,
  "market_cap": 845000000000,
  "market_cap_rank": 1,
  "price_change_24h": 1050.25,
  "price_change_percentage_24h": 2.49
}
```

## Rate Limits

- **Free tier:** 50 calls/minute
- **With API key:** Higher limits based on plan
- **Pay-per-use (x402):** New model designed for AI agents — no subscription needed

## Coin IDs

Common IDs: `bitcoin`, `ethereum`, `solana`, `cardano`, `polkadot`, `avalanche-2`, `chainlink`, `uniswap`

To find a coin ID:
```bash
curl -s "https://api.coingecko.com/api/v3/search?query=wrapped+bitcoin" | jq '.coins[] | {id, name, symbol}'
```

## Resources

### scripts/

**`price.sh`** — Quick price lookup (simple output)
- Usage: `bash price.sh <coin_id> [currencies]`
- Default currency: `usd`
- Supports multiple coins (comma-separated)
- Supports multiple currencies (comma-separated)

**`coin.sh`** — Detailed coin information (JSON output)
- Usage: `bash coin.sh <coin_id>`
- Returns full market data, price history, and metadata
