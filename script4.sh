#!/bin/bash
# Script 4: Log File Analyzer
# Author: Shivlok Kumar

# Input arguments
LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword = error

COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Do-while style retry if file is empty
while [ ! -s "$LOGFILE" ]; do
    echo "File is empty. Please enter another file:"
    read LOGFILE

    if [ ! -f "$LOGFILE" ]; then
        echo "File not found. Try again."
    fi
done

echo "Analyzing file: $LOGFILE"
echo "Searching for keyword: $KEYWORD"
echo "-----------------------------------"

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times."

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo ""
echo "Log analysis completed successfully."
