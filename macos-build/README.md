# Mac Config

## Overview

This guide shows you how to configure your Mac using Homebrew.

1. Install Homebrew, follow the instructions [here](http://brew.sh/)
2. Run ```./install_apps.sh```
3. Copy the `launchd.conf` to `/etc`
4. Add your machines hostname to `/etc/hosts`. Make the hostname resolve to `127.0.0.1` and `::1`.
5. Generate an ssh key if required. ```ssh-keygen -t rsa -b 4096 -C "your_email@example.com"```
