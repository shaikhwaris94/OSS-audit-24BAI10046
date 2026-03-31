#!/bin/bash
# Script 5: The Open Source Manifesto Generator
# Author: Shaikh Mohammad Warsi
# Course: Open Source Software
# Interactive tool to generate a personalized OSS philosophy document.

STUDENT="Shaikh Mohammad Warsi"

echo "==============================================="
echo "   OSS PHILOSOPHY MANIFESTO GENERATOR          "
echo "==============================================="

read -p "1. Favorite Open Source Project: " PROJECT
read -p "2. Define 'Freedom' in one word: " FREEDOM
read -p "3. What will you share freely? " BUILD

DATE=$(date "+%B %d, %Y")
FILENAME="manifesto_Shaikh Mohammad Warsi.txt"

{
    echo "THE OPEN SOURCE MANIFESTO"
    echo "Author: $STUDENT"
    echo "Date: $DATE"
    echo "---------------------------------------"
    echo "I use $PROJECT every day. To me, freedom means $FREEDOM."
    echo "I commit to building and sharing: $BUILD."
    echo "---------------------------------------"
} > "$FILENAME"

echo "Manifesto saved to $FILENAME"
cat "$FILENAME"
