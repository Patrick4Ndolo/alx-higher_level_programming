#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
  echo "Please provide a URL as an argument"
  exit 1
fi

# Send a DELETE request to the URL and store the response body in a variable
response_body=$(curl -s -X DELETE $1)

# Display the response body
echo "$response_body"
