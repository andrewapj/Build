#!/usr/bin/env zsh

# Java
brew tap homebrew/cask-versions
brew install --cask temurin17
brew install maven
brew install gradle

# Go
brew install go

# Rust
brew install rustup-init

# Aws
brew install awscli

# JavaScript
brew install node

# Development
brew install git jetbrains-toolbox
brew install --cask docker

# Other
brew install bitwarden google-drive google-chrome iterm2 keka postman visual-studio-code vlc wrk yt-dlp

cp .zshrc ~/
cp launchd.conf /etc
cp scripts/* /usr/local/bin/
