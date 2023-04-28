#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
  echo "Please provide a URL as an argument"
  exit 1
fi

# Send a GET request to the URL and store the response body in a variable
response_body=$(curl -s -o /dev/null -w "%{http_code}" $1)
if [ $response_body -eq 200 ]; then
    curl -s $1
fi

