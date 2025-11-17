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

while true; do
  echo
  echo "========= MENU ========="
  echo "1. Count number of lines"
  echo "2. Count number of words"
  echo "3. Count number of characters"
  echo "4. Show all (lines, words, characters)"
  echo "5. Exit"
  echo "========================"
  read -p "Enter your choice: " choice

  case $choice in
    1)
      lines=$(wc -l < "$file")
      echo "Number of lines: $lines"
      ;;
    2)
      words=$(wc -w < "$file")
      echo "Number of words: $words"
      ;;
    3)
      chars=$(wc -m < "$file")
      echo "Number of characters: $chars"
      ;;
    4)
      lines=$(wc -l < "$file")
      words=$(wc -w < "$file")
      chars=$(wc -m < "$file")

      echo "File: $file"
      echo "Number of lines: $lines"
      echo "Number of words: $words"
      echo "Number of characters: $chars"
      ;;
    5)
      echo "Exiting program..."
      exit 0
      ;;
    *)
      echo "Invalid choice! Please try again."
      ;;
  esac
done
