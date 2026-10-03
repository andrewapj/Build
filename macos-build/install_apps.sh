#!/usr/bin/env zsh

set -e

if ! command -v brew >/dev/null 2>&1; then
  print -u2 "Homebrew is not available. Install it from https://brew.sh/ and follow the installer's next steps, then rerun this script."
  exit 1
fi

script_dir="${0:A:h}"

brew install \
  1password \
  chatgpt \
  cloc \
  docker-desktop \
  ghostty \
  git \
  go \
  google-chrome \
  google-drive \
  gradle \
  jetbrains-toolbox \
  keka \
  maven \
  anomalyco/tap/opencode-v2 \
  rclone \
  temurin \
  tree \
  utm \
  wrk

cp "$script_dir/.zshrc" "$HOME/.zshrc"

mkdir -p "$HOME/.agents/skills"
cp -R "$script_dir/skills/." "$HOME/.agents/skills/"

if [[ ! -d /usr/local/bin ]]; then
  if [[ -d /usr/local && -w /usr/local ]]; then
    mkdir -p /usr/local/bin
  else
    sudo mkdir -p /usr/local/bin
  fi
fi

if [[ -w /usr/local/bin ]]; then
  install -m 755 "$script_dir"/scripts/* /usr/local/bin/
else
  sudo install -m 755 "$script_dir"/scripts/* /usr/local/bin/
fi
