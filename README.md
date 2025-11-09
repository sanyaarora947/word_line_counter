# word_line_counter
#!/bin/bash

while true
do
    echo "-----------------------------"
    echo "   WORD & LINE COUNTER MENU"
    echo "-----------------------------"
    echo "1. Count words in a file"
    echo "2. Count lines in a file"
    echo "3. Count both words and lines"
    echo "4. Exit"
    echo "-----------------------------"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            read -p "Enter filename: " file
            if [ -f "$file" ]; then
                echo "Word count: $(wc -w < "$file")"
            else
                echo "File not found!"
            fi
            ;;
        2)
            read -p "Enter filename: " file
            if [ -f "$file" ]; then
                echo "Line count: $(wc -l < "$file")"
            else
                echo "File not found!"
            fi
            ;;
        3)
            read -p "Enter filename: " file
            if [ -f "$file" ]; then
                echo "Word count: $(wc -w < "$file")"
                echo "Line count: $(wc -l < "$file")"
            else
                echo "File not found!"
            fi
            ;;
        4)
            echo "Exiting program..."
            exit 0
            ;;
        *)
            echo "Invalid choice! Try again."
            ;;
    esac
done
