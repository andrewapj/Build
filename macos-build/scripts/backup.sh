#!/bin/bash

# -------------------------------------------------------------------------
# SETUP: Handle User Input & Safety Checks
# -------------------------------------------------------------------------

# 1. Capture the argument (if provided)
TAKEOUT_DIR="${1:-}"

# 2. SAFETY NET: Expand "~" if it was quoted by the user
#    (Changes "~/Downloads" -> "/Users/steve/Downloads")
if [[ "$TAKEOUT_DIR" == \~* ]]; then
    TAKEOUT_DIR="${TAKEOUT_DIR/#\~/$HOME}"
fi

# -------------------------------------------------------------------------
# STEP 1: Sync Google Drive (Always Runs)
# -------------------------------------------------------------------------
echo ""
echo "🚀 Starting Google Drive -> B2 Sync..."
echo "----------------------------------------"

# Note: Added --drive-skip-gdocs to avoid duplicate errors if using export-formats
rclone sync gdrive: b2crypt:drive \
  --drive-export-formats docx,xlsx,pptx \
  --drive-acknowledge-abuse \
  --fast-list \
  --transfers 32 \
  --progress

# -------------------------------------------------------------------------
# STEP 2: Sync Takeout (Optional - Only runs if path provided)
# -------------------------------------------------------------------------
echo ""
echo "----------------------------------------"

if [ -z "$TAKEOUT_DIR" ]; then
    # CASE A: User provided nothing
    echo "⚠️  No Takeout path provided."
    echo "⏭️  Skipping Takeout backup."
    
elif [ -d "$TAKEOUT_DIR" ]; then
    # CASE B: Valid folder found
    echo "📂 Found Takeout directory: $TAKEOUT_DIR"
    echo "🚀 Starting Takeout -> B2 Sync..."
    
    rclone sync "$TAKEOUT_DIR" b2crypt:takeout \
      --fast-list \
      --transfers 32 \
      --progress
      
    echo "✅ Takeout Sync Complete."
    
else
    # CASE C: Invalid folder found
    echo "❌ Error: The directory '$TAKEOUT_DIR' does not exist."
    echo "⏭️  Skipping Takeout backup."
fi

echo ""
echo "🎉 All Backup Tasks Finished!"
