#!/usr/bin/env bash
set -euo pipefail

mkdir -p "$HOME/.codex/skills"
rsync -av \
  "$HOME/Developer/Personal/codex-skills/" \
  "$HOME/.codex/skills/"