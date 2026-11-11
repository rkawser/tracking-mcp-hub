# Multi-platform servers

## cesteral/mcp-open-advertising (open source)
One repo, many servers: `gads-mcp`, `meta-mcp`, `tiktok-mcp`, `snapchat-mcp`, `pinterest-mcp`, `linkedin-mcp`, `msads-mcp`, `dv360-mcp`, `cm360-mcp`, `sa360-mcp`, `amazon-dsp-mcp`, `ttd-mcp`.
```bash
git clone https://github.com/cesteral/mcp-open-advertising.git
cd mcp-open-advertising && pnpm install && pnpm run build
./scripts/dev-server.sh meta-mcp
```

## Hosted paid aggregators (one connection, many platforms)
Pipeboard, GoMarble, Markifact, Two Minute Reports, Ryze, PaidSync, Presso (Shopify + GA4 + Ads + GTM). Useful for agency cross-channel reporting — but they sit between you and the client's account, so check their data policy before using on client accounts.
