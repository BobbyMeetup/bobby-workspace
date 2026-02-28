#!/usr/bin/env bash
# Health check: Ollama server
OLLAMA_URL="${OLLAMA_URL:-http://localhost:11434}"

response=$(curl -sf --max-time 5 "$OLLAMA_URL/api/tags" 2>/dev/null)
if [ $? -ne 0 ]; then
  echo "FAIL  ollama  — not reachable at $OLLAMA_URL"
  exit 1
fi

model_count=$(echo "$response" | python3 -c "import sys,json; d=json.load(sys.stdin); print(len(d.get('models', [])))" 2>/dev/null)
models=$(echo "$response" | python3 -c "import sys,json; d=json.load(sys.stdin); print(', '.join(m['name'] for m in d.get('models', [])))" 2>/dev/null)

echo "OK    ollama  — $model_count model(s) loaded: $models"
