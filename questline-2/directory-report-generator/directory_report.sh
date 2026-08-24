#!/bin/bash

DIR="$1"
REPORT="report.txt"

echo "Directory Report" > "$REPORT"
echo "=================" >> "$REPORT"

total_files=$(find "$DIR" -type f | wc -l)
executable_files=$(find "$DIR" -type f -executable | wc -l)
largest_file=$(find "$DIR" -type f -printf '%s %p\n' | sort -n | tail -1)
recent_file=$(find "$DIR" -type f -printf '%T@ %p\n' | sort -n | tail -1)
hidden_files=$(find "$DIR" -type f -name ".*" | wc -l)

echo "Total number of files: $total_files" >> "$REPORT"
echo "Total executable files: $executable_files" >> "$REPORT"
echo "Largest file: $largest_file" >> "$REPORT"
echo "Most recently modified file: $recent_file" >> "$REPORT"
echo "Number of hidden files: $hidden_files" >> "$REPORT"

echo "Report generated: $REPORT"
