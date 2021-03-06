#!/usr/bin/env zsh

# Java
brew install adoptopenjdk adoptopenjdk8 maven

# Go
brew install go

# Development
brew install docker git jetbrains-toolbox

# Other
brew install arq bitwarden google-backup-and-sync google-chrome iterm2 keka postman visual-studio-code vlc youtube-dl

cp .bash_profile ~/
cp .zshenv ~/
cp scripts/* /usr/local/bin/