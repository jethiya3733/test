#!/usr/bin/env bash
set -euo pipefail

required=(
  AGENTS.md
  .github/pull_request_template.md
  .github/workflows/harness.yml
  scripts/gitw
  .codex/skills/linear/SKILL.md
  .codex/skills/pull/SKILL.md
  .codex/skills/commit/SKILL.md
  .codex/skills/push/SKILL.md
  .codex/skills/land/SKILL.md
)

for path in "${required[@]}"; do
  [[ -s "$path" ]] || { printf 'Missing required file: %s\n' "$path" >&2; exit 1; }
done

for skill in linear pull commit push land; do
  path=".codex/skills/$skill/SKILL.md"
  grep -q '^---$' "$path"
  grep -q "^name: $skill$" "$path"
  grep -q '^description: .\+' "$path"
done

bash -n scripts/gitw

printf 'Symphony harness checks passed.\n'
