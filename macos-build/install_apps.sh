#!/usr/bin/env zsh

# Java
brew tap homebrew/cask-versions
brew install --cask temurin
brew install maven
brew install gradle

# Go
brew install go

# Rust
brew install rustup

# Node
brew install node

# Aws
brew install awscli

# Development
brew install git jetbrains-toolbox
brew install --cask docker

# Other
brew install bitwarden google-drive google-chrome iterm2 keka wrk

cp .zshrc ~/
cp launchd.conf /etc
cp scripts/* /usr/local/bin/
