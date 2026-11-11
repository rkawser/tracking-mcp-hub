# Google Analytics 4

## Official (experimental) — googleanalytics/google-analytics-mcp
- **Repo:** https://github.com/googleanalytics/google-analytics-mcp
- **Package:** `analytics-mcp` on PyPI
- **Access:** read-only (Admin API + Data API) — properties, reports, realtime.
```bash
claude mcp add analytics-mcp --scope user \
  -e GOOGLE_APPLICATION_CREDENTIALS=$GOOGLE_APPLICATION_CREDENTIALS \
  -e GOOGLE_PROJECT_ID=$GOOGLE_PROJECT_ID \
  -- pipx run analytics-mcp
```

## Community
| Repo | Notes |
|---|---|
| `surendranb/google-analytics-mcp` | 200+ dimensions & metrics, service account |
| `mcp-google-analytics` (npm) | Data API + **Measurement Protocol** (can send test events — useful for tracking QA) |
