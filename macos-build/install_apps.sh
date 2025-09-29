#!/usr/bin/env zsh

brew tap homebrew/cask-versions

brew install \
  1password \
  appcleaner \
  docker-desktop \
  gemini-cli \
  git \
  go \
  google-chrome \
  google-drive \
  iterm2 \
  jetbrains-toolbox \
  keka \
  temurin \
  utm \
  wrk

brew install --ignore-dependencies \
  gradle \
  maven

cp .zshrc ~/
cp scripts/* /usr/local/bin/
