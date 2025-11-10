#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 filename"
  exit 1
fi

file=$1

if [ ! -f "$file" ]; then
  echo "Error: File '$file' not found!"
  exit 1
fi

lines=$(wc -l < "$file")
words=$(wc -w < "$file")
chars=$(wc -m < "$file")

echo "File: $file"
echo "Number of lines: $lines"
echo "Number of words: $words"
echo "Number of characters: $chars"
