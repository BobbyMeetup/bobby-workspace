---
name: knowledge-search
description: >
  Support knowledge base backed by ChromaDB vector search. Use when you need to look up support articles,
  troubleshoot issues, or answer questions using the support documentation. Raw articles live in data/
  and are indexed into ChromaDB for semantic retrieval via Ollama (nomic-embed-text).
---

# Support Knowledge Base

Semantic search over support articles using ChromaDB + Ollama local embeddings. Drop raw articles into `data/`, ingest them, then query by natural language.

## Quick Start

**Ingest articles into ChromaDB:**
```bash
bash /home/bobby/.openclaw/workspace/skills/knowledge-search/scripts/ingest.sh
```

**Query the knowledge base:**
```bash
bash /home/bobby/.openclaw/workspace/skills/knowledge-search/scripts/query.sh "how do I reset my password"
```

## Directory Structure

```
knowledge-search/
  SKILL.md              # This file
  data/                 # Raw support articles (markdown, txt)
  scripts/
    ingest.sh           # Shell wrapper -- calls ingest_runner.py
    ingest_runner.py    # Python ingestion logic (chunking + embedding)
    query.sh            # Semantic search against the index
```

## Adding Articles

Drop markdown or text files into `data/`. Any structure works:

```
data/
  account-recovery.md
  billing-faq.md
  getting-started.md
  troubleshooting/
    login-issues.md
    payment-errors.md
```

After adding or updating articles, re-run `ingest.sh` to rebuild the index.

## Configuration

| Variable | Default | Description |
|----------|---------|-------------|
| `CHROMA_PERSIST_DIR` | `~/.openclaw/chroma/knowledge-search` | Where ChromaDB stores its data |
| `CHROMA_COLLECTION` | `support-articles` | Collection name |
| `EMBEDDING_MODEL` | `nomic-embed-text` | Ollama model used for embeddings |
| `OLLAMA_URL` | `http://localhost:11434` | Ollama server base URL |
| `CHUNK_SIZE` | `1500` | Max characters per chunk |
| `CHUNK_OVERLAP` | `200` | Overlap between chunks |

## Resources

### data/

Raw support articles in markdown or text format. These are the source of truth -- edit them directly and re-ingest.

### scripts/

**`ingest.sh`** -- Index all articles from `data/` into ChromaDB
- Reads every `.md` and `.txt` file in `data/` (recursive)
- Chunks at paragraph boundaries with overlap for context
- Upserts by content-addressed ID (safe to re-run)
- Embeds via Ollama `nomic-embed-text` (same model as OpenClaw memorySearch)

**`query.sh`** -- Semantic search
- Usage: `bash query.sh "<natural language question>" [n_results]`
- Default: returns top 3 results
- Output: JSON with rank, title, source file, distance score, and excerpt
