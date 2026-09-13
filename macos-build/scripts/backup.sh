#!/usr/bin/env bash

set -euo pipefail

# Usage: backup.sh [optional_local_directory]

# -------------------------------------------------------------------------
# SETUP: Define the backup locations and perform safety checks
# -------------------------------------------------------------------------

readonly SOURCE="${HOME}/GDrive"
readonly BUCKET="b2plain:andrew-apj-backup"
readonly DESTINATION="${BUCKET}/drive"
readonly TAKEOUT_DESTINATION="${BUCKET}/takeout"
readonly TRANSFERS=8

if (( $# > 1 )); then
  echo "Usage: $0 [optional_local_directory]" >&2
  exit 1
fi

TAKEOUT_DIR="${1:-}"

# Expand a quoted tilde, such as "~/Downloads/Takeout".
if [[ "$TAKEOUT_DIR" == \~* ]]; then
  TAKEOUT_DIR="${TAKEOUT_DIR/#\~/$HOME}"
fi

# The b2plain remote must be configured separately with `rclone config`.
if ! command -v rclone >/dev/null 2>&1; then
  echo "Error: rclone is not installed or is not available in PATH." >&2
  exit 1
fi

if [[ ! -d "$SOURCE" ]]; then
  echo "Error: Source directory does not exist: $SOURCE" >&2
  exit 1
fi

if [[ -n "$TAKEOUT_DIR" && ! -d "$TAKEOUT_DIR" ]]; then
  echo "Error: Optional directory does not exist: $TAKEOUT_DIR" >&2
  exit 1
fi

# -------------------------------------------------------------------------
# BACKUP: Sync the contents of the source to the destination
# -------------------------------------------------------------------------

# `sync` removes destination-only files after uploading new or changed files.
# Exclude .DS_Store at every depth and delete existing destination copies.
echo "Syncing $SOURCE to $DESTINATION..."
rclone sync "$SOURCE" "$DESTINATION" --transfers "$TRANSFERS" --fast-list --progress --exclude '.DS_Store' --delete-excluded

# -------------------------------------------------------------------------
# TAKEOUT: Sync the optional directory to the takeout destination
# -------------------------------------------------------------------------

if [[ -n "$TAKEOUT_DIR" ]]; then
  echo "Syncing $TAKEOUT_DIR to $TAKEOUT_DESTINATION..."
  rclone sync "$TAKEOUT_DIR" "$TAKEOUT_DESTINATION" --transfers "$TRANSFERS" --fast-list --progress --exclude '.DS_Store' --delete-excluded
else
  echo "No optional directory provided; skipping takeout backup."
fi

echo "Backup complete."
