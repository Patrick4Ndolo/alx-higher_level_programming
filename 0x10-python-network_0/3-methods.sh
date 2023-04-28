#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
  echo "Please provide a URL as an argument"
  exit 1
fi

# Send an OPTIONS request to the URL and store the response headers in a variable
response_headers=$(curl -s -I -X OPTIONS $1)

# Extract the Allow header from the response headers
allow_header=$(echo "$response_headers" | grep -i "Allow:")

# Display the HTTP methods that the server will accept
echo "The server at $1 will accept the following HTTP methods:"
echo "${allow_header#Allow: }"
