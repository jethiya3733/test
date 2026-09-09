---
name: linear
description: Read and update the assigned Linear issue, its workpad, and Symphony lifecycle state.
---

# Linear issue operations

Use Symphony's session-scoped `linear_graphql` client tool. It reuses the
configured Linear authentication; do not build raw-token shell helpers. Send
one narrowly scoped operation per call and treat a top-level `errors` array as
failure.

At the start, fetch the issue description, state, labels, and comments once.
Maintain exactly one issue comment headed `## Codex Workpad`; update that
comment with a short plan, current status, validation, PR URL, and blockers.
Avoid progress chatter and repeated full-issue reads.

State rules:

- `Todo` → `In Progress` when implementation begins.
- `In Review` after a tested PR is ready for human review.
- `Rework` means apply review feedback and return to `In Review`.
- `Merging` means verify approval/checks and land the PR.
- `Done` only after the PR is merged.

If access or an external dependency blocks progress, record the exact blocker
and required action in the workpad. Do not fabricate state changes or results.

Resolve exact state IDs from the issue team's states before `issueUpdate`.
Create or edit the workpad with `commentCreate`/`commentUpdate`, and attach PRs
with `attachmentLinkGitHubPR` rather than only pasting a URL.
