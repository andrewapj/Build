#!/usr/bin/env zsh

brew tap homebrew/cask-versions

brew install \
  1password \
  appcleaner \
  docker-desktop \
  gemini-cli \
  ghostty \
  git \
  go \
  google-chrome \
  google-drive \
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
