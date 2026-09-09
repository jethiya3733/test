---
name: commit
description: Create a focused issue commit after inspecting and validating the intended diff.
---

# Commit issue work

Use `./scripts/gitw` for every Git command. Review status, the staged diff, and
the issue acceptance criteria. Stage only files belonging to the issue; never
include credentials or unrelated workspace changes. Run targeted validation
before committing. Use an imperative, specific subject no longer than 72
characters and include the Linear identifier when it improves traceability. Do
not create an empty commit.
