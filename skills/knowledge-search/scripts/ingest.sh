#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

export DATA_DIR="${SKILL_DIR}/data"
export CHROMA_PERSIST_DIR="${CHROMA_PERSIST_DIR:-$HOME/.openclaw/chroma/knowledge-search}"
export CHROMA_COLLECTION="${CHROMA_COLLECTION:-support-articles}"
export OLLAMA_URL="${OLLAMA_URL:-http://localhost:11434}"
export EMBEDDING_MODEL="${EMBEDDING_MODEL:-nomic-embed-text}"
export CHUNK_SIZE="${CHUNK_SIZE:-1500}"
export CHUNK_OVERLAP="${CHUNK_OVERLAP:-200}"

exec python3 "${SCRIPT_DIR}/ingest_runner.py" \
    "$DATA_DIR" "$CHROMA_PERSIST_DIR" "$CHROMA_COLLECTION" \
    "$OLLAMA_URL" "$EMBEDDING_MODEL" "$CHUNK_SIZE" "$CHUNK_OVERLAP"
