---
name: chrome
description: Interacts with authenticated or heavily JavaScript-rendered web pages using the chrome-devtools MCP server.
---

# Chrome Skill

This skill provides instructions for the agent to access authenticated or heavily Javascript-rendered web pages that the standard `web` (trafilatura) skill cannot read. It leverages the `chrome-devtools` MCP server.

## Overview

The agent is configured to use a dedicated Chrome profile (located at `~/.pi/agent/chrome-profile`) via the `--slim` mode of the `chrome-devtools-mcp` server. This allows the agent to navigate to pages, execute scripts to extract content, and take screenshots using an authenticated session, without interfering with the user's main daily-driver Chrome browser.

## Workflow: Re-Logging In / Authenticating

Because the agent runs in the background (headless) and cannot easily pass 2FA, solve captchas, or interact with complex SSO popups, the user must manually log the agent into websites initially, or when a session expires.

When a user asks you to interact with a page that requires authentication and you encounter a login screen, ask the user to manually authenticate the agent. Provide them with the following instructions:

### How to Authenticate

1. Open your terminal.
2. Run the provided login script located in the `chrome` skill directory:
   ```bash
   /Users/adam.serafini/Code/skills/skills/chrome/scripts/chrome-login.sh
   ```
   *(Note: This script launches a non-headless Chrome window using the agent's dedicated profile.)*
3. A new Chrome window will open. Navigate to the required websites (e.g., Jira, internal wiki, GitHub) and log in manually, including passing any required MFA.
4. Once you are successfully logged in, close the browser window.
5. Tell the agent you have logged in, and it can proceed.

## Agent Usage

When a user asks you to interact with a page that requires authentication or dynamic rendering:
1. Try to access the page using the available MCP tools (like navigation, script execution, or screenshots) provided by the `chrome-devtools` server.
2. If you are redirected to a login page or the content is missing because of an unauthenticated session, halt the task and instruct the user to use `chrome-login.sh` as outlined above.
3. Once the user confirms they have logged in, re-try the task.