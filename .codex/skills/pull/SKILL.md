---
name: pull
description: Synchronize an issue branch with origin/main without discarding issue work.
---

# Pull from main

Use `./scripts/gitw` for every Git command. Inspect status first. Fetch
`origin main`, create the issue branch when needed, then merge `origin/main`
into it. Do not reset, discard changes, or rewrite published history.
Resolve conflicts according to the issue and repository instructions, then run
the narrow validation affected by the merge. Record material conflicts in the
Linear workpad.
