#!/bin/bash

# -------------------------------------------------------------------------
# SETUP: Capture the folder path from the user input (Argument $1)
# -------------------------------------------------------------------------
TAKEOUT_DIR="$1"

# CHECK 1: Did the user provide an argument?
if [ -z "$TAKEOUT_DIR" ]; then
    echo "❌ Error: Missing input folder."
    echo "Usage: ./backup.sh /path/to/your/takeout/folder"
    echo "Example: ./backup.sh /Users/name/Downloads/takeout-2023"
    exit 1
fi

# CHECK 2: Does that folder actually exist?
if [ ! -d "$TAKEOUT_DIR" ]; then
    echo "❌ Error: The directory '$TAKEOUT_DIR' does not exist."
    exit 1
fi

# -------------------------------------------------------------------------
# STEP 1: Sync Google Drive directly to Backblaze (Streaming)
# -------------------------------------------------------------------------
echo ""
echo "🚀 Starting Google Drive -> B2 Sync..."
echo "----------------------------------------"

rclone sync gdrive: b2crypt:drive \
  --drive-export-formats docx,xlsx,pptx \
  --drive-acknowledge-abuse \
  --fast-list \
  --transfers 32 \
  --progress

# -------------------------------------------------------------------------
# STEP 2: Sync Local Takeout folder to Backblaze
# -------------------------------------------------------------------------
echo ""
echo "📂 Starting Takeout ($TAKEOUT_DIR) -> B2 Sync..."
echo "----------------------------------------"

rclone sync "$TAKEOUT_DIR" b2crypt:takeout \
  --fast-list \
  --transfers 32 \
  --progress

echo ""
echo "✅ Backup Complete!"
