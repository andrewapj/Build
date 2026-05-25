#!/usr/bin/env bash
echo "Starting Homebrew maintenance..."
brew upgrade && brew autoremove && brew cleanup
echo "Homebrew maintenance complete!"
