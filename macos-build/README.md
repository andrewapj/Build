# Mac Setup

A short guide to setting up a fresh Mac with Homebrew, applications, and shell configuration.

## 1. Install Homebrew

- Follow the instructions at [brew.sh](https://brew.sh/).
- Install the Xcode Command Line Tools if prompted.
- Follow the installer’s “Next steps” to add Homebrew to your shell environment.
- Confirm Homebrew is available with `brew --version`.

## 2. Download this repository

- Download this repository as a ZIP and extract it.
- Open Terminal in the extracted `macos-build` directory.

## 3. Run the setup script

- Review `install_apps.sh` and `.zshrc`.
- Back up your existing `~/.zshrc` if you want to keep it; the script replaces it.
- Run the setup script:

  ```sh
  ./install_apps.sh
  ```

- Open a new terminal window when setup is complete.

The script:
- Installs the applications and development tools listed in `install_apps.sh`.
- Copies `.zshrc` to your home directory, replacing any existing version.
- Copies helper scripts from `scripts/` into `/usr/local/bin/`.

## 4. Restore access and configuration

- Restore your SSH key from your password manager.
- Set up rclone, which is required for the backup script.
- Copy the config files in the backup's `macos` directory to their relevant directories under your home directory.
