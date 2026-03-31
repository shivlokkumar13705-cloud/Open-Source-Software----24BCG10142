#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Shivlok Kumar

# List of important directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "-----------------------------------"

# Loop through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "-----------------------------------"
echo "Checking Git config directory..."

# Check Git config directory
if [ -d "$HOME/.git" ]; then
    ls -ld $HOME/.git
else
    echo "No global .git directory found (this is normal unless inside a repo)"
fi
