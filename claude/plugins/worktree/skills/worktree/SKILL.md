---
description: Create or remove git worktrees for feature development. Use when user wants to start work on a Linear issue, begin a new feature, fix a bug, work on a chore, or remove a worktree.
---

# Git Worktree Workflow

## When to Use

**Create worktree:**
- User says "work on Linear issue X" or "start issue X"
- User says "start a new feature for..." or "add feature..."
- User says "fix bug..." or "there's a bug in..."
- User says "I need to do a chore..." or "refactor..." or "update dependencies..."

**Remove worktree:**
- User says "remove this worktree" or "clean up worktree"
- User says "done with this branch" or "delete this worktree"

## Branch Naming Convention

Format: `<type>-<short-description>`

Types: `feature`, `bug`, `chore`

Use lowercase kebab-case. Do NOT include Linear issue numbers.

Examples:
- `feature-user-authentication`
- `bug-login-redirect-loop`
- `chore-update-dependencies`

## Create Worktree Workflow

1. If working on a Linear issue, fetch issue details for context
2. Determine type (feature/bug/chore) from issue or user request
3. Generate short descriptive branch name
4. Confirm branch name with user
5. Run the create script:

```bash
${CLAUDE_PLUGIN_ROOT}/bin/create-worktree.sh "<branch-name>"
```

6. cd into the new worktree directory to continue work there:

```bash
cd "../<repo>--<branch>"
```

7. Tell the user the worktree was created

**Naming examples:**
- Branch `chore-textract-removal` in repo `platform` → worktree `platform--chore-textract-removal`
- Branch `feature-document-upload` in repo `platform` → worktree `platform--feature-document-upload`

## Remove Worktree Workflow

1. Confirm user wants to remove the current worktree
2. Run the remove script:

```bash
${CLAUDE_PLUGIN_ROOT}/bin/remove-worktree.sh
```

3. Tell user to cd back to the main repo directory
