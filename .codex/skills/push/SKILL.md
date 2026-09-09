---
name: push
description: Publish an issue branch and create or update its GitHub pull request.
---

# Push and open a PR

Confirm the branch is not `main`, the worktree is expected, and validation has
passed. Push with `git push -u origin HEAD`; never force-push unless the issue
explicitly requires it and authorization is present.

Use `gh pr view` to reuse an existing PR or `gh pr create` to open one against
`main`. Keep the body concise: outcome, important decisions, validation, and
Linear issue. Apply the `symphony` PR label. Attach the PR to Linear and move
the issue to `In Review` only when it is ready for review.
