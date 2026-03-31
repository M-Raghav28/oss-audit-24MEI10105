#!/bin/bash

echo -e "ERROR login failed\nWARNING disk almost full\nINFO system running\nERROR invalid user" > sample.log

FILE="sample.log"
KEYWORD="error"

COUNT=0
TOTAL=0

while IFS= read -r LINE
do
    TOTAL=$((TOTAL + 1))

    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi

done < "$FILE"

echo "========== LOG REPORT =========="
echo "File analyzed : $FILE"
echo "Total lines   : $TOTAL"
echo "Matches found : $COUNT"
echo "--------------------------------"
echo "Last matching lines:"
grep -i "$KEYWORD" "$FILE" | tail -5
