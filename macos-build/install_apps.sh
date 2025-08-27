#!/usr/bin/env zsh

# Java
brew tap homebrew/cask-versions
brew install --cask temurin
brew install --ignore-dependencies maven
brew install --ignore-dependencies gradle

# Go
brew install go

# Development
brew install git jetbrains-toolbox
brew install --cask docker
brew install gemini-cli

# Other
brew install 1password appcleaner google-chrome google-drive iterm2 keka wrk

cp .zshrc ~/
cp launchd.conf /etc
cp scripts/* /usr/local/bin/
