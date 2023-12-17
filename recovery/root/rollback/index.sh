#!/bin/bash

ROLLBACK_INDEX_FILE="/path/to/rollback/index"

# Read the current rollback index
CURRENT_INDEX=$(cat "$ROLLBACK_INDEX_FILE")

# Increment the index
NEW_INDEX=$((CURRENT_INDEX + 1))

# Update the rollback index file
echo "$NEW_INDEX" > "$ROLLBACK_INDEX_FILE"

# Output the new index for verification or logging
echo "Rollback Index Updated: $NEW_INDEX"
