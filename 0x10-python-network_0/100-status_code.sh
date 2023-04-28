#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
  echo "Please provide a URL as an argument"
  exit 1
fi

# Send a request to the URL and store the status code in a variable
http_status=$(curl -s -o /dev/null -w "%{http_code}" $1)

# Display the status code
echo "HTTP Status: $http_status"
