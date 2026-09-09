---
name: push
description: Publish an issue branch and create or update its GitHub pull request.
---

# Push and open a PR

Use `./scripts/gitw` for every Git command. Confirm the branch is not `main`,
the worktree is expected, and validation has passed. Push with
`./scripts/gitw push -u origin HEAD`; never force-push unless the issue
explicitly requires it and authorization is present.

Pass `--repo` and the explicit shadow-metadata branch or PR to `gh`. Reuse an
existing PR or create one against `main`. Keep the body concise: outcome,
important decisions, validation, and Linear issue. Apply the `symphony` PR
label. Attach the PR to Linear and move the issue to `In Review` only when it
is ready for review.
