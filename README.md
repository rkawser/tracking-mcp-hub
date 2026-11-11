# Tracking & Ads MCP Hub

My personal toolkit of MCP (Model Context Protocol) servers for ad platforms, tag management and analytics — so any AI client (Claude, ChatGPT, Cursor, Gemini) can read campaigns, audit tracking and manage GTM.

Last verified: **November 2026**. MCP servers change fast — re-check the official links before a client job.

## Quick map

| Platform | Server | Official? | Access | Hosting | Folder |
|---|---|---|---|---|---|
| Meta (Facebook + Instagram) Ads | `https://mcp.facebook.com/ads` | ✅ Meta | Read + write (new entities created **paused**) | Hosted, OAuth | [platforms/meta-ads](platforms/meta-ads.md) |
| Google Ads | `googleads/google-ads-mcp` | ✅ Google | Read-only (GAQL search) | Self-hosted (pipx) | [platforms/google-ads](platforms/google-ads.md) |
| Google Tag Manager | `stape-io/google-tag-manager-mcp-server` | Community (Stape) | Read + write | Hosted or npx | [platforms/google-tag-manager](platforms/google-tag-manager.md) |
| Google Analytics 4 | `googleanalytics/google-analytics-mcp` | ✅ Google (experimental) | Read-only | Self-hosted (pipx) | [platforms/google-analytics](platforms/google-analytics.md) |
| TikTok Ads | TikTok for Business MCP | ✅ TikTok | Campaign lifecycle | Hosted | [platforms/tiktok-ads](platforms/tiktok-ads.md) |
| Snapchat Ads | `https://mcp.snapchat.com/ads` | ✅ Snap | Read-only at launch | Hosted, OAuth + org admin approval | [platforms/snapchat-ads](platforms/snapchat-ads.md) |
| Pinterest Ads | Pinterest official MCP | ✅ Pinterest | Read-only at launch | Hosted | [platforms/pinterest-ads](platforms/pinterest-ads.md) |
| Microsoft (Bing) Ads | Microsoft Advertising MCP | ✅ Microsoft | Read-only at launch | Hosted | [platforms/microsoft-ads](platforms/microsoft-ads.md) |
| LinkedIn Ads | community servers | ❌ none official | Varies | Self-hosted | [platforms/linkedin-ads](platforms/linkedin-ads.md) |
| Google Search Console | community servers | ❌ none official | Read | Self-hosted | [platforms/search-console](platforms/search-console.md) |
| Shopify | Shopify Dev MCP | ✅ Shopify | Docs + API schemas | Local | [platforms/shopify](platforms/shopify.md) |
| Multi-platform (one server) | `cesteral/mcp-open-advertising` | Community | Read + write | Self-hosted | [platforms/multi-platform](platforms/multi-platform.md) |

## How to use this repo

1. Copy `.env.example` → `.env` and fill in only the platforms you need. **Never commit `.env`.**
2. **Claude Code:** run `bash configs/claude-code-add.sh` (edit it first — comment out what you don't need).
3. **Claude Desktop / claude.ai:** hosted servers (Meta, TikTok, Snapchat, Pinterest, Microsoft, Stape GTM) → *Settings → Connectors → Add custom connector* and paste the URL. For local servers, merge `configs/claude_desktop_config.json` into your Claude Desktop config.
4. **Cursor:** copy `configs/cursor-mcp.json` to `~/.cursor/mcp.json`.

## Tracking-specialist workflow ideas

- **GTM audit:** "List every tag in container X, flag tags with no trigger, duplicate GA4 events, and Meta/TikTok pixels that fire on All Pages instead of conversion events."
- **dataLayer QA:** pair GTM MCP + GA4 MCP: "Compare the `purchase` events configured in GTM with what GA4 actually received in the last 7 days."
- **Meta signal health:** Meta's official server includes dataset/pixel tools — ask for event match quality and CAPI dedup issues.
- **Cross-platform conversion reconciliation:** pull conversions from Meta, Google Ads, TikTok and GA4 for the same date range and compare.

## Safety rules

- Prefer **official** servers for client accounts. Community servers can break when APIs change.
- Write-capable servers: always review changes, keep GTM edits in a **workspace** and publish manually.
- Google tightened its Ads API developer policy in 2026 to restrict hosted third-party wrappers — run Google's own server on your own GCP project for client work.
- Use per-client access (business portfolio / MCC scope) — share only the account you need.

See [CHANGELOG.md](CHANGELOG.md) for what changed and when.
