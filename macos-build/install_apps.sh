#!/usr/bin/env bash
brew cask install homebrew/cask-versions/java11 arq bitwarden docker google-backup-and-sync google-chrome iterm2 jetbrains-toolbox keka postman visual-studio-code vlc
brew install git gradle httpie maven nmap node wget youtube-dl
cp .bash_profile ~/
cp .zshenv ~/
cp scripts/* /usr/local/bin/
