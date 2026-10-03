#!/usr/bin/env zsh

# Stop setup if a command fails.
set -e

# Make each setup stage stand out from command output.
log_stage() {
  echo
  echo "------------------------------------------------------------"
  echo "  $1"
  echo "------------------------------------------------------------"
  echo
}

# Check that Homebrew is available before starting setup.
log_stage "🔍 [1/6] Checking Homebrew"
if ! command -v brew >/dev/null 2>&1; then
  print -u2 "Homebrew is not available. Install it from https://brew.sh/ and follow the installer's next steps, then rerun this script."
  exit 1
fi

# Locate bundled files relative to this script, regardless of the working directory.
script_dir="${0:A:h}"

# Install applications and development tools with Homebrew.
log_stage "📦 [2/6] Installing applications and development tools"
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

# Install the shell configuration, replacing any existing .zshrc.
log_stage "🐚 [3/6] Installing shell configuration"
cp "$script_dir/.zshrc" "$HOME/.zshrc"

# Create the skills directory and copy bundled skills, replacing matching files.
log_stage "🧠 [4/6] Installing bundled skills"
mkdir -p "$HOME/.agents/skills"
cp -R "$script_dir/skills/." "$HOME/.agents/skills/"

# Create the helper-script destination if needed, using sudo when required.
log_stage "📁 [5/6] Preparing /usr/local/bin"
if [[ ! -d /usr/local/bin ]]; then
  if [[ -d /usr/local && -w /usr/local ]]; then
    mkdir -p /usr/local/bin
  else
    sudo mkdir -p /usr/local/bin
  fi
fi

# Install executable helper scripts, using sudo if the destination is not writable.
log_stage "🛠️ [6/6] Installing helper scripts"
if [[ -w /usr/local/bin ]]; then
  install -m 755 "$script_dir"/scripts/* /usr/local/bin/
else
  sudo install -m 755 "$script_dir"/scripts/* /usr/local/bin/
fi

log_stage "✅ Mac setup complete — open a new terminal window"
