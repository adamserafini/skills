---
name: web
description: Extracts content from web URLs (e.g. documentation, tutorials, articles) using trafilatura, outputting clean, readable markdown suitable for AI agent consumption.
---

# Web Skill

This skill provides the standard workflow for retrieving web page content (such as API documentation, articles, or tutorials) when a user provides a URL.

## Workflow

When the user asks you to read or extract content from a URL, follow these steps:

1. **Verify Tool Installation**: Ensure `trafilatura` is available on the system. You can check this by running `trafilatura --version`. If it is not installed, you can install it globally using `uv tool install trafilatura`.
2. **Execute Trafilatura**: Run `trafilatura` on the provided URL, outputting the result as Markdown with formatting and links preserved. The standard command is:
   ```bash
   trafilatura -u "<URL>" --markdown --formatting --links
   ```
3. **Analyze Content**: Read through the extracted markdown content provided by the command output.
4. **Respond/Act**: Answer the user's question, summarize the page, or use the gathered knowledge to complete your coding task based on the extracted content.

## Why this approach?

Using `trafilatura` with `--markdown`, `--formatting`, and `--links` strips away HTML boilerplate, navigation menus, and ads, providing a clean, structured text stream that is highly optimized for an AI agent's context window and comprehension.
