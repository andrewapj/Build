#!/usr/bin/env bash
brew install openjdk@11 git maven node wget youtube-dl
brew install --cask arq bitwarden docker go google-backup-and-sync google-chrome iterm2 jetbrains-toolbox keka postman visual-studio-code vlc

cp .bash_profile ~/
cp .zshenv ~/
cp scripts/* /usr/local/bin/
