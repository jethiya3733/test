---
name: pull
description: Synchronize an issue branch with origin/main without discarding issue work.
---

# Pull from main

Inspect `git status` first. Fetch `origin main`, then merge `origin/main` into
the issue branch. Do not reset, discard changes, or rewrite published history.
Resolve conflicts according to the issue and repository instructions, then run
the narrow validation affected by the merge. Record material conflicts in the
Linear workpad.
