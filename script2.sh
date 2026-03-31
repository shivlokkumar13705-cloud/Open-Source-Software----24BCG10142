#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Shivlok Kumar

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "-----------------------------------"

# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."

    # Show version, license, summary
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Package Info:"
echo "-----------------------------------"

# Case statement for description
case $PACKAGE in
    git)
        echo "Git: A distributed version control system used worldwide for tracking code changes."
        ;;
    apache2)
        echo "Apache: A powerful open-source web server."
        ;;
    mysql-server)
        echo "MySQL: A popular open-source relational database system."
        ;;
    vlc)
        echo "VLC: A free and open-source multimedia player."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
