#!/usr/bin/env bash
brew cask install homebrew/cask-versions/java11 arq bitwarden docker google-backup-and-sync google-chrome iterm2 jetbrains-toolbox keka postman visual-studio-code vlc
brew install git gradle maven node wget youtube-dl

code --install-extension redhat.vscode-yaml
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools

cp .bash_profile ~/
cp .zshenv ~/
cp scripts/* /usr/local/bin/
