#!/usr/bin/env zsh

brew tap homebrew/cask-versions

brew install \
  1password \
  appcleaner \
  cloc \
  codex-app
  docker-desktop \
  ghostty \
  git \
  go \
  google-chrome \
  google-drive \
  jetbrains-toolbox \
  keka \
  opencode \
  rclone \
  temurin \
  tree \
  utm \
  wrk

brew install --ignore-dependencies \
  gradle \
  maven

cp .zshrc ~/
cp scripts/* /usr/local/bin/
