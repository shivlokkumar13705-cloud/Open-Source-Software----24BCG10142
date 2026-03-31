#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Shivlok Kumar

echo "Answer the following questions to generate your manifesto:"
echo ""

# User input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Date and output file
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Create manifesto content
echo "----------------------------------------" > $OUTPUT
echo " Open Source Manifesto" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in the power of open source." >> $OUTPUT
echo "Using tools like $TOOL, I have experienced how collaboration can improve technology." >> $OUTPUT
echo "For me, freedom means $FREEDOM, and it is an important part of software development." >> $OUTPUT
echo "In the future, I would like to build $BUILD and share it with others without restrictions." >> $OUTPUT
echo "I support the idea of open knowledge and community-driven innovation." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""

# Display content
cat $OUTPUT
