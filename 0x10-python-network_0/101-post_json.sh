#!/bin/bash

# Check if URL and filename arguments are provided
if [ $# -lt 2 ]; then
  echo "Please provide a URL and filename as arguments"
  exit 1
fi

# Read the contents of the file into a variable
file_contents=$(cat $2)

# Send a POST request to the URL with the file contents in the request body and store the response body in a variable
response_body=$(curl -s -H "Content-Type: application/json" -d "$file_contents" -X POST $1)

# Display the response body
echo "$response_body"
