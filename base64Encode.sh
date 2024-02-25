#!/bin/bash

#Check if filename is provided
if [ $# -eq 0 ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi

filename="$1"

#check if file exists
if [ ! -f "$filename" ]; then
	echo "File '$filename' not found. Computer says no"
	exit 1
fi

#Read content of file and encode to base64
base64_content=$(base64 "$filename")

#display encoded content
echo "$base64_content"
