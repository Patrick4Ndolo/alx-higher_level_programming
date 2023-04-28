#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
  echo "Please provide a URL as an argument"
  exit 1
fi

# Send a GET request to the URL with custom headers and store the response body in a variable
response_body=$(curl -s -H "X-School-User-Id: 98" $1)

# Display the response body
echo "$response_body"
