# Snapchat Ads

## Official — Snapchat Ads MCP Server (launched Aug 2026)
- **Endpoint:** `https://mcp.snapchat.com/ads`
- **Auth:** Snapchat Ads credentials → Organization Admin approval → per-user authorisation. Each AI client (Claude, ChatGPT, Gemini) is approved separately.
- **Access:** read-only at launch; write planned as opt-in per agent.
- Claude Code: `claude mcp add --transport http snapchat-ads https://mcp.snapchat.com/ads`

## Community
| Repo | Notes |
|---|---|
| `saadsh0/snapchat-ads-mcp` | `pip install snapchat-ads-mcp` / `uvx snapchat-ads-mcp`, includes budget updates, multi-client config |
| `cdatasoftware/snapchat-ads-mcp-server-by-cdata` | Read-only, needs CData JDBC licence |
