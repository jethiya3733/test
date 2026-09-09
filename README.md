# Symphony test harness

This repository is the delivery target for OpenAI Symphony issues from the
Linear project `test`. Work enters automation only when it has the `symphony`
label and is moved to `Todo`.

Lifecycle: `Backlog` → `Todo` → `In Progress` → `In Review` → `Merging` →
`Done`. Review changes return to `Rework`.

Run the repository-level checks with:

```bash
./scripts/validate-harness.sh
```

Project-specific build and test commands should be added to `AGENTS.md` when
the first implementation ticket establishes a language or framework.
