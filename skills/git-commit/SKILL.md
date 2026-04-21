---
name: git-commit
description: Analyzes git changes (staged and unstaged) to craft appropriate commit messages and execute git commits, splitting into separate commits for unrelated changes.
---

# Git Commit Skill

This skill helps you analyze current git changes and create well-crafted git commits. It emphasizes atomic commits by splitting unrelated changes into separate commits.

## Workflow

When the user asks you to commit changes, follow these steps:

1. **Check Status**: Run `git status` to see what files are staged, modified, or untracked.
2. **Review Changes**: Run `git diff` (for unstaged) and `git diff --staged` (for staged) to understand all pending changes.
3. **Analyze & Group**: Determine if the changes belong to a single logical task or multiple distinct tasks.
   - If changes are unrelated (e.g., a bug fix in one module and a feature in another), plan to split them into separate commits.
4. **Execute Commits**:
   - If files are already staged and you want to commit them as is, proceed to commit.
   - If you need to split changes or nothing is staged:
     - Unstage everything first if necessary (`git reset`).
     - For each logical group of changes:
       1. Stage the relevant files (`git add <files>`).
       2. Craft a concise, descriptive commit message (Conventional Commits preferred).
       3. Execute `git commit -m "<message>"`.
5. **Verify**: Run `git status` to ensure all intended changes have been committed.

## Tips

- **Atomic Commits**: Prefer smaller, focused commits over large "catch-all" commits.
- **Review Diffs**: Always read the diff before committing.
- **Message Format**: Use Conventional Commits (e.g., `feat:`, `fix:`, `chore:`) unless the repo uses a different style. Adhere strictly to the **50/72 rule**: the subject line (first line) must be 50 characters or less, and all lines in the commit body must be wrapped at 72 characters.
- **Complex Splits**: If a single file contains unrelated changes (e.g., two different functions modified for different reasons), mention this limitation or try `git add -p` if you are comfortable (though interactive mode might be tricky in this environment). Usually, file-level splitting is sufficient.
