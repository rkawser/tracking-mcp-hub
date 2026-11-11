# Meta Ads (Facebook + Instagram)

## Official — Meta Ads AI Connectors (open beta since 29 Apr 2026)
- **Endpoint:** `https://mcp.facebook.com/ads`
- **Auth:** Facebook Login for Business (no developer app needed)
- **Access:** read + write — reporting, campaign management, catalog, dataset/pixel diagnostics. New entities are created **paused**.
- **Governance:** business portfolio admins can set "ads MCP server rules" limiting what agents can do.
- **Docs:** https://developers.facebook.com/documentation/ads-commerce/ads-ai-connectors/ads-mcp-server/ads-mcp-server-overview
- **CLI companion:** `npm install -g @meta/ads-cli`

### Connect
- claude.ai / Desktop: Settings → Connectors → Add custom connector → `https://mcp.facebook.com/ads` → Connect → sign in → share only the needed business portfolio.
- Claude Code: `claude mcp add --transport http meta-ads https://mcp.facebook.com/ads`

## Community alternatives
| Repo | Notes |
|---|---|
| `pipeboard-co/meta-ads-mcp` | Popular; hosted remote option + local `uvx meta-ads-mcp` |
| `byadsco/meta-ads-mcp` | Self-hosted, multi-tenant (agency), 135 tools, tool names aligned with Meta's official server |
| `gomarble-ai/facebook-ads-mcp-server` | Python, token via CLI arg |
