#!/usr/bin/env zsh

# Java
brew tap homebrew/cask-versions
brew install --cask temurin17
brew install --ignore-dependencies maven
brew install --ignore-dependencies gradle

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
brew install bitwarden google-drive google-chrome iterm2 keka postman visual-studio-code vlc yt-dlp

cp .zshrc ~/
cp launchd.conf /etc
cp scripts/* /usr/local/bin/
