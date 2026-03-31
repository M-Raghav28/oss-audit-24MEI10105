#!/bin/bash

echo "Answer the following questions:"
echo ""

read -p "1. Open-source tool you use: " TOOL
read -p "2. Meaning of freedom: " MEANING
read -p "3. Something you want to build: " IDEA

DATE_NOW=$(date "+%d-%m-%Y")
FILE_NAME="manifesto.txt"

echo "----------------------------------------" > $FILE_NAME
echo "Open Source Manifesto - $DATE_NOW" >> $FILE_NAME
echo "----------------------------------------" >> $FILE_NAME
echo "I use $TOOL regularly, which represents $MEANING in open source." >> $FILE_NAME
echo "I aim to build $IDEA and share it freely." >> $FILE_NAME
echo "----------------------------------------" >> $FILE_NAME

echo "Manifesto saved in $FILE_NAME"
echo ""
cat $FILE_NAME
