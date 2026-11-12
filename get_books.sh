#!/bin/bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
    echo "Usage: bash get_books.sh BUCKET_NAME BOOK_DIRECTORY"
    exit 1
fi

BUCKET="$1"
BOOK_DIR="$2"

mkdir -p "$BOOK_DIR"
BOOK_DIR="$(realpath "$BOOK_DIR")"

aws s3 cp "s3://${BUCKET}/" "$BOOK_DIR/" \
    --recursive \
    --exclude "*" \
    --include "*.txt"

printf 'File path\n' > book_list.txt

find "$BOOK_DIR" -type f -name "*.txt" -print | sort >> book_list.txt

COUNT=$(tail -n +2 book_list.txt | wc -l | tr -d ' ')
echo "Wrote ${COUNT} book files to book_list.txt"
