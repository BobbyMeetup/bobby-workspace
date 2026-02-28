#!/usr/bin/env python3
"""
DuckDuckGo web search script for the openclaw web-search skill.

Usage:
    python scripts/search.py "<query>" [options]

Supports web and news search types with filtering by time, region, and safe
search level. Output can be formatted as text, markdown, or JSON and optionally
saved to a file.
"""

import argparse
import json
import sys
import time

try:
    from ddgs import DDGS
except ImportError:
    try:
        from duckduckgo_search import DDGS  # legacy package name fallback
    except ImportError:
        print(
            "ERROR: Missing required dependency.\n"
            "Run: pip install ddgs",
            file=sys.stderr,
        )
        sys.exit(1)


def build_parser():
    parser = argparse.ArgumentParser(
        description="Search the web using DuckDuckGo.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument("query", help="Search query")
    parser.add_argument(
        "-t",
        "--type",
        choices=["web", "news"],
        default="web",
        help="Search type (default: web)",
    )
    parser.add_argument(
        "-n",
        "--max-results",
        type=int,
        default=10,
        metavar="N",
        help="Maximum number of results (default: 10)",
    )
    parser.add_argument(
        "--time-range",
        choices=["d", "w", "m", "y"],
        default=None,
        metavar="RANGE",
        help="Filter by recency: d=day, w=week, m=month, y=year",
    )
    parser.add_argument(
        "--region",
        default="wt-wt",
        metavar="REGION",
        help="Region code, e.g. us-en, uk-en, wt-wt (default: wt-wt)",
    )
    parser.add_argument(
        "--safe-search",
        choices=["on", "moderate", "off"],
        default="moderate",
        dest="safe_search",
        help="Safe search level (default: moderate)",
    )
    parser.add_argument(
        "--backend",
        choices=["duckduckgo"],
        default="duckduckgo",
        help="Search backend (default: duckduckgo; reserved for future providers)",
    )
    parser.add_argument(
        "-f",
        "--format",
        choices=["text", "markdown", "json"],
        default="text",
        help="Output format (default: text)",
    )
    parser.add_argument(
        "-o",
        "--output",
        metavar="FILE",
        help="Save results to a file instead of printing to stdout",
    )
    return parser


def run_search(args):
    """Execute the search and return a list of result dicts."""
    safesearch_map = {"on": "on", "moderate": "moderate", "off": "off"}

    for attempt in (1, 2):
        try:
            ddgs = DDGS()
            if args.type == "news":
                results = ddgs.news(
                    args.query,
                    region=args.region,
                    safesearch=safesearch_map[args.safe_search],
                    timelimit=args.time_range,
                    max_results=args.max_results,
                )
            else:
                results = ddgs.text(
                    args.query,
                    region=args.region,
                    safesearch=safesearch_map[args.safe_search],
                    timelimit=args.time_range,
                    max_results=args.max_results,
                )
            return list(results)
        except Exception as exc:
            if attempt == 1:
                print(
                    f"Search failed ({exc}), retrying in 3 seconds...",
                    file=sys.stderr,
                )
                time.sleep(3)
            else:
                print(f"ERROR: Search failed after retry: {exc}", file=sys.stderr)
                sys.exit(1)


def format_text(results, search_type):
    lines = []
    for i, r in enumerate(results, 1):
        if search_type == "news":
            lines.append(f"{i}. {r.get('title', '(no title)')}")
            if r.get("source"):
                lines.append(f"   Source: {r['source']}")
            if r.get("date"):
                lines.append(f"   Date: {r['date']}")
            lines.append(f"   URL: {r.get('url', r.get('href', ''))}")
            if r.get("body"):
                lines.append(f"   {r['body']}")
        else:
            lines.append(f"{i}. {r.get('title', '(no title)')}")
            lines.append(f"   URL: {r.get('href', r.get('url', ''))}")
            if r.get("body"):
                lines.append(f"   {r['body']}")
        lines.append("")
    return "\n".join(lines).rstrip()


def format_markdown(results, search_type):
    lines = []
    for i, r in enumerate(results, 1):
        if search_type == "news":
            url = r.get("url", r.get("href", ""))
            lines.append(f"## {i}. [{r.get('title', '(no title)')}]({url})")
            meta = []
            if r.get("source"):
                meta.append(f"**Source:** {r['source']}")
            if r.get("date"):
                meta.append(f"**Date:** {r['date']}")
            if meta:
                lines.append(" | ".join(meta))
            if r.get("body"):
                lines.append("")
                lines.append(r["body"])
        else:
            url = r.get("href", r.get("url", ""))
            lines.append(f"## {i}. [{r.get('title', '(no title)')}]({url})")
            if r.get("body"):
                lines.append("")
                lines.append(r["body"])
        lines.append("")
    return "\n".join(lines).rstrip()


def format_json(results):
    return json.dumps(results, indent=2, ensure_ascii=False)


def main():
    parser = build_parser()
    args = parser.parse_args()

    if not args.query.strip():
        parser.error("Query cannot be empty.")

    results = run_search(args)

    if not results:
        print("No results found. Try broader search terms or remove time filters.", file=sys.stderr)
        sys.exit(0)

    if args.format == "json":
        output = format_json(results)
    elif args.format == "markdown":
        output = format_markdown(results, args.type)
    else:
        output = format_text(results, args.type)

    if args.output:
        with open(args.output, "w", encoding="utf-8") as f:
            f.write(output)
        print(f"Results saved to {args.output} ({len(results)} results)", file=sys.stderr)
    else:
        print(output)


if __name__ == "__main__":
    main()
