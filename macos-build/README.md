# Mac Config

## Overview

This guide shows you how to configure your Mac using Homebrew.

1. Install Homebrew, follow the instructions [here](http://brew.sh/)
2. Install Xcode via the app store.
3. Run ```./install_apps.sh```
4. Copy the `launchd.conf` to `/etc`
5. Add your machines hostname to `/etc/hosts`. Make the hostname resolve to `127.0.0.1` and `::1`.
6. Generate an ssh key if required. ```ssh-keygen -t rsa -b 4096 -C "your_email@example.com"```
7. Activate the idea.sh script within Jetbrains Toolbox, set the location to /usr/local/bin
8. Install the following IntelliJ plugins. CheckStyle-IDEA, Lombok, Maven Helper.
