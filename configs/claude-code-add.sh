#!/usr/bin/env bash
# Adds the tracking/ads MCP servers to Claude Code for all projects.
# Usage: cp .env.example .env && fill it in, then: bash configs/claude-code-add.sh
# Comment out any line you don't need.
set -euo pipefail
[ -f .env ] && set -a && . ./.env && set +a

# --- Hosted (OAuth in browser on first use) ---
claude mcp add --scope user --transport http meta-ads     https://mcp.facebook.com/ads
claude mcp add --scope user --transport http snapchat-ads https://mcp.snapchat.com/ads
claude mcp add --scope user --transport http gtm-stape    https://gtm-mcp.stape.ai/mcp

# --- Google (self-hosted, needs GCP project + credentials) ---
claude mcp add google-ads --scope user \
  --env GOOGLE_PROJECT_ID="$GOOGLE_PROJECT_ID" \
  --env GOOGLE_ADS_DEVELOPER_TOKEN="$GOOGLE_ADS_DEVELOPER_TOKEN" \
  --env GOOGLE_APPLICATION_CREDENTIALS="$GOOGLE_APPLICATION_CREDENTIALS" \
  -- pipx run --spec git+https://github.com/googleads/google-ads-mcp.git google-ads-mcp

claude mcp add analytics-mcp --scope user \
  --env GOOGLE_PROJECT_ID="$GOOGLE_PROJECT_ID" \
  --env GOOGLE_APPLICATION_CREDENTIALS="$GOOGLE_APPLICATION_CREDENTIALS" \
  -- pipx run analytics-mcp

# --- Shopify developer docs ---
claude mcp add --scope user shopify-dev -- npx -y @shopify/dev-mcp@latest

claude mcp list
