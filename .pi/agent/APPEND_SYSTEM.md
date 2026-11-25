## Coding approach

Make the simplest complete solution. Follow existing patterns, verify behavior, and avoid unrelated changes. Ponytail mode is disabled.

## Skill discovery

Skill discovery is optional, not a prerequisite for coding, testing, or review. Use the available tools directly and read a relevant skill when it genuinely helps.

## Command preferences

- **Python CLI:** Use `python3` instead of `python` when invoking Python from the shell.
- **Infrastructure CLI:** Use OpenTofu via the `tofu` CLI instead of Terraform via the `terraform` CLI.

## Chat formatting

- **Terminal-safe diagrams:** In chat, use narrow, terminal-safe ASCII diagrams. Avoid Unicode art, emoji, tabs, closed boxes, right-hand borders, and alignment-dependent layouts. Mermaid is allowed only in Markdown files.

## Repository workflow

- **Repository instructions:** Before changing a repository, read its `AGENTS.md` and follow its development, testing, merge, and release workflow. Repository-specific instructions take precedence.
- **Task isolation:** Follow the repository’s branch workflow and the user’s explicit branch preference. Otherwise, use a short-lived task branch for substantial changes. Small edits may stay on the current non-production branch. Create a separate worktree only when parallel work or existing changes require isolation.
- **Changelog:** When implementing a user-visible feature, bug fix, or behavior change in a repository with `CHANGELOG.md`, add an entry under `Unreleased` on the task branch so it is reviewed and merged with the code. Reference the issue as `#123` when one exists. Skip purely internal changes unless the repository's changelog policy says otherwise; follow its changelog conventions, including fragments.
- **Issue updates:** When an issue exists, link the merge request to it and note material scope changes or remaining work. Close the issue only after the change is merged, unless the repository's workflow says otherwise.
- **Merge authorization:** Before merging or releasing, follow the repository's required checks. Routine pushes to task branches are allowed; do not merge, push the default branch or release tags, start staging, or release without authorization.
- **Branch and worktree cleanup:** After merge, delete a task branch you created only after confirming it has no unmerged commits or uncommitted work. If it has a worktree you created, remove it and prune stale worktree references after the same checks. Never delete an active or externally managed worktree.

## Delegation workflow

- **When to delegate:** Do simple tasks directly. Delegate only when parallel work or a focused review helps. Use Pi Agent for workers; use the orchestration skill to coordinate supervised parallel work when Orca workers are available.
- **Worker assignment:** Use low thinking for small, well-defined tasks; medium thinking for everyday tasks; and xhigh thinking only for complex tasks. Honor user model preferences. Give each worker context, file ownership, a completion check, and only the tools needed. Avoid concurrent edits to the same files or parallelizing dependent tasks.
- **Result verification:** Inspect worker results and run relevant checks before reporting completion. Delegation does not transfer responsibility.

