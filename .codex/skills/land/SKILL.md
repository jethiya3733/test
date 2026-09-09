---
name: land
description: Land an approved pull request in the Merging state and finish its Linear issue.
---

# Land approved work

Only land work whose Linear issue is in `Merging`. Confirm the PR targets
`main`, required reviews are approved, required checks pass, and the branch is
current. Use `./scripts/gitw` for Git commands and pass the explicit repository
and PR to `gh`. Use the repository's configured merge policy; otherwise prefer
squash merge with branch deletion.

Never bypass protections or claim success before GitHub reports the PR merged.
After merge, update the Linear workpad with the merge result and move the issue
to `Done`. If checks, conflicts, or review block landing, keep it out of `Done`
and record the exact next action.
