# Directory Report Generator

This Bash script recursively scans a directory provided as a command-line argument and generates a `report.txt` file containing useful file system statistics.

## What the script checks

- Total number of files
- Total number of executable files
- Largest file
- Most recently modified file
- Number of hidden files

## Commands and utilities used

The script uses Bash and the `find` command to recursively search files. It uses `wc` to count files, `sort` and `tail` to identify the largest and most recently modified files, and `printf` to format file information.

## Usage

```bash
./directory_report.sh <directory>
