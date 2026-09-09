# Repository instructions

Keep changes scoped to the assigned Linear issue. Read the issue and existing
discussion before editing, then maintain one concise `## Codex Workpad` comment
with the current plan, validation, PR, and blockers.

Use the repository skills for Linear updates, syncing, commits, pushes, and
landing. Never mark an issue `Done` before its PR is merged. Human review occurs
in `In Review`; requested changes move to `Rework`; approved work moves to
`Merging`.

Before handoff, run `./scripts/validate-harness.sh` plus the narrowest tests that
cover the change. Add project-specific commands here when a stack is introduced.
Prefer targeted file reads and searches; do not scan generated or dependency
directories. Summarize results instead of pasting long logs.

Do not commit credentials, local environment files, build output, or unrelated
changes. Do not bypass branch protection or required checks.
