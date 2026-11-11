# Google Tag Manager

No Google-official GTM MCP. Two strong community options:

## Stape — stape-io/google-tag-manager-mcp-server (recommended)
- **Repo:** https://github.com/stape-io/google-tag-manager-mcp-server (Apache-2.0)
- **Hosted endpoint:** `https://gtm-mcp.stape.ai/mcp` (Google OAuth built in)
- **Access:** full read/write — accounts, containers, workspaces, tags, triggers, variables, versions, publish.
- Claude Desktop (via mcp-remote): see `configs/claude_desktop_config.json`
- Claude Code: `claude mcp add --transport http gtm-stape https://gtm-mcp.stape.ai/mcp`

## paolobietolini/gtm-mcp-server
- **Repo:** https://github.com/paolobietolini/gtm-mcp-server (Go, BSD-3)
- **Hosted:** `https://mcp.gtmeditor.com`
- Changes only the workspace, auto-creates a version before publishing, keeps a change log. Can import Community Template Gallery templates (e.g. Meta Pixel, Cookiebot).

## Other
- `jinchliu/tagmanager-mcp` — Python, `pip install tagmanager-mcp`, scope-aware.
- `gtm-mcp` on PyPI — **archived**, don't use.

## Safe-workflow rule
Always work in a new workspace named after the task, review the diff, publish manually.
