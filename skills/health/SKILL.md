---
name: health
description: >
  Check the operational status of services used by this workspace. Runs lightweight,
  no-credential probes against Ollama, ChromaDB (placeholder), DuckDuckGo, and CoinGecko.
  Use during heartbeats or whenever you suspect a service is down.
---

# Service Health Checks

Quick, plug-and-play scripts to verify that key services are up and responding. No credentials required.

## Run All Checks

```bash
bash /home/bobby/.openclaw/workspace/skills/health/scripts/check-all.sh
```

Sample output:

```
============================================
 Service Health Check — 2026-02-28 22:05:12
============================================
  OK    ollama     — 1 model(s) loaded: nomic-embed-text:latest
  SKIP  chromadb   — placeholder (not yet configured, expected at http://localhost:8000)
  OK    duckduckgo — reachable (HTTP 202)
  OK    coingecko  — API reachable and responding
--------------------------------------------
  Passed: 3  |  Failed: 0  |  Skipped: 1
============================================
```

Exit code is `0` if no failures, `1` if any check failed.

## Run Individual Checks

```bash
bash /home/bobby/.openclaw/workspace/skills/health/scripts/check-ollama.sh
bash /home/bobby/.openclaw/workspace/skills/health/scripts/check-chromadb.sh   # placeholder
bash /home/bobby/.openclaw/workspace/skills/health/scripts/check-duckduckgo.sh
bash /home/bobby/.openclaw/workspace/skills/health/scripts/check-coingecko.sh
```

Each script prints a single line prefixed with `OK`, `FAIL`, or `SKIP` and exits with `0` / `1` accordingly.

## Services

| Service | Script | What it checks |
|---------|--------|----------------|
| Ollama | `check-ollama.sh` | Server reachable + lists loaded models |
| ChromaDB | `check-chromadb.sh` | **Placeholder** — skipped until service is configured |
| DuckDuckGo | `check-duckduckgo.sh` | Public search endpoint returns 2xx/3xx |
| CoinGecko | `check-coingecko.sh` | Public `/ping` endpoint responds correctly |

## Configuration

All scripts respect environment variable overrides (no config file needed):

| Variable | Default | Used by |
|----------|---------|---------|
| `OLLAMA_URL` | `http://localhost:11434` | `check-ollama.sh` |
| `CHROMA_URL` | `http://localhost:8000` | `check-chromadb.sh` |

## Adding a New Service Check

1. Copy any existing script in `scripts/` as a template
2. Make it print a line starting with `OK`, `FAIL`, or `SKIP`
3. Exit with `0` on success, `1` on failure
4. Add the filename to the `checks` array in `check-all.sh`

## ChromaDB (Placeholder)

`check-chromadb.sh` currently just prints `SKIP` — it won't fail the overall health check. Once ChromaDB is set up, replace the script body with a real probe (e.g., `GET /api/v1/heartbeat` against the ChromaDB HTTP server).
