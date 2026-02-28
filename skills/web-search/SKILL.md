---
name: web-search
description: >
  Use when searching the web for current information, news, recent facts, or
  research. Searches DuckDuckGo and returns results as text, markdown, or JSON.
  Supports web pages and news articles with optional filters for time range,
  region, and safe search. No API key required.
---

# Web Search

## Overview

Search the web using DuckDuckGo's API. Returns titles, URLs, and descriptions
for web pages or news articles. Supports filtering by recency, region, and safe
search level. Output can be formatted as plain text, markdown, or JSON.

## When to Use This Skill

Use this skill when the task requires:

- Finding current or recent information not in training data
- Looking up news articles on a topic
- Fact-checking claims with live web sources
- Gathering URLs and summaries for research or documentation
- Verifying whether something exists or is publicly known

## Prerequisites

The required library must be installed:

```bash
pip install ddgs
```

No API key or account is needed.

## Core Usage

### Basic Web Search

```bash
python scripts/search.py "<query>"
```

Returns the top 10 web results as plain text.

### News Search

```bash
python scripts/search.py "<query>" --type news
```

Returns news articles with source and publication date.

### Limit Results

```bash
python scripts/search.py "<query>" --max-results 5
```

### Filter by Recency

```bash
python scripts/search.py "<query>" --time-range w
```

Time range options:
- `d` — past day
- `w` — past week
- `m` — past month
- `y` — past year

### Region-Specific Results

```bash
python scripts/search.py "<query>" --region us-en
```

Common region codes: `us-en`, `uk-en`, `ca-en`, `au-en`, `wt-wt` (worldwide, default)

### Output Formats

```bash
python scripts/search.py "<query>" --format markdown
python scripts/search.py "<query>" --format json
```

### Save Results to File

```bash
python scripts/search.py "<query>" --format markdown --output results.md
```

### Safe Search

```bash
python scripts/search.py "<query>" --safe-search on
```

Options: `on`, `moderate` (default), `off`

## Full CLI Reference

```
python scripts/search.py "<query>" [options]

Positional:
  query               Search query (required)

Options:
  -t, --type          web (default) | news
  -n, --max-results   Number of results (default: 10)
  --time-range        d | w | m | y
  --region            Region code (default: wt-wt)
  --safe-search       on | moderate (default) | off
  -f, --format        text (default) | markdown | json
  -o, --output        Save results to a file path
  --backend           duckduckgo (default; reserved for future providers)
  -h, --help          Show help
```

## Output Examples

### Text (default)

```
1. Page Title
   URL: https://example.com/page
   A brief description of the page content.

2. Another Result
   URL: https://example.com/another
   Another description.
```

### Markdown

```markdown
## 1. [Page Title](https://example.com/page)

A brief description of the page content.

## 2. [Another Result](https://example.com/another)

Another description.
```

### JSON

```json
[
  {
    "title": "Page Title",
    "href": "https://example.com/page",
    "body": "A brief description of the page content."
  }
]
```

## Implementation Approach

When a user needs web information:

1. Identify search intent — web pages for general research, news for current events
2. Set `--time-range` if currency matters
3. Use `--format markdown` when presenting results to the user; `json` for further processing
4. Default to 10 results; increase only if the user needs more coverage
5. If results are poor, broaden the query or remove the time filter

## Best Practices

- Be specific in queries — include key phrases and context
- Use `--type news` and `--time-range d` or `w` for current events
- Use `--format json` when piping results to another script
- Use `--output` to preserve results for later reference
- Do not hammer the API with rapid repeated requests — DuckDuckGo may rate-limit

## Troubleshooting

**"Missing required dependency"**
Run: `pip install ddgs`

**No results returned**
Try broader search terms or remove `--time-range`.

**Timeout or network errors**
The script automatically retries once after 3 seconds. If it fails again, the
API may be temporarily unavailable — wait a moment and try again.

**Rate limiting**
Space out searches if making many requests in a short time.

## Future Considerations

### Additional Search Backends

The `--backend` flag is reserved for future providers. Planned candidates:

- **Tavily** — AI/LLM-optimized results, 1,000 free calls/month, no credit card required
- **Brave Search API** — Requires a credit card for the paid tier
- **Serper** — Google-backed results via API

Adding a new backend means implementing it in `scripts/search.py` behind the
same CLI interface so `SKILL.md` stays unchanged.

### Web Fetch (Page Content)

`web_fetch` (fetching the full content of result pages) is currently disabled
for security. Enabling it would allow the agent to read the full text of pages
rather than just snippets, which can significantly improve answer quality for
research tasks. Consider enabling it in the future once the security tradeoffs
have been evaluated.

### Image and Video Search

Image and video search types are supported by the `ddgs` library but deferred
to a future iteration of this skill.
