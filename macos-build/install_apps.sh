#!/usr/bin/env zsh

# Java
brew tap homebrew/cask-versions
brew install --cask temurin
brew install maven
brew install gradle

# Go
brew install go

# Aws
brew install awscli

# Development
brew install git jetbrains-toolbox
brew install --cask docker

# Other
brew install 1password appcleaner google-chrome google-drive iterm2 keka wrk

cp .zshrc ~/
cp launchd.conf /etc
cp scripts/* /usr/local/bin/
