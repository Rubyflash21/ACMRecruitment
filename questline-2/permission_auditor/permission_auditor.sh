#!/bin/bash

directory="$1"
count=0

echo "Files with 777 permissions:"
while IFS= read -r file; do
    echo "$file"
    count=$((count + 1))
done < <(find "$directory" -type f -perm 0777)

echo
echo "Files owned by root:"
while IFS= read -r file; do
    echo "$file"
    count=$((count + 1))
done < <(find "$directory" -type f -user root)

echo
echo "Files with SUID bit set:"
while IFS= read -r file; do
    echo "$file"
    count=$((count + 1))
done < <(find "$directory" -type f -perm -4000)

echo
echo "Total suspicious files found: $count"
