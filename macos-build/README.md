# Mac Config

## Overview

This guide shows you how to configure your Mac using Homebrew.

1. Install Homebrew, follow the instructions [here](http://brew.sh/)
2. Install Homebrew Cask, follow the instructions [here](https://caskroom.github.io/)
3. Install Homebrew Bundle, follow the instructions [here](https://github.com/Homebrew/homebrew-bundle)
4. Edit the `Brewfile` as required.
5. Run `brew bundle` in the same directory that contains your `Brewfile`.

The `Brewfile` in this directory defines what software is or will be installed. Follow the homebrew-bundle instructions for further information.

6. Copy the `bash_profile` to your home directory.
7. Copy the `launchd.conf` to `/etc`
8. Run `scutil --set HostName "[YOUR_HOST]"`. This sets the machines hostname on the terminal.
The last two files set required environment variables on the terminal and for GUI apps.
9. Add your machines hostname to `/etc/hosts`. Make the hostname resolve to `127.0.0.1` and `::1`.
10. Install the following atom packages ( `apm install [PACKAGE]` )

 * atom-keyboard-macros
 * autoclose-html
 * atom-ide-ui
 * atom-typescript
