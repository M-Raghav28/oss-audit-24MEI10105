#!/bin/bash

FOLDERS=("/etc" "/tmp" "/home")

echo "========== DIRECTORY ANALYSIS =========="

for ITEM in "${FOLDERS[@]}"
do
    if [ -d "$ITEM" ]; then
        DETAILS=$(ls -ld $ITEM | awk '{print $1, $3, $4}')
        echo "$ITEM --> [$DETAILS]"
    else
        echo "$ITEM --> Not Found"
    fi
done

echo "----------------------------------------"
echo "Check completed at: $(date)"
