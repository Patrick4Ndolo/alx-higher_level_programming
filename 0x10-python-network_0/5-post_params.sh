#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
  echo "Please provide a URL as an argument"
  exit 1
fi

# Set the request body as a URL-encoded string with email and subject variables
request_body="email=test@gmail.com&subject=I+will+always+be+here+for+PLD"

# Send a POST request to the URL with the request body and store the response body in a variable
response_body=$(curl -s -d "$request_body" -X POST $1)

# Display the response body
echo "$response_body"
