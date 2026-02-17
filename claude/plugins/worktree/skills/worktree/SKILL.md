---
description: Create git worktrees for feature development. Use when user wants to start work on a Linear issue, begin a new feature, fix a bug, or work on a chore.
---

# Git Worktree Workflow

## When to Use

- User says "work on Linear issue X" or "start issue X"
- User says "start a new feature for..." or "add feature..."
- User says "fix bug..." or "there's a bug in..."
- User says "I need to do a chore..." or "refactor..." or "update dependencies..."

## Branch Naming Convention

Format: `<type>-<short-description>`

Types: `feature`, `bug`, `chore`

**STRICT RULES:**
- Use lowercase kebab-case only
- **NEVER include Linear issue numbers** (no `eng-123`, no `ENG-123`)
- **NEVER use slashes or folders** (no `eng-50/description`)
- Derive the description from the issue title or user request, not the issue identifier

Examples:
- `feature-user-authentication` ✓
- `bug-login-redirect-loop` ✓
- `chore-update-dependencies` ✓
- `eng-50-fix-login` ✗ (has issue number)
- `feature/user-auth` ✗ (has slash)

## Create Worktree Workflow

1. If working on a Linear issue, fetch issue details for context (title and description only)
2. Determine type (feature/bug/chore) from issue labels or user request
3. Generate branch name from the issue **title** (not the issue identifier like ENG-123)
4. Confirm branch name with user
5. Run:

```bash
gwta <branch-name>
```

## gwta Behavior

The `gwta` function:
- Creates a worktree at `../<repo>--<branch>` (sibling directory)
- Creates the new branch
- Automatically cds into the new worktree

After running `gwta`, you're already in the worktree and ready to work.
