#!/bin/bash

# Launch Chrome using the agent's dedicated profile.
# Use this script to log in to portals (Jira, GitHub, internal sites, etc.)
# so that the pi agent can access them when running chrome-devtools-mcp.
# 
# To use: run this script, navigate to the required website, log in manually,
# and close the browser window when finished.

echo "Launching Agent Chrome Profile..."
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
  --user-data-dir="$HOME/.pi/agent/chrome-profile" \
  --no-first-run \
  --no-default-browser-check &
