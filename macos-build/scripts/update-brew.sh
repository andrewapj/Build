#!/usr/bin/env bash
echo "Starting Homebrew maintenance..."
brew update && brew upgrade -y && brew autoremove && brew cleanup && echo "Homebrew maintenance complete!"
