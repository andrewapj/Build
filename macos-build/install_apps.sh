#!/usr/bin/env zsh

# Java
brew install --cask temurin
brew install maven

# Go
brew install go

# Aws
brew install awscli

# JavaScript
brew install node

# Development
brew install git jetbrains-toolbox
brew install --cask docker

# Other
brew install arq bitwarden google-backup-and-sync google-chrome iterm2 keka postman visual-studio-code vlc youtube-dl

cp .zshrc ~/
cp launchd.conf /etc
cp scripts/* /usr/local/bin/
