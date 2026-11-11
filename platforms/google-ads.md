# Google Ads

## Official — googleads/google-ads-mcp
- **Repo:** https://github.com/googleads/google-ads-mcp
- **Docs:** https://developers.google.com/google-ads/api/docs/developer-toolkit/mcp-server
- **Access:** read-only. Tools: `list_accessible_customers` + `search` (GAQL across ~180 resource types). Cannot change bids or pause campaigns.
- **Needs:** Google Cloud project, Google Ads developer token, OAuth / Application Default Credentials, optional MCC login customer ID.

### Claude Code
```bash
claude mcp add google-ads --scope user \
  --env GOOGLE_PROJECT_ID=$GOOGLE_PROJECT_ID \
  --env GOOGLE_ADS_DEVELOPER_TOKEN=$GOOGLE_ADS_DEVELOPER_TOKEN \
  --env GOOGLE_APPLICATION_CREDENTIALS=$GOOGLE_APPLICATION_CREDENTIALS \
  -- pipx run --spec git+https://github.com/googleads/google-ads-mcp.git google-ads-mcp
```

## Community (write-capable)
| Repo | Notes |
|---|---|
| `FGRibreau/mcp-google-ads` | ~63 tools incl. RSA, keywords, PMax, bidding, with guardrails |
| `google-marketing-solutions/google_ads_mcp` | Google Marketing Solutions team (not the core API team) |

⚠️ Google's 2026 developer policy restricts hosted third-party wrappers. Run servers on your own GCP project.
