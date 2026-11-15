#!/usr/bin/env bash
set -euo pipefail

if ! gh auth status --hostname github.com --active; then
  gh auth login \
    --hostname github.com \
    --git-protocol https \
    --web \
    --clipboard \
    --expiring
fi

gh auth setup-git --hostname github.com

