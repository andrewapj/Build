#!/usr/bin/env zsh

brew tap homebrew/cask-versions

brew install \
  1password \
  chatgpt \
  cloc \
  docker-desktop \
  ghostty \
  git \
  go \
  google-chrome \
  google-drive \
  jetbrains-toolbox \
  keka \
  anomalyco/tap/opencode \
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
