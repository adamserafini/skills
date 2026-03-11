---
name: git-commit
description: Analyzes git changes (staged and unstaged) to craft an appropriate commit message and execute git commit.
---

# Git Commit Skill

This skill helps you analyze current git changes and create a well-crafted git commit.

## Workflow

When the user asks you to commit changes, follow these steps:

1. **Check Status**: Run `git status` to see what files are staged, modified, or untracked.
2. **Review Changes**: Run `git diff --staged` to see what is currently staged. If nothing is staged but there are modified files, run `git diff` to review unstaged changes.
3. **Stage Files (if needed)**: If no files are staged, stage the appropriate files (e.g., using `git add <files>` or `git add .`) before proceeding. If you are unsure which files to stage, ask the user.
4. **Draft Commit Message**: Analyze the changes and craft a concise, descriptive commit message. Preferably use the Conventional Commits format (e.g., `feat: ...`, `fix: ...`, `chore: ...`) unless the repository has a different established convention.
5. **Commit**: Execute the commit using `git commit -m "<message>"`. If the message is long and requires a body, use multiple `-m` flags: `git commit -m "<title>" -m "<body>"`.

## Tips

- Do not commit without reviewing the diff first.
- If the diff is very large, summarize the high-level changes.
- Ensure the commit message accurately reflects the intent of the changes.